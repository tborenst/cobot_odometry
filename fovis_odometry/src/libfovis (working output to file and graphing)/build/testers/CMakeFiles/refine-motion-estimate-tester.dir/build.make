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
CMAKE_SOURCE_DIR = /home/twhyte/cobot/robocpp/src/libfovis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/twhyte/cobot/robocpp/src/libfovis/build

# Include any dependencies generated for this target.
include testers/CMakeFiles/refine-motion-estimate-tester.dir/depend.make

# Include the progress variables for this target.
include testers/CMakeFiles/refine-motion-estimate-tester.dir/progress.make

# Include the compile flags for this target's objects.
include testers/CMakeFiles/refine-motion-estimate-tester.dir/flags.make

testers/CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.o: testers/CMakeFiles/refine-motion-estimate-tester.dir/flags.make
testers/CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.o: ../testers/refine_motion_estimate_tester.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/twhyte/cobot/robocpp/src/libfovis/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object testers/CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.o"
	cd /home/twhyte/cobot/robocpp/src/libfovis/build/testers && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.o -c /home/twhyte/cobot/robocpp/src/libfovis/testers/refine_motion_estimate_tester.cpp

testers/CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.i"
	cd /home/twhyte/cobot/robocpp/src/libfovis/build/testers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/twhyte/cobot/robocpp/src/libfovis/testers/refine_motion_estimate_tester.cpp > CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.i

testers/CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.s"
	cd /home/twhyte/cobot/robocpp/src/libfovis/build/testers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/twhyte/cobot/robocpp/src/libfovis/testers/refine_motion_estimate_tester.cpp -o CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.s

testers/CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.o.requires:
.PHONY : testers/CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.o.requires

testers/CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.o.provides: testers/CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.o.requires
	$(MAKE) -f testers/CMakeFiles/refine-motion-estimate-tester.dir/build.make testers/CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.o.provides.build
.PHONY : testers/CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.o.provides

testers/CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.o.provides.build: testers/CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.o

# Object files for target refine-motion-estimate-tester
refine__motion__estimate__tester_OBJECTS = \
"CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.o"

# External object files for target refine-motion-estimate-tester
refine__motion__estimate__tester_EXTERNAL_OBJECTS =

bin/refine-motion-estimate-tester: testers/CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.o
bin/refine-motion-estimate-tester: testers/CMakeFiles/refine-motion-estimate-tester.dir/build.make
bin/refine-motion-estimate-tester: testers/CMakeFiles/refine-motion-estimate-tester.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/refine-motion-estimate-tester"
	cd /home/twhyte/cobot/robocpp/src/libfovis/build/testers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/refine-motion-estimate-tester.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
testers/CMakeFiles/refine-motion-estimate-tester.dir/build: bin/refine-motion-estimate-tester
.PHONY : testers/CMakeFiles/refine-motion-estimate-tester.dir/build

testers/CMakeFiles/refine-motion-estimate-tester.dir/requires: testers/CMakeFiles/refine-motion-estimate-tester.dir/refine_motion_estimate_tester.cpp.o.requires
.PHONY : testers/CMakeFiles/refine-motion-estimate-tester.dir/requires

testers/CMakeFiles/refine-motion-estimate-tester.dir/clean:
	cd /home/twhyte/cobot/robocpp/src/libfovis/build/testers && $(CMAKE_COMMAND) -P CMakeFiles/refine-motion-estimate-tester.dir/cmake_clean.cmake
.PHONY : testers/CMakeFiles/refine-motion-estimate-tester.dir/clean

testers/CMakeFiles/refine-motion-estimate-tester.dir/depend:
	cd /home/twhyte/cobot/robocpp/src/libfovis/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/twhyte/cobot/robocpp/src/libfovis /home/twhyte/cobot/robocpp/src/libfovis/testers /home/twhyte/cobot/robocpp/src/libfovis/build /home/twhyte/cobot/robocpp/src/libfovis/build/testers /home/twhyte/cobot/robocpp/src/libfovis/build/testers/CMakeFiles/refine-motion-estimate-tester.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : testers/CMakeFiles/refine-motion-estimate-tester.dir/depend

