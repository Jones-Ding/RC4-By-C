# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dean/documents/RC4-By-C

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dean/documents/RC4-By-C/build

# Include any dependencies generated for this target.
include src/CMakeFiles/RC4_static.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/RC4_static.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/RC4_static.dir/flags.make

src/CMakeFiles/RC4_static.dir/RC4.c.o: src/CMakeFiles/RC4_static.dir/flags.make
src/CMakeFiles/RC4_static.dir/RC4.c.o: ../src/RC4.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dean/documents/RC4-By-C/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/RC4_static.dir/RC4.c.o"
	cd /home/dean/documents/RC4-By-C/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RC4_static.dir/RC4.c.o   -c /home/dean/documents/RC4-By-C/src/RC4.c

src/CMakeFiles/RC4_static.dir/RC4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RC4_static.dir/RC4.c.i"
	cd /home/dean/documents/RC4-By-C/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dean/documents/RC4-By-C/src/RC4.c > CMakeFiles/RC4_static.dir/RC4.c.i

src/CMakeFiles/RC4_static.dir/RC4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RC4_static.dir/RC4.c.s"
	cd /home/dean/documents/RC4-By-C/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dean/documents/RC4-By-C/src/RC4.c -o CMakeFiles/RC4_static.dir/RC4.c.s

src/CMakeFiles/RC4_static.dir/typeConvertion_Linux.c.o: src/CMakeFiles/RC4_static.dir/flags.make
src/CMakeFiles/RC4_static.dir/typeConvertion_Linux.c.o: ../src/typeConvertion_Linux.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dean/documents/RC4-By-C/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/RC4_static.dir/typeConvertion_Linux.c.o"
	cd /home/dean/documents/RC4-By-C/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RC4_static.dir/typeConvertion_Linux.c.o   -c /home/dean/documents/RC4-By-C/src/typeConvertion_Linux.c

src/CMakeFiles/RC4_static.dir/typeConvertion_Linux.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RC4_static.dir/typeConvertion_Linux.c.i"
	cd /home/dean/documents/RC4-By-C/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dean/documents/RC4-By-C/src/typeConvertion_Linux.c > CMakeFiles/RC4_static.dir/typeConvertion_Linux.c.i

src/CMakeFiles/RC4_static.dir/typeConvertion_Linux.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RC4_static.dir/typeConvertion_Linux.c.s"
	cd /home/dean/documents/RC4-By-C/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dean/documents/RC4-By-C/src/typeConvertion_Linux.c -o CMakeFiles/RC4_static.dir/typeConvertion_Linux.c.s

# Object files for target RC4_static
RC4_static_OBJECTS = \
"CMakeFiles/RC4_static.dir/RC4.c.o" \
"CMakeFiles/RC4_static.dir/typeConvertion_Linux.c.o"

# External object files for target RC4_static
RC4_static_EXTERNAL_OBJECTS =

../lib/librc4encrypt.a: src/CMakeFiles/RC4_static.dir/RC4.c.o
../lib/librc4encrypt.a: src/CMakeFiles/RC4_static.dir/typeConvertion_Linux.c.o
../lib/librc4encrypt.a: src/CMakeFiles/RC4_static.dir/build.make
../lib/librc4encrypt.a: src/CMakeFiles/RC4_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dean/documents/RC4-By-C/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library ../../lib/librc4encrypt.a"
	cd /home/dean/documents/RC4-By-C/build/src && $(CMAKE_COMMAND) -P CMakeFiles/RC4_static.dir/cmake_clean_target.cmake
	cd /home/dean/documents/RC4-By-C/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RC4_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/RC4_static.dir/build: ../lib/librc4encrypt.a

.PHONY : src/CMakeFiles/RC4_static.dir/build

src/CMakeFiles/RC4_static.dir/clean:
	cd /home/dean/documents/RC4-By-C/build/src && $(CMAKE_COMMAND) -P CMakeFiles/RC4_static.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/RC4_static.dir/clean

src/CMakeFiles/RC4_static.dir/depend:
	cd /home/dean/documents/RC4-By-C/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dean/documents/RC4-By-C /home/dean/documents/RC4-By-C/src /home/dean/documents/RC4-By-C/build /home/dean/documents/RC4-By-C/build/src /home/dean/documents/RC4-By-C/build/src/CMakeFiles/RC4_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/RC4_static.dir/depend
