# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /home/jonas/Documents/Jetbrains/CLion/clion-2016.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/jonas/Documents/Jetbrains/CLion/clion-2016.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jonas/Projects/mycprojects/employee_management

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jonas/Projects/mycprojects/employee_management/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/employee_management.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/employee_management.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/employee_management.dir/flags.make

CMakeFiles/employee_management.dir/main.cpp.o: CMakeFiles/employee_management.dir/flags.make
CMakeFiles/employee_management.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonas/Projects/mycprojects/employee_management/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/employee_management.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/employee_management.dir/main.cpp.o -c /home/jonas/Projects/mycprojects/employee_management/main.cpp

CMakeFiles/employee_management.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/employee_management.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonas/Projects/mycprojects/employee_management/main.cpp > CMakeFiles/employee_management.dir/main.cpp.i

CMakeFiles/employee_management.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/employee_management.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonas/Projects/mycprojects/employee_management/main.cpp -o CMakeFiles/employee_management.dir/main.cpp.s

CMakeFiles/employee_management.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/employee_management.dir/main.cpp.o.requires

CMakeFiles/employee_management.dir/main.cpp.o.provides: CMakeFiles/employee_management.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/employee_management.dir/build.make CMakeFiles/employee_management.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/employee_management.dir/main.cpp.o.provides

CMakeFiles/employee_management.dir/main.cpp.o.provides.build: CMakeFiles/employee_management.dir/main.cpp.o


CMakeFiles/employee_management.dir/src/Person.cpp.o: CMakeFiles/employee_management.dir/flags.make
CMakeFiles/employee_management.dir/src/Person.cpp.o: ../src/Person.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jonas/Projects/mycprojects/employee_management/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/employee_management.dir/src/Person.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/employee_management.dir/src/Person.cpp.o -c /home/jonas/Projects/mycprojects/employee_management/src/Person.cpp

CMakeFiles/employee_management.dir/src/Person.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/employee_management.dir/src/Person.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jonas/Projects/mycprojects/employee_management/src/Person.cpp > CMakeFiles/employee_management.dir/src/Person.cpp.i

CMakeFiles/employee_management.dir/src/Person.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/employee_management.dir/src/Person.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jonas/Projects/mycprojects/employee_management/src/Person.cpp -o CMakeFiles/employee_management.dir/src/Person.cpp.s

CMakeFiles/employee_management.dir/src/Person.cpp.o.requires:

.PHONY : CMakeFiles/employee_management.dir/src/Person.cpp.o.requires

CMakeFiles/employee_management.dir/src/Person.cpp.o.provides: CMakeFiles/employee_management.dir/src/Person.cpp.o.requires
	$(MAKE) -f CMakeFiles/employee_management.dir/build.make CMakeFiles/employee_management.dir/src/Person.cpp.o.provides.build
.PHONY : CMakeFiles/employee_management.dir/src/Person.cpp.o.provides

CMakeFiles/employee_management.dir/src/Person.cpp.o.provides.build: CMakeFiles/employee_management.dir/src/Person.cpp.o


# Object files for target employee_management
employee_management_OBJECTS = \
"CMakeFiles/employee_management.dir/main.cpp.o" \
"CMakeFiles/employee_management.dir/src/Person.cpp.o"

# External object files for target employee_management
employee_management_EXTERNAL_OBJECTS =

employee_management: CMakeFiles/employee_management.dir/main.cpp.o
employee_management: CMakeFiles/employee_management.dir/src/Person.cpp.o
employee_management: CMakeFiles/employee_management.dir/build.make
employee_management: CMakeFiles/employee_management.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jonas/Projects/mycprojects/employee_management/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable employee_management"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/employee_management.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/employee_management.dir/build: employee_management

.PHONY : CMakeFiles/employee_management.dir/build

CMakeFiles/employee_management.dir/requires: CMakeFiles/employee_management.dir/main.cpp.o.requires
CMakeFiles/employee_management.dir/requires: CMakeFiles/employee_management.dir/src/Person.cpp.o.requires

.PHONY : CMakeFiles/employee_management.dir/requires

CMakeFiles/employee_management.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/employee_management.dir/cmake_clean.cmake
.PHONY : CMakeFiles/employee_management.dir/clean

CMakeFiles/employee_management.dir/depend:
	cd /home/jonas/Projects/mycprojects/employee_management/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jonas/Projects/mycprojects/employee_management /home/jonas/Projects/mycprojects/employee_management /home/jonas/Projects/mycprojects/employee_management/cmake-build-debug /home/jonas/Projects/mycprojects/employee_management/cmake-build-debug /home/jonas/Projects/mycprojects/employee_management/cmake-build-debug/CMakeFiles/employee_management.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/employee_management.dir/depend

