//---------------------------------------------------------- -*- Mode: C++ -*-
// $Id: ClientSM.cc 385 2010-05-27 15:58:30Z sriramsrao $
//
// Created 2006/06/05
//
// Copyright 2008 Quantcast Corp.
// Copyright 2006-2008 Kosmix Corp.
//
// This file is part of Kosmos File System (KFS).
//
// Licensed under the Apache License, Version 2.0
// (the "License"); you may not use this file except in compliance with
// the License. You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
// implied. See the License for the specific language governing
// permissions and limitations under the License.
//
//
// \file ClientSM.h
// \brief Handlers that interface with a KFS client.
//
//----------------------------------------------------------------------------

#include "ClientSM.h"
#include "ChunkServer.h"
#include "util.h"
#include "common/kfstypes.h"
#include "libkfsIO/Globals.h"
#include "common/log.h"
#include "common/properties.h"

#include <string>
#include <sstream>
#include <algorithm>
#include <sys/resource.h>

using namespace KFS;

using std::max;
using std::string;
using std::ostringstream;


inline std::string
PeerName(NetConnectionPtr conn)
{
    return (conn ? conn->GetPeerName() : string("unknown"));
}

template<typename LIST> inline static void
DeleteAll(LIST& list)
{
    LIST del;
    del.swap(list);
    while (! del.empty())
    {
        typename LIST::value_type const elem = del.front();
        del.pop_front();
        delete elem;
    }
}

int ClientSM::sMaxPendingLength   = 16;
int ClientSM::sMaxReadAhead       = 3 << 10;
int ClientSM::sInactivityTimeout  = 8 * 60;
int ClientSM::sMaxWriteBehind     = 3 << 10;

/* static */
void
ClientSM::SetParameters(const Properties& prop)
{
    sMaxPendingLength = max(1, prop.getValue(
                                "metaServer.clientSM.maxPendingLength",
                                sMaxPendingLength));
    sMaxReadAhead = max(1 << 10, prop.getValue(
                            "metaServer.clientSM.maxReadAhead",
                            sMaxReadAhead));
    sInactivityTimeout = prop.getValue(
                             "metaServer.clientSM.inactivityTimeout",
                             sInactivityTimeout);
    sMaxWriteBehind = prop.getValue(
                          "metaServer.clientSM.maxWriteBehind",
                          sMaxWriteBehind);
}

ClientSM::ClientSM(NetConnectionPtr &conn)
    : mNetConnection(conn),
      mOp(0),
      mPending(),
      mPendingLength(0),
      mRecursionCnt(0),
      mClientProtoVers(KFS_CLIENT_PROTO_VERS)
{
    mNetConnection->SetInactivityTimeout(sInactivityTimeout);
    mNetConnection->SetMaxReadAhead(sMaxReadAhead);
    SET_HANDLER(this, &ClientSM::HandleRequest);
}

ClientSM::~ClientSM()
{
    delete mOp;
    DeleteAll(mPending);
}

static class RequestStatsGatherer
{
public:
    enum { kStatsIntervalSec = 20 };

