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
include src/cc/tests/CMakeFiles/KfsSeekWrite.dir/depend.make

# Include the progress variables for this target.
include src/cc/tests/CMakeFiles/KfsSeekWrite.dir/progress.make

# Include the compile flags for this target's objects.
include src/cc/tests/CMakeFiles/KfsSeekWrite.dir/flags.make

src/cc/tests/CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.o: src/cc/tests/CMakeFiles/KfsSeekWrite.dir/flags.make
src/cc/tests/CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.o: src/cc/tests/KfsSeekWrite_main.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/cc/tests/CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.o"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.o -c /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests/KfsSeekWrite_main.cc

src/cc/tests/CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.i"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests/KfsSeekWrite_main.cc > CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.i

src/cc/tests/CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.s"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests/KfsSeekWrite_main.cc -o CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.s

src/cc/tests/CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.o.requires:
.PHONY : src/cc/tests/CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.o.requires

src/cc/tests/CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.o.provides: src/cc/tests/CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.o.requires
	$(MAKE) -f src/cc/tests/CMakeFiles/KfsSeekWrite.dir/build.make src/cc/tests/CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.o.provides.build
.PHONY : src/cc/tests/CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.o.provides

src/cc/tests/CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.o.provides.build: src/cc/tests/CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.o

# Object files for target KfsSeekWrite
KfsSeekWrite_OBJECTS = \
"CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.o"

# External object files for target KfsSeekWrite
KfsSeekWrite_EXTERNAL_OBJECTS =

src/cc/tests/KfsSeekWrite: src/cc/tests/CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.o
src/cc/tests/KfsSeekWrite: src/cc/tools/libtools.a
src/cc/tests/KfsSeekWrite: src/cc/libkfsClient/libkfsClient.a
src/cc/tests/KfsSeekWrite: src/cc/libkfsIO/libkfsIO.a
src/cc/tests/KfsSeekWrite: src/cc/common/libkfsCommon.a
src/cc/tests/KfsSeekWrite: /usr/local/lib/libboost_regex.a
src/cc/tests/KfsSeekWrite: src/cc/qcdio/libqcdio.a
src/cc/tests/KfsSeekWrite: src/cc/tests/CMakeFiles/KfsSeekWrite.dir/build.make
src/cc/tests/KfsSeekWrite: src/cc/tests/CMakeFiles/KfsSeekWrite.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable KfsSeekWrite"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/KfsSeekWrite.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/cc/tests/CMakeFiles/KfsSeekWrite.dir/build: src/cc/tests/KfsSeekWrite
.PHONY : src/cc/tests/CMakeFiles/KfsSeekWrite.dir/build

src/cc/tests/CMakeFiles/KfsSeekWrite.dir/requires: src/cc/tests/CMakeFiles/KfsSeekWrite.dir/KfsSeekWrite_main.o.requires
.PHONY : src/cc/tests/CMakeFiles/KfsSeekWrite.dir/requires

src/cc/tests/CMakeFiles/KfsSeekWrite.dir/clean:
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests && $(CMAKE_COMMAND) -P CMakeFiles/KfsSeekWrite.dir/cmake_clean.cmake
.PHONY : src/cc/tests/CMakeFiles/KfsSeekWrite.dir/clean

src/cc/tests/CMakeFiles/KfsSeekWrite.dir/depend:
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests/CMakeFiles/KfsSeekWrite.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/cc/tests/CMakeFiles/KfsSeekWrite.dir/depend

