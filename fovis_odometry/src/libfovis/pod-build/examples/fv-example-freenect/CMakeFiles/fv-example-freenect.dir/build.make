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
include examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/depend.make

# Include the progress variables for this target.
include examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/progress.make

# Include the compile flags for this target's objects.
include examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/flags.make

examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/main.cpp.o: examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/flags.make
examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/main.cpp.o: ../examples/fv-example-freenect/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/twhyte/projects/libfovis/pod-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/main.cpp.o"
	cd /home/twhyte/projects/libfovis/pod-build/examples/fv-example-freenect && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/fv-example-freenect.dir/main.cpp.o -c /home/twhyte/projects/libfovis/examples/fv-example-freenect/main.cpp

examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fv-example-freenect.dir/main.cpp.i"
	cd /home/twhyte/projects/libfovis/pod-build/examples/fv-example-freenect && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/twhyte/projects/libfovis/examples/fv-example-freenect/main.cpp > CMakeFiles/fv-example-freenect.dir/main.cpp.i

examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fv-example-freenect.dir/main.cpp.s"
	cd /home/twhyte/projects/libfovis/pod-build/examples/fv-example-freenect && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/twhyte/projects/libfovis/examples/fv-example-freenect/main.cpp -o CMakeFiles/fv-example-freenect.dir/main.cpp.s

examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/main.cpp.o.requires:
.PHONY : examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/main.cpp.o.requires

examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/main.cpp.o.provides: examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/main.cpp.o.requires
	$(MAKE) -f examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/build.make examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/main.cpp.o.provides.build
.PHONY : examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/main.cpp.o.provides

examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/main.cpp.o.provides.build: examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/main.cpp.o

examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/data_capture.cpp.o: examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/flags.make
examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/data_capture.cpp.o: ../examples/fv-example-freenect/data_capture.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/twhyte/projects/libfovis/pod-build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/data_capture.cpp.o"
	cd /home/twhyte/projects/libfovis/pod-build/examples/fv-example-freenect && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/fv-example-freenect.dir/data_capture.cpp.o -c /home/twhyte/projects/libfovis/examples/fv-example-freenect/data_capture.cpp

examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/data_capture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fv-example-freenect.dir/data_capture.cpp.i"
	cd /home/twhyte/projects/libfovis/pod-build/examples/fv-example-freenect && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/twhyte/projects/libfovis/examples/fv-example-freenect/data_capture.cpp > CMakeFiles/fv-example-freenect.dir/data_capture.cpp.i

examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/data_capture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fv-example-freenect.dir/data_capture.cpp.s"
	cd /home/twhyte/projects/libfovis/pod-build/examples/fv-example-freenect && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/twhyte/projects/libfovis/examples/fv-example-freenect/data_capture.cpp -o CMakeFiles/fv-example-freenect.dir/data_capture.cpp.s

examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/data_capture.cpp.o.requires:
.PHONY : examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/data_capture.cpp.o.requires

examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/data_capture.cpp.o.provides: examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/data_capture.cpp.o.requires
	$(MAKE) -f examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/build.make examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/data_capture.cpp.o.provides.build
.PHONY : examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/data_capture.cpp.o.provides

examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/data_capture.cpp.o.provides.build: examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/data_capture.cpp.o

# Object files for target fv-example-freenect
fv__example__freenect_OBJECTS = \
"CMakeFiles/fv-example-freenect.dir/main.cpp.o" \
"CMakeFiles/fv-example-freenect.dir/data_capture.cpp.o"

# External object files for target fv-example-freenect
fv__example__freenect_EXTERNAL_OBJECTS =

bin/fv-example-freenect: examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/main.cpp.o
bin/fv-example-freenect: examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/data_capture.cpp.o
bin/fv-example-freenect: /usr/local/lib64/libfreenect.so
bin/fv-example-freenect: lib/libfovis.so.1
bin/fv-example-freenect: examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/build.make
bin/fv-example-freenect: examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/fv-example-freenect"
	cd /home/twhyte/projects/libfovis/pod-build/examples/fv-example-freenect && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fv-example-freenect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/build: bin/fv-example-freenect
.PHONY : examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/build

examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/requires: examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/main.cpp.o.requires
examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/requires: examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/data_capture.cpp.o.requires
.PHONY : examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/requires

examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/clean:
	cd /home/twhyte/projects/libfovis/pod-build/examples/fv-example-freenect && $(CMAKE_COMMAND) -P CMakeFiles/fv-example-freenect.dir/cmake_clean.cmake
.PHONY : examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/clean

examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/depend:
	cd /home/twhyte/projects/libfovis/pod-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/twhyte/projects/libfovis /home/twhyte/projects/libfovis/examples/fv-example-freenect /home/twhyte/projects/libfovis/pod-build /home/twhyte/projects/libfovis/pod-build/examples/fv-example-freenect /home/twhyte/projects/libfovis/pod-build/examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/fv-example-freenect/CMakeFiles/fv-example-freenect.dir/depend

