# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/twhyte/projects/libfovis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/twhyte/projects/libfovis/pod-build

# Include any dependencies generated for this target.
include testers/CMakeFiles/absolute-orientation-tester.dir/depend.make

# Include the progress variables for this target.
include testers/CMakeFiles/absolute-orientation-tester.dir/progress.make

# Include the compile flags for this target's objects.
include testers/CMakeFiles/absolute-orientation-tester.dir/flags.make

testers/CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.o: testers/CMakeFiles/absolute-orientation-tester.dir/flags.make
testers/CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.o: ../testers/absolute_orientation_horn_tester.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/twhyte/projects/libfovis/pod-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object testers/CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.o"
	cd /home/twhyte/projects/libfovis/pod-build/testers && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.o -c /home/twhyte/projects/libfovis/testers/absolute_orientation_horn_tester.cpp

testers/CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.i"
	cd /home/twhyte/projects/libfovis/pod-build/testers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/twhyte/projects/libfovis/testers/absolute_orientation_horn_tester.cpp > CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.i

testers/CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.s"
	cd /home/twhyte/projects/libfovis/pod-build/testers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/twhyte/projects/libfovis/testers/absolute_orientation_horn_tester.cpp -o CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.s

testers/CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.o.requires:
.PHONY : testers/CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.o.requires

testers/CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.o.provides: testers/CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.o.requires
	$(MAKE) -f testers/CMakeFiles/absolute-orientation-tester.dir/build.make testers/CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.o.provides.build
.PHONY : testers/CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.o.provides

testers/CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.o.provides.build: testers/CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.o

# Object files for target absolute-orientation-tester
absolute__orientation__tester_OBJECTS = \
"CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.o"

# External object files for target absolute-orientation-tester
absolute__orientation__tester_EXTERNAL_OBJECTS =

bin/absolute-orientation-tester: testers/CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.o
bin/absolute-orientation-tester: testers/CMakeFiles/absolute-orientation-tester.dir/build.make
bin/absolute-orientation-tester: testers/CMakeFiles/absolute-orientation-tester.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/absolute-orientation-tester"
	cd /home/twhyte/projects/libfovis/pod-build/testers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/absolute-orientation-tester.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
testers/CMakeFiles/absolute-orientation-tester.dir/build: bin/absolute-orientation-tester
.PHONY : testers/CMakeFiles/absolute-orientation-tester.dir/build

testers/CMakeFiles/absolute-orientation-tester.dir/requires: testers/CMakeFiles/absolute-orientation-tester.dir/absolute_orientation_horn_tester.cpp.o.requires
.PHONY : testers/CMakeFiles/absolute-orientation-tester.dir/requires

testers/CMakeFiles/absolute-orientation-tester.dir/clean:
	cd /home/twhyte/projects/libfovis/pod-build/testers && $(CMAKE_COMMAND) -P CMakeFiles/absolute-orientation-tester.dir/cmake_clean.cmake
.PHONY : testers/CMakeFiles/absolute-orientation-tester.dir/clean

testers/CMakeFiles/absolute-orientation-tester.dir/depend:
	cd /home/twhyte/projects/libfovis/pod-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/twhyte/projects/libfovis /home/twhyte/projects/libfovis/testers /home/twhyte/projects/libfovis/pod-build /home/twhyte/projects/libfovis/pod-build/testers /home/twhyte/projects/libfovis/pod-build/testers/CMakeFiles/absolute-orientation-tester.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : testers/CMakeFiles/absolute-orientation-tester.dir/depend

