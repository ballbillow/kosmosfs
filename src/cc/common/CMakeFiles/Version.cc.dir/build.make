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

# Utility rule file for Version.cc.

# Include the progress variables for this target.
include src/cc/common/CMakeFiles/Version.cc.dir/progress.make

src/cc/common/CMakeFiles/Version.cc.dir/CMakeFiles/Version.o: 
src/cc/common/CMakeFiles/Version.cc.dir/CMakeFiles/Version.o: src/cc/common/CMakeFiles/Version.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/cc/common/CMakeFiles/Version.cc.dir/CMakeFiles/Version.o"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/common && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Version.cc.dir/CMakeFiles/Version.o -c /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/common/CMakeFiles/Version.cc

src/cc/common/CMakeFiles/Version.cc.dir/CMakeFiles/Version.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Version.cc.dir/CMakeFiles/Version.i"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/common && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/common/CMakeFiles/Version.cc > CMakeFiles/Version.cc.dir/CMakeFiles/Version.i

src/cc/common/CMakeFiles/Version.cc.dir/CMakeFiles/Version.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Version.cc.dir/CMakeFiles/Version.s"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/common && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/common/CMakeFiles/Version.cc -o CMakeFiles/Version.cc.dir/CMakeFiles/Version.s

src/cc/common/CMakeFiles/Version.cc.dir/CMakeFiles/Version.o.requires:
.PHONY : src/cc/common/CMakeFiles/Version.cc.dir/CMakeFiles/Version.o.requires

src/cc/common/CMakeFiles/Version.cc.dir/CMakeFiles/Version.o.provides: src/cc/common/CMakeFiles/Version.cc.dir/CMakeFiles/Version.o.requires
	$(MAKE) -f src/cc/common/CMakeFiles/Version.cc.dir/build.make src/cc/common/CMakeFiles/Version.cc.dir/CMakeFiles/Version.o.provides.build
.PHONY : src/cc/common/CMakeFiles/Version.cc.dir/CMakeFiles/Version.o.provides

src/cc/common/CMakeFiles/Version.cc.dir/CMakeFiles/Version.o.provides.build: src/cc/common/CMakeFiles/Version.cc.dir/CMakeFiles/Version.o

src/cc/common/CMakeFiles/Version.cc:
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/common && python /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/common/buildVers.py /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/common/Version.cc

Version.cc: src/cc/common/CMakeFiles/Version.cc
Version.cc: src/cc/common/CMakeFiles/Version.cc.dir/build.make
.PHONY : Version.cc

# Rule to build all files generated by this target.
src/cc/common/CMakeFiles/Version.cc.dir/build: Version.cc
.PHONY : src/cc/common/CMakeFiles/Version.cc.dir/build

src/cc/common/CMakeFiles/Version.cc.dir/clean:
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/common && $(CMAKE_COMMAND) -P CMakeFiles/Version.cc.dir/cmake_clean.cmake
.PHONY : src/cc/common/CMakeFiles/Version.cc.dir/clean

src/cc/common/CMakeFiles/Version.cc.dir/depend:
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/common /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/common /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/common/CMakeFiles/Version.cc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/cc/common/CMakeFiles/Version.cc.dir/depend

