# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs

# Include any dependencies generated for this target.
include src/cc/qcdio/CMakeFiles/qcdio-shared.dir/depend.make

# Include the progress variables for this target.
include src/cc/qcdio/CMakeFiles/qcdio-shared.dir/progress.make

# Include the compile flags for this target's objects.
include src/cc/qcdio/CMakeFiles/qcdio-shared.dir/flags.make

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcdiskqueue.o: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/flags.make
src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcdiskqueue.o: src/cc/qcdio/qcdiskqueue.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcdiskqueue.o"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/qcdio-shared.dir/qcdiskqueue.o -c /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcdiskqueue.cpp

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcdiskqueue.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qcdio-shared.dir/qcdiskqueue.i"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcdiskqueue.cpp > CMakeFiles/qcdio-shared.dir/qcdiskqueue.i

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcdiskqueue.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qcdio-shared.dir/qcdiskqueue.s"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcdiskqueue.cpp -o CMakeFiles/qcdio-shared.dir/qcdiskqueue.s

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcdiskqueue.o.requires:
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcdiskqueue.o.requires

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcdiskqueue.o.provides: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcdiskqueue.o.requires
	$(MAKE) -f src/cc/qcdio/CMakeFiles/qcdio-shared.dir/build.make src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcdiskqueue.o.provides.build
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcdiskqueue.o.provides

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcdiskqueue.o.provides.build: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcdiskqueue.o

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcfdpoll.o: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/flags.make
src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcfdpoll.o: src/cc/qcdio/qcfdpoll.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcfdpoll.o"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/qcdio-shared.dir/qcfdpoll.o -c /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcfdpoll.cpp

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcfdpoll.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qcdio-shared.dir/qcfdpoll.i"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcfdpoll.cpp > CMakeFiles/qcdio-shared.dir/qcfdpoll.i

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcfdpoll.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qcdio-shared.dir/qcfdpoll.s"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcfdpoll.cpp -o CMakeFiles/qcdio-shared.dir/qcfdpoll.s

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcfdpoll.o.requires:
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcfdpoll.o.requires

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcfdpoll.o.provides: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcfdpoll.o.requires
	$(MAKE) -f src/cc/qcdio/CMakeFiles/qcdio-shared.dir/build.make src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcfdpoll.o.provides.build
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcfdpoll.o.provides

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcfdpoll.o.provides.build: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcfdpoll.o

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qciobufferpool.o: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/flags.make
src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qciobufferpool.o: src/cc/qcdio/qciobufferpool.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qciobufferpool.o"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/qcdio-shared.dir/qciobufferpool.o -c /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qciobufferpool.cpp

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qciobufferpool.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qcdio-shared.dir/qciobufferpool.i"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qciobufferpool.cpp > CMakeFiles/qcdio-shared.dir/qciobufferpool.i

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qciobufferpool.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qcdio-shared.dir/qciobufferpool.s"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qciobufferpool.cpp -o CMakeFiles/qcdio-shared.dir/qciobufferpool.s

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qciobufferpool.o.requires:
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qciobufferpool.o.requires

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qciobufferpool.o.provides: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qciobufferpool.o.requires
	$(MAKE) -f src/cc/qcdio/CMakeFiles/qcdio-shared.dir/build.make src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qciobufferpool.o.provides.build
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qciobufferpool.o.provides

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qciobufferpool.o.provides.build: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qciobufferpool.o

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcmutex.o: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/flags.make
src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcmutex.o: src/cc/qcdio/qcmutex.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcmutex.o"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/qcdio-shared.dir/qcmutex.o -c /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcmutex.cpp

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcmutex.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qcdio-shared.dir/qcmutex.i"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcmutex.cpp > CMakeFiles/qcdio-shared.dir/qcmutex.i

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcmutex.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qcdio-shared.dir/qcmutex.s"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcmutex.cpp -o CMakeFiles/qcdio-shared.dir/qcmutex.s

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcmutex.o.requires:
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcmutex.o.requires

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcmutex.o.provides: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcmutex.o.requires
	$(MAKE) -f src/cc/qcdio/CMakeFiles/qcdio-shared.dir/build.make src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcmutex.o.provides.build
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcmutex.o.provides

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcmutex.o.provides.build: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcmutex.o

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcthread.o: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/flags.make
src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcthread.o: src/cc/qcdio/qcthread.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcthread.o"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/qcdio-shared.dir/qcthread.o -c /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcthread.cpp

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcthread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qcdio-shared.dir/qcthread.i"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcthread.cpp > CMakeFiles/qcdio-shared.dir/qcthread.i

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcthread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qcdio-shared.dir/qcthread.s"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcthread.cpp -o CMakeFiles/qcdio-shared.dir/qcthread.s

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcthread.o.requires:
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcthread.o.requires

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcthread.o.provides: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcthread.o.requires
	$(MAKE) -f src/cc/qcdio/CMakeFiles/qcdio-shared.dir/build.make src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcthread.o.provides.build
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcthread.o.provides

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcthread.o.provides.build: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcthread.o

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcunittest.o: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/flags.make
src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcunittest.o: src/cc/qcdio/qcunittest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcunittest.o"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/qcdio-shared.dir/qcunittest.o -c /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcunittest.cpp

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcunittest.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qcdio-shared.dir/qcunittest.i"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcunittest.cpp > CMakeFiles/qcdio-shared.dir/qcunittest.i

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcunittest.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qcdio-shared.dir/qcunittest.s"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcunittest.cpp -o CMakeFiles/qcdio-shared.dir/qcunittest.s

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcunittest.o.requires:
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcunittest.o.requires

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcunittest.o.provides: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcunittest.o.requires
	$(MAKE) -f src/cc/qcdio/CMakeFiles/qcdio-shared.dir/build.make src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcunittest.o.provides.build
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcunittest.o.provides

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcunittest.o.provides.build: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcunittest.o

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcutils.o: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/flags.make
src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcutils.o: src/cc/qcdio/qcutils.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcutils.o"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/qcdio-shared.dir/qcutils.o -c /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcutils.cpp

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcutils.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qcdio-shared.dir/qcutils.i"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcutils.cpp > CMakeFiles/qcdio-shared.dir/qcutils.i

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcutils.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qcdio-shared.dir/qcutils.s"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/qcutils.cpp -o CMakeFiles/qcdio-shared.dir/qcutils.s

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcutils.o.requires:
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcutils.o.requires

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcutils.o.provides: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcutils.o.requires
	$(MAKE) -f src/cc/qcdio/CMakeFiles/qcdio-shared.dir/build.make src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcutils.o.provides.build
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcutils.o.provides

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcutils.o.provides.build: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcutils.o