    RequestStatsGatherer()
        : mNextTime(0),
          mTotal()
    {}
    void OpDone(const MetaRequest& op)
    {
        const int idx = (op.op < 0 || op.op >= (int)kOtherReqId) ?
                        (int)kOtherReqId :
                        ((op.op == META_ALLOCATE &&
                          ! static_cast<const MetaAllocate&>(op).logFlag) ?
                         (int)kReqTypeAllocNoLog : (int)op.op);
        mTotal.mCnt++;
        mRequest[idx].mCnt++;
        if (op.status < 0)
        {
            mTotal.mErr++;
            mRequest[idx].mErr++;
        }
        const time_t now = libkfsio::globalNetManager().Now();
        if (now < mNextTime)
        {
            return;
        }
        struct rusage ru;
        if (getrusage(RUSAGE_SELF, &ru))
        {
            ru.ru_utime.tv_sec  = -1;
            ru.ru_utime.tv_usec = -1;
            ru.ru_stime.tv_sec  = -1;
            ru.ru_stime.tv_usec = -1;
        }
        mNextTime = now + kStatsIntervalSec;
        ostringstream os;
        const char* kDelim = " ";
        os << "===request=counters:" <<
           kDelim << MicorSecs(ru.ru_utime) <<
           kDelim << MicorSecs(ru.ru_stime) <<
           kDelim << mTotal.mCnt <<
           kDelim << mTotal.mErr
           ;
        for (int i = 0; i < kReqTypesCnt; i++)
        {
            os << kDelim << mRequest[i].mCnt <<
               kDelim << mRequest[i].mErr;
        }
        KFS_LOG_INFO(os.str().c_str());
    }
private:
    enum
    {
        kOtherReqId        = META_NUM_OPS_COUNT + 1,
        kReqTypeAllocNoLog = kOtherReqId + 1,
        kReqTypesCnt       = kReqTypeAllocNoLog + 1
    };
    struct Counter
    {
        Counter()
            : mCnt(0),
              mErr(0)
        {}
        int64_t mCnt;
        int64_t mErr;
    };
    static int64_t MicorSecs(const struct timeval& tv)
    {
        return (tv.tv_sec * 1000000 + tv.tv_usec);
    }
    time_t  mNextTime;
    Counter mTotal;
    Counter mRequest[kReqTypesCnt];
} sReqStatsGatherer;

///
/// Send out the response to the client request.  The response is
/// generated by MetaRequest as per the protocol.
/// @param[in] op The request for which we finished execution.
///
void
ClientSM::SendResponse(MetaRequest *op)
{
    if ((op->op == META_ALLOCATE && (op->status < 0 ||
                                     static_cast<const MetaAllocate*>(op)->logFlag)) ||
            MsgLogger::GetLogger()->IsLogLevelEnabled(
                MsgLogger::kLogLevelDEBUG))
    {
        // for chunk allocations, for debugging purposes, need to know
        // where the chunk was placed.
        KFS_LOG_STREAM_INFO << PeerName(mNetConnection) <<
                            " -seq: "   << op->opSeqno <<
                            " status: " << op->status <<
                            (op->statusMsg.empty() ? "" : " msg: ") << op->statusMsg <<
                            " "         << op->Show() <<
                            KFS_LOG_EOM;
    }
    sReqStatsGatherer.OpDone(*op);
    IOBuffer::OStream os;
    op->response(os);
    mNetConnection->Write(&os);
    mNetConnection->StartFlush();
}

///
/// Generic event handler.  Decode the event that occurred and
/// appropriately extract out the data and deal with the event.
/// @param[in] code: The type of event that occurred
/// @param[in] data: Data being passed in relative to the event that
/// occurred.
/// @retval 0 to indicate successful event handling; -1 otherwise.
///
int
ClientSM::HandleRequest(int code, void *data)
{
    IOBuffer *iobuf;
    int cmdLen;
    int hdrsz;

    assert(mRecursionCnt >= 0);
    mRecursionCnt++;

    switch (code)
    {
    case EVENT_NET_READ:
        // We read something from the network.  Run the RPC that
        // came in.
        iobuf = (IOBuffer *) data;
        while (IsMsgAvail(iobuf, &cmdLen))
        {
            HandleClientCmd(iobuf, cmdLen);
        }
        if ((hdrsz = iobuf->BytesConsumable()) > MAX_RPC_HEADER_LEN)
        {
            KFS_LOG_STREAM_ERROR << PeerName(mNetConnection) <<
                                 " exceeded max request header size: " << hdrsz <<
                                 " > " << MAX_RPC_HEADER_LEN <<
                                 " closing connection" <<
                                 KFS_LOG_EOM;
            iobuf->Clear();
            HandleRequest(EVENT_NET_ERROR, NULL);
        }
        break;

    case EVENT_CMD_DONE:
        assert(data && data == mOp);
        SendResponse(mOp);
        delete mOp;
        mOp = 0;
        // Fall through.
    case EVENT_NET_WROTE:
        // Something went out on the network.
        // Do not start new op if response does not get unloaded by
        // the client to prevent out of buffers.
        if (! mOp &&
                ! mPending.empty() &&
                (! mNetConnection ||
                 mNetConnection->GetNumBytesToWrite() <
                 sMaxWriteBehind))
        {
            mOp = mPending.front();
            mPending.pop_front();
            SubmitOp();
        }
        break;

    case EVENT_INACTIVITY_TIMEOUT:
    case EVENT_NET_ERROR:
        KFS_LOG_STREAM_DEBUG << PeerName(mNetConnection) <<
                             " closing connection" <<
                             KFS_LOG_EOM;
        if (mNetConnection)
        {
            mNetConnection->Close();
        }
        break;

    default:
        assert(!"Unknown event");
        break;
    }

    assert(mRecursionCnt > 0);
    if (--mRecursionCnt <= 0 &&
            (! mNetConnection || ! mNetConnection->IsGood()))
    {
        if (mOp)
        {
            SET_HANDLER(this, &ClientSM::HandleTerminate);
        }
        else
        {
            delete this;
        }
    }
    return 0;
}

