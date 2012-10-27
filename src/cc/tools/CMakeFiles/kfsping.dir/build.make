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
include src/cc/tools/CMakeFiles/kfsping.dir/depend.make

# Include the progress variables for this target.
include src/cc/tools/CMakeFiles/kfsping.dir/progress.make

# Include the compile flags for this target's objects.
include src/cc/tools/CMakeFiles/kfsping.dir/flags.make

src/cc/tools/CMakeFiles/kfsping.dir/kfsping_main.o: src/cc/tools/CMakeFiles/kfsping.dir/flags.make
src/cc/tools/CMakeFiles/kfsping.dir/kfsping_main.o: src/cc/tools/kfsping_main.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/cc/tools/CMakeFiles/kfsping.dir/kfsping_main.o"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tools && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kfsping.dir/kfsping_main.o -c /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tools/kfsping_main.cc

src/cc/tools/CMakeFiles/kfsping.dir/kfsping_main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kfsping.dir/kfsping_main.i"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tools/kfsping_main.cc > CMakeFiles/kfsping.dir/kfsping_main.i

src/cc/tools/CMakeFiles/kfsping.dir/kfsping_main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kfsping.dir/kfsping_main.s"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tools/kfsping_main.cc -o CMakeFiles/kfsping.dir/kfsping_main.s

src/cc/tools/CMakeFiles/kfsping.dir/kfsping_main.o.requires:
.PHONY : src/cc/tools/CMakeFiles/kfsping.dir/kfsping_main.o.requires

src/cc/tools/CMakeFiles/kfsping.dir/kfsping_main.o.provides: src/cc/tools/CMakeFiles/kfsping.dir/kfsping_main.o.requires
	$(MAKE) -f src/cc/tools/CMakeFiles/kfsping.dir/build.make src/cc/tools/CMakeFiles/kfsping.dir/kfsping_main.o.provides.build
.PHONY : src/cc/tools/CMakeFiles/kfsping.dir/kfsping_main.o.provides

src/cc/tools/CMakeFiles/kfsping.dir/kfsping_main.o.provides.build: src/cc/tools/CMakeFiles/kfsping.dir/kfsping_main.o

# Object files for target kfsping
kfsping_OBJECTS = \
"CMakeFiles/kfsping.dir/kfsping_main.o"

# External object files for target kfsping
kfsping_EXTERNAL_OBJECTS =

src/cc/tools/kfsping: src/cc/tools/CMakeFiles/kfsping.dir/kfsping_main.o
src/cc/tools/kfsping: src/cc/tools/libtools.a
src/cc/tools/kfsping: src/cc/libkfsClient/libkfsClient.a
src/cc/tools/kfsping: src/cc/libkfsIO/libkfsIO.a
src/cc/tools/kfsping: src/cc/common/libkfsCommon.a
src/cc/tools/kfsping: /usr/local/lib/libboost_regex.a
src/cc/tools/kfsping: src/cc/qcdio/libqcdio.a
src/cc/tools/kfsping: src/cc/tools/CMakeFiles/kfsping.dir/build.make
src/cc/tools/kfsping: src/cc/tools/CMakeFiles/kfsping.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable kfsping"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kfsping.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/cc/tools/CMakeFiles/kfsping.dir/build: src/cc/tools/kfsping
.PHONY : src/cc/tools/CMakeFiles/kfsping.dir/build

src/cc/tools/CMakeFiles/kfsping.dir/requires: src/cc/tools/CMakeFiles/kfsping.dir/kfsping_main.o.requires
.PHONY : src/cc/tools/CMakeFiles/kfsping.dir/requires

src/cc/tools/CMakeFiles/kfsping.dir/clean:
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tools && $(CMAKE_COMMAND) -P CMakeFiles/kfsping.dir/cmake_clean.cmake
.PHONY : src/cc/tools/CMakeFiles/kfsping.dir/clean

src/cc/tools/CMakeFiles/kfsping.dir/depend:
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tools /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tools /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tools/CMakeFiles/kfsping.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/cc/tools/CMakeFiles/kfsping.dir/depend