# Object files for target qcdio-shared
qcdio__shared_OBJECTS = \
"CMakeFiles/qcdio-shared.dir/qcdiskqueue.o" \
"CMakeFiles/qcdio-shared.dir/qcfdpoll.o" \
"CMakeFiles/qcdio-shared.dir/qciobufferpool.o" \
"CMakeFiles/qcdio-shared.dir/qcmutex.o" \
"CMakeFiles/qcdio-shared.dir/qcthread.o" \
"CMakeFiles/qcdio-shared.dir/qcunittest.o" \
"CMakeFiles/qcdio-shared.dir/qcutils.o"

# External object files for target qcdio-shared
qcdio__shared_EXTERNAL_OBJECTS =

src/cc/qcdio/libqcdio.so: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcdiskqueue.o
src/cc/qcdio/libqcdio.so: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcfdpoll.o
src/cc/qcdio/libqcdio.so: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qciobufferpool.o
src/cc/qcdio/libqcdio.so: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcmutex.o
src/cc/qcdio/libqcdio.so: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcthread.o
src/cc/qcdio/libqcdio.so: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcunittest.o
src/cc/qcdio/libqcdio.so: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcutils.o
src/cc/qcdio/libqcdio.so: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/build.make
src/cc/qcdio/libqcdio.so: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libqcdio.so"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/qcdio-shared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/cc/qcdio/CMakeFiles/qcdio-shared.dir/build: src/cc/qcdio/libqcdio.so
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/build

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/requires: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcdiskqueue.o.requires
src/cc/qcdio/CMakeFiles/qcdio-shared.dir/requires: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcfdpoll.o.requires
src/cc/qcdio/CMakeFiles/qcdio-shared.dir/requires: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qciobufferpool.o.requires
src/cc/qcdio/CMakeFiles/qcdio-shared.dir/requires: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcmutex.o.requires
src/cc/qcdio/CMakeFiles/qcdio-shared.dir/requires: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcthread.o.requires
src/cc/qcdio/CMakeFiles/qcdio-shared.dir/requires: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcunittest.o.requires
src/cc/qcdio/CMakeFiles/qcdio-shared.dir/requires: src/cc/qcdio/CMakeFiles/qcdio-shared.dir/qcutils.o.requires
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/requires

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/clean:
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio && $(CMAKE_COMMAND) -P CMakeFiles/qcdio-shared.dir/cmake_clean.cmake
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/clean

src/cc/qcdio/CMakeFiles/qcdio-shared.dir/depend:
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/qcdio/CMakeFiles/qcdio-shared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/cc/qcdio/CMakeFiles/qcdio-shared.dir/depend