///
/// Termination handler: if the client has any op queued in the system, wait
/// for the op to finish.  Then, cleanup this.
/// @param[in] code: The type of event that occurred
/// @param[in] data: Data being passed in relative to the event that
/// occurred.
/// @retval 0 to indicate successful event handling; -1 otherwise.
///
int
ClientSM::HandleTerminate(int code, void *data)
{
    MetaRequest *op;

    switch (code)
    {
    case EVENT_CMD_DONE:
        op = (MetaRequest *) data;
        assert(op == mOp);
        delete mOp;
        mOp = NULL;
        break;
    default:
        assert(!"Unknown event");
        return -1;
    }

    delete this;
    return 0;
}

///
/// We have a command in a buffer. So, parse out the command and
/// execute it if possible.
/// @param[in] iobuf: Buffer containing the command
/// @param[in] cmdLen: Length of the command in the buffer
///
void
ClientSM::HandleClientCmd(IOBuffer *iobuf, int cmdLen)
{
    MetaRequest *op;
    IOBuffer::IStream is(*iobuf, cmdLen);
    if (ParseCommand(is, &op) != 0)
    {
        is.Rewind(cmdLen);
        char buf[128];
        while (is.getline(buf, sizeof(buf)))
        {
            KFS_LOG_STREAM_ERROR << PeerName(mNetConnection) <<
                                 " invalid request: " << buf <<
                                 KFS_LOG_EOM;
        }
        iobuf->Clear();
        HandleRequest(EVENT_NET_ERROR, NULL);
        return;
    }
    if (op->clientProtoVers != mClientProtoVers)
    {
        mClientProtoVers = op->clientProtoVers;
        KFS_LOG_STREAM_WARN << PeerName(mNetConnection) <<
                            " Command with old protocol version: " <<
                            op->clientProtoVers << ' ' << op->Show() << KFS_LOG_EOM;
    }
    // Command is ready to be pushed down.  So remove the cmd from the buffer.
    iobuf->Consume(cmdLen);
    KFS_LOG_STREAM_DEBUG << PeerName(mNetConnection) <<
                         " "       << mPendingLength <<
                         " +seq: " << op->opSeqno <<
                         " "       << op->Show() <<
                         KFS_LOG_EOM;
    mPendingLength++;
    if (mOp || (mNetConnection &&
                mNetConnection->GetNumBytesToWrite() >=
                sMaxWriteBehind))
    {
        if (mPendingLength >= sMaxPendingLength && mNetConnection)
        {
            mNetConnection->SetMaxReadAhead(0);
        }
        mPending.push_back(op);
        return;
    }
    mOp = op;
    SubmitOp();
}

void
ClientSM::SubmitOp()
{
    mPendingLength--;
    if (mPendingLength < sMaxPendingLength && mNetConnection)
    {
        mNetConnection->SetMaxReadAhead(sMaxReadAhead);
    }
    KFS_LOG_STREAM_DEBUG << PeerName(mNetConnection) <<
                         " submit: seq: " << mOp->opSeqno <<
                         " pending: "     << mPendingLength <<
                         KFS_LOG_EOM;
    mOp->clnt = this;
    // send it on its merry way
    submit_request(mOp);
}
