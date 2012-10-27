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
include src/cc/tests/CMakeFiles/KfsRW.dir/depend.make

# Include the progress variables for this target.
include src/cc/tests/CMakeFiles/KfsRW.dir/progress.make

# Include the compile flags for this target's objects.
include src/cc/tests/CMakeFiles/KfsRW.dir/flags.make

src/cc/tests/CMakeFiles/KfsRW.dir/KfsRW_main.o: src/cc/tests/CMakeFiles/KfsRW.dir/flags.make
src/cc/tests/CMakeFiles/KfsRW.dir/KfsRW_main.o: src/cc/tests/KfsRW_main.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/cc/tests/CMakeFiles/KfsRW.dir/KfsRW_main.o"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/KfsRW.dir/KfsRW_main.o -c /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests/KfsRW_main.cc

src/cc/tests/CMakeFiles/KfsRW.dir/KfsRW_main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KfsRW.dir/KfsRW_main.i"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests/KfsRW_main.cc > CMakeFiles/KfsRW.dir/KfsRW_main.i

src/cc/tests/CMakeFiles/KfsRW.dir/KfsRW_main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KfsRW.dir/KfsRW_main.s"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests/KfsRW_main.cc -o CMakeFiles/KfsRW.dir/KfsRW_main.s

src/cc/tests/CMakeFiles/KfsRW.dir/KfsRW_main.o.requires:
.PHONY : src/cc/tests/CMakeFiles/KfsRW.dir/KfsRW_main.o.requires

src/cc/tests/CMakeFiles/KfsRW.dir/KfsRW_main.o.provides: src/cc/tests/CMakeFiles/KfsRW.dir/KfsRW_main.o.requires
	$(MAKE) -f src/cc/tests/CMakeFiles/KfsRW.dir/build.make src/cc/tests/CMakeFiles/KfsRW.dir/KfsRW_main.o.provides.build
.PHONY : src/cc/tests/CMakeFiles/KfsRW.dir/KfsRW_main.o.provides

src/cc/tests/CMakeFiles/KfsRW.dir/KfsRW_main.o.provides.build: src/cc/tests/CMakeFiles/KfsRW.dir/KfsRW_main.o

# Object files for target KfsRW
KfsRW_OBJECTS = \
"CMakeFiles/KfsRW.dir/KfsRW_main.o"

# External object files for target KfsRW
KfsRW_EXTERNAL_OBJECTS =

src/cc/tests/KfsRW: src/cc/tests/CMakeFiles/KfsRW.dir/KfsRW_main.o
src/cc/tests/KfsRW: src/cc/tools/libtools.a
src/cc/tests/KfsRW: src/cc/libkfsClient/libkfsClient.a
src/cc/tests/KfsRW: src/cc/libkfsIO/libkfsIO.a
src/cc/tests/KfsRW: src/cc/common/libkfsCommon.a
src/cc/tests/KfsRW: /usr/local/lib/libboost_regex.a
src/cc/tests/KfsRW: src/cc/qcdio/libqcdio.a
src/cc/tests/KfsRW: src/cc/tests/CMakeFiles/KfsRW.dir/build.make
src/cc/tests/KfsRW: src/cc/tests/CMakeFiles/KfsRW.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable KfsRW"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/KfsRW.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/cc/tests/CMakeFiles/KfsRW.dir/build: src/cc/tests/KfsRW
.PHONY : src/cc/tests/CMakeFiles/KfsRW.dir/build

src/cc/tests/CMakeFiles/KfsRW.dir/requires: src/cc/tests/CMakeFiles/KfsRW.dir/KfsRW_main.o.requires
.PHONY : src/cc/tests/CMakeFiles/KfsRW.dir/requires

src/cc/tests/CMakeFiles/KfsRW.dir/clean:
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests && $(CMAKE_COMMAND) -P CMakeFiles/KfsRW.dir/cmake_clean.cmake
.PHONY : src/cc/tests/CMakeFiles/KfsRW.dir/clean

src/cc/tests/CMakeFiles/KfsRW.dir/depend:
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/tests/CMakeFiles/KfsRW.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/cc/tests/CMakeFiles/KfsRW.dir/depend

