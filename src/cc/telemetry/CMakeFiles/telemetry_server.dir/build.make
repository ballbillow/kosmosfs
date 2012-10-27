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
include src/cc/telemetry/CMakeFiles/telemetry_server.dir/depend.make

# Include the progress variables for this target.
include src/cc/telemetry/CMakeFiles/telemetry_server.dir/progress.make

# Include the compile flags for this target's objects.
include src/cc/telemetry/CMakeFiles/telemetry_server.dir/flags.make

src/cc/telemetry/CMakeFiles/telemetry_server.dir/telemetry_server_main.o: src/cc/telemetry/CMakeFiles/telemetry_server.dir/flags.make
src/cc/telemetry/CMakeFiles/telemetry_server.dir/telemetry_server_main.o: src/cc/telemetry/telemetry_server_main.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/cc/telemetry/CMakeFiles/telemetry_server.dir/telemetry_server_main.o"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/telemetry && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/telemetry_server.dir/telemetry_server_main.o -c /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/telemetry/telemetry_server_main.cc

src/cc/telemetry/CMakeFiles/telemetry_server.dir/telemetry_server_main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/telemetry_server.dir/telemetry_server_main.i"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/telemetry && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/telemetry/telemetry_server_main.cc > CMakeFiles/telemetry_server.dir/telemetry_server_main.i

src/cc/telemetry/CMakeFiles/telemetry_server.dir/telemetry_server_main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/telemetry_server.dir/telemetry_server_main.s"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/telemetry && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/telemetry/telemetry_server_main.cc -o CMakeFiles/telemetry_server.dir/telemetry_server_main.s

src/cc/telemetry/CMakeFiles/telemetry_server.dir/telemetry_server_main.o.requires:
.PHONY : src/cc/telemetry/CMakeFiles/telemetry_server.dir/telemetry_server_main.o.requires

src/cc/telemetry/CMakeFiles/telemetry_server.dir/telemetry_server_main.o.provides: src/cc/telemetry/CMakeFiles/telemetry_server.dir/telemetry_server_main.o.requires
	$(MAKE) -f src/cc/telemetry/CMakeFiles/telemetry_server.dir/build.make src/cc/telemetry/CMakeFiles/telemetry_server.dir/telemetry_server_main.o.provides.build
.PHONY : src/cc/telemetry/CMakeFiles/telemetry_server.dir/telemetry_server_main.o.provides

src/cc/telemetry/CMakeFiles/telemetry_server.dir/telemetry_server_main.o.provides.build: src/cc/telemetry/CMakeFiles/telemetry_server.dir/telemetry_server_main.o

# Object files for target telemetry_server
telemetry_server_OBJECTS = \
"CMakeFiles/telemetry_server.dir/telemetry_server_main.o"

# External object files for target telemetry_server
telemetry_server_EXTERNAL_OBJECTS =

src/cc/telemetry/telemetry_server: src/cc/telemetry/CMakeFiles/telemetry_server.dir/telemetry_server_main.o
src/cc/telemetry/telemetry_server: src/cc/common/libkfsCommon.a
src/cc/telemetry/telemetry_server: src/cc/qcdio/libqcdio.a
src/cc/telemetry/telemetry_server: src/cc/telemetry/CMakeFiles/telemetry_server.dir/build.make
src/cc/telemetry/telemetry_server: src/cc/telemetry/CMakeFiles/telemetry_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable telemetry_server"
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/telemetry && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/telemetry_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/cc/telemetry/CMakeFiles/telemetry_server.dir/build: src/cc/telemetry/telemetry_server
.PHONY : src/cc/telemetry/CMakeFiles/telemetry_server.dir/build

src/cc/telemetry/CMakeFiles/telemetry_server.dir/requires: src/cc/telemetry/CMakeFiles/telemetry_server.dir/telemetry_server_main.o.requires
.PHONY : src/cc/telemetry/CMakeFiles/telemetry_server.dir/requires

src/cc/telemetry/CMakeFiles/telemetry_server.dir/clean:
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/telemetry && $(CMAKE_COMMAND) -P CMakeFiles/telemetry_server.dir/cmake_clean.cmake
.PHONY : src/cc/telemetry/CMakeFiles/telemetry_server.dir/clean

src/cc/telemetry/CMakeFiles/telemetry_server.dir/depend:
	cd /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/telemetry /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/telemetry /mnt/hgfs/F/opensource/network/distributed/dfs/kosmosfs/src/cc/telemetry/CMakeFiles/telemetry_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/cc/telemetry/CMakeFiles/telemetry_server.dir/depend
