# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fredo/Documents/tp_open_gl/tp_open_gl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug

# Include any dependencies generated for this target.
include CMakeFiles/tp_open_gl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tp_open_gl.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tp_open_gl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tp_open_gl.dir/flags.make

CMakeFiles/tp_open_gl.dir/main.cpp.o: CMakeFiles/tp_open_gl.dir/flags.make
CMakeFiles/tp_open_gl.dir/main.cpp.o: /home/fredo/Documents/tp_open_gl/tp_open_gl/main.cpp
CMakeFiles/tp_open_gl.dir/main.cpp.o: CMakeFiles/tp_open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tp_open_gl.dir/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp_open_gl.dir/main.cpp.o -MF CMakeFiles/tp_open_gl.dir/main.cpp.o.d -o CMakeFiles/tp_open_gl.dir/main.cpp.o -c /home/fredo/Documents/tp_open_gl/tp_open_gl/main.cpp

CMakeFiles/tp_open_gl.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_open_gl.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fredo/Documents/tp_open_gl/tp_open_gl/main.cpp > CMakeFiles/tp_open_gl.dir/main.cpp.i

CMakeFiles/tp_open_gl.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_open_gl.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fredo/Documents/tp_open_gl/tp_open_gl/main.cpp -o CMakeFiles/tp_open_gl.dir/main.cpp.s

CMakeFiles/tp_open_gl.dir/camera.cpp.o: CMakeFiles/tp_open_gl.dir/flags.make
CMakeFiles/tp_open_gl.dir/camera.cpp.o: /home/fredo/Documents/tp_open_gl/tp_open_gl/camera.cpp
CMakeFiles/tp_open_gl.dir/camera.cpp.o: CMakeFiles/tp_open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tp_open_gl.dir/camera.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp_open_gl.dir/camera.cpp.o -MF CMakeFiles/tp_open_gl.dir/camera.cpp.o.d -o CMakeFiles/tp_open_gl.dir/camera.cpp.o -c /home/fredo/Documents/tp_open_gl/tp_open_gl/camera.cpp

CMakeFiles/tp_open_gl.dir/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_open_gl.dir/camera.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fredo/Documents/tp_open_gl/tp_open_gl/camera.cpp > CMakeFiles/tp_open_gl.dir/camera.cpp.i

CMakeFiles/tp_open_gl.dir/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_open_gl.dir/camera.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fredo/Documents/tp_open_gl/tp_open_gl/camera.cpp -o CMakeFiles/tp_open_gl.dir/camera.cpp.s

CMakeFiles/tp_open_gl.dir/pointlight.cpp.o: CMakeFiles/tp_open_gl.dir/flags.make
CMakeFiles/tp_open_gl.dir/pointlight.cpp.o: /home/fredo/Documents/tp_open_gl/tp_open_gl/pointlight.cpp
CMakeFiles/tp_open_gl.dir/pointlight.cpp.o: CMakeFiles/tp_open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tp_open_gl.dir/pointlight.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp_open_gl.dir/pointlight.cpp.o -MF CMakeFiles/tp_open_gl.dir/pointlight.cpp.o.d -o CMakeFiles/tp_open_gl.dir/pointlight.cpp.o -c /home/fredo/Documents/tp_open_gl/tp_open_gl/pointlight.cpp

CMakeFiles/tp_open_gl.dir/pointlight.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_open_gl.dir/pointlight.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fredo/Documents/tp_open_gl/tp_open_gl/pointlight.cpp > CMakeFiles/tp_open_gl.dir/pointlight.cpp.i

CMakeFiles/tp_open_gl.dir/pointlight.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_open_gl.dir/pointlight.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fredo/Documents/tp_open_gl/tp_open_gl/pointlight.cpp -o CMakeFiles/tp_open_gl.dir/pointlight.cpp.s

CMakeFiles/tp_open_gl.dir/controls.cpp.o: CMakeFiles/tp_open_gl.dir/flags.make
CMakeFiles/tp_open_gl.dir/controls.cpp.o: /home/fredo/Documents/tp_open_gl/tp_open_gl/controls.cpp
CMakeFiles/tp_open_gl.dir/controls.cpp.o: CMakeFiles/tp_open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tp_open_gl.dir/controls.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp_open_gl.dir/controls.cpp.o -MF CMakeFiles/tp_open_gl.dir/controls.cpp.o.d -o CMakeFiles/tp_open_gl.dir/controls.cpp.o -c /home/fredo/Documents/tp_open_gl/tp_open_gl/controls.cpp

CMakeFiles/tp_open_gl.dir/controls.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_open_gl.dir/controls.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fredo/Documents/tp_open_gl/tp_open_gl/controls.cpp > CMakeFiles/tp_open_gl.dir/controls.cpp.i

CMakeFiles/tp_open_gl.dir/controls.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_open_gl.dir/controls.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fredo/Documents/tp_open_gl/tp_open_gl/controls.cpp -o CMakeFiles/tp_open_gl.dir/controls.cpp.s

CMakeFiles/tp_open_gl.dir/fpscontrols.cpp.o: CMakeFiles/tp_open_gl.dir/flags.make
CMakeFiles/tp_open_gl.dir/fpscontrols.cpp.o: /home/fredo/Documents/tp_open_gl/tp_open_gl/fpscontrols.cpp
CMakeFiles/tp_open_gl.dir/fpscontrols.cpp.o: CMakeFiles/tp_open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/tp_open_gl.dir/fpscontrols.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp_open_gl.dir/fpscontrols.cpp.o -MF CMakeFiles/tp_open_gl.dir/fpscontrols.cpp.o.d -o CMakeFiles/tp_open_gl.dir/fpscontrols.cpp.o -c /home/fredo/Documents/tp_open_gl/tp_open_gl/fpscontrols.cpp

CMakeFiles/tp_open_gl.dir/fpscontrols.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_open_gl.dir/fpscontrols.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fredo/Documents/tp_open_gl/tp_open_gl/fpscontrols.cpp > CMakeFiles/tp_open_gl.dir/fpscontrols.cpp.i

CMakeFiles/tp_open_gl.dir/fpscontrols.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_open_gl.dir/fpscontrols.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fredo/Documents/tp_open_gl/tp_open_gl/fpscontrols.cpp -o CMakeFiles/tp_open_gl.dir/fpscontrols.cpp.s

CMakeFiles/tp_open_gl.dir/navigationcontrols.cpp.o: CMakeFiles/tp_open_gl.dir/flags.make
CMakeFiles/tp_open_gl.dir/navigationcontrols.cpp.o: /home/fredo/Documents/tp_open_gl/tp_open_gl/navigationcontrols.cpp
CMakeFiles/tp_open_gl.dir/navigationcontrols.cpp.o: CMakeFiles/tp_open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/tp_open_gl.dir/navigationcontrols.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp_open_gl.dir/navigationcontrols.cpp.o -MF CMakeFiles/tp_open_gl.dir/navigationcontrols.cpp.o.d -o CMakeFiles/tp_open_gl.dir/navigationcontrols.cpp.o -c /home/fredo/Documents/tp_open_gl/tp_open_gl/navigationcontrols.cpp

CMakeFiles/tp_open_gl.dir/navigationcontrols.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_open_gl.dir/navigationcontrols.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fredo/Documents/tp_open_gl/tp_open_gl/navigationcontrols.cpp > CMakeFiles/tp_open_gl.dir/navigationcontrols.cpp.i

CMakeFiles/tp_open_gl.dir/navigationcontrols.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_open_gl.dir/navigationcontrols.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fredo/Documents/tp_open_gl/tp_open_gl/navigationcontrols.cpp -o CMakeFiles/tp_open_gl.dir/navigationcontrols.cpp.s

CMakeFiles/tp_open_gl.dir/object.cpp.o: CMakeFiles/tp_open_gl.dir/flags.make
CMakeFiles/tp_open_gl.dir/object.cpp.o: /home/fredo/Documents/tp_open_gl/tp_open_gl/object.cpp
CMakeFiles/tp_open_gl.dir/object.cpp.o: CMakeFiles/tp_open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/tp_open_gl.dir/object.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp_open_gl.dir/object.cpp.o -MF CMakeFiles/tp_open_gl.dir/object.cpp.o.d -o CMakeFiles/tp_open_gl.dir/object.cpp.o -c /home/fredo/Documents/tp_open_gl/tp_open_gl/object.cpp

CMakeFiles/tp_open_gl.dir/object.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_open_gl.dir/object.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fredo/Documents/tp_open_gl/tp_open_gl/object.cpp > CMakeFiles/tp_open_gl.dir/object.cpp.i

CMakeFiles/tp_open_gl.dir/object.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_open_gl.dir/object.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fredo/Documents/tp_open_gl/tp_open_gl/object.cpp -o CMakeFiles/tp_open_gl.dir/object.cpp.s

CMakeFiles/tp_open_gl.dir/renderer.cpp.o: CMakeFiles/tp_open_gl.dir/flags.make
CMakeFiles/tp_open_gl.dir/renderer.cpp.o: /home/fredo/Documents/tp_open_gl/tp_open_gl/renderer.cpp
CMakeFiles/tp_open_gl.dir/renderer.cpp.o: CMakeFiles/tp_open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/tp_open_gl.dir/renderer.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp_open_gl.dir/renderer.cpp.o -MF CMakeFiles/tp_open_gl.dir/renderer.cpp.o.d -o CMakeFiles/tp_open_gl.dir/renderer.cpp.o -c /home/fredo/Documents/tp_open_gl/tp_open_gl/renderer.cpp

CMakeFiles/tp_open_gl.dir/renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_open_gl.dir/renderer.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fredo/Documents/tp_open_gl/tp_open_gl/renderer.cpp > CMakeFiles/tp_open_gl.dir/renderer.cpp.i

CMakeFiles/tp_open_gl.dir/renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_open_gl.dir/renderer.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fredo/Documents/tp_open_gl/tp_open_gl/renderer.cpp -o CMakeFiles/tp_open_gl.dir/renderer.cpp.s

CMakeFiles/tp_open_gl.dir/shader.cpp.o: CMakeFiles/tp_open_gl.dir/flags.make
CMakeFiles/tp_open_gl.dir/shader.cpp.o: /home/fredo/Documents/tp_open_gl/tp_open_gl/shader.cpp
CMakeFiles/tp_open_gl.dir/shader.cpp.o: CMakeFiles/tp_open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/tp_open_gl.dir/shader.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp_open_gl.dir/shader.cpp.o -MF CMakeFiles/tp_open_gl.dir/shader.cpp.o.d -o CMakeFiles/tp_open_gl.dir/shader.cpp.o -c /home/fredo/Documents/tp_open_gl/tp_open_gl/shader.cpp

CMakeFiles/tp_open_gl.dir/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_open_gl.dir/shader.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fredo/Documents/tp_open_gl/tp_open_gl/shader.cpp > CMakeFiles/tp_open_gl.dir/shader.cpp.i

CMakeFiles/tp_open_gl.dir/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_open_gl.dir/shader.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fredo/Documents/tp_open_gl/tp_open_gl/shader.cpp -o CMakeFiles/tp_open_gl.dir/shader.cpp.s

CMakeFiles/tp_open_gl.dir/texture.cpp.o: CMakeFiles/tp_open_gl.dir/flags.make
CMakeFiles/tp_open_gl.dir/texture.cpp.o: /home/fredo/Documents/tp_open_gl/tp_open_gl/texture.cpp
CMakeFiles/tp_open_gl.dir/texture.cpp.o: CMakeFiles/tp_open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/tp_open_gl.dir/texture.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp_open_gl.dir/texture.cpp.o -MF CMakeFiles/tp_open_gl.dir/texture.cpp.o.d -o CMakeFiles/tp_open_gl.dir/texture.cpp.o -c /home/fredo/Documents/tp_open_gl/tp_open_gl/texture.cpp

CMakeFiles/tp_open_gl.dir/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_open_gl.dir/texture.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fredo/Documents/tp_open_gl/tp_open_gl/texture.cpp > CMakeFiles/tp_open_gl.dir/texture.cpp.i

CMakeFiles/tp_open_gl.dir/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_open_gl.dir/texture.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fredo/Documents/tp_open_gl/tp_open_gl/texture.cpp -o CMakeFiles/tp_open_gl.dir/texture.cpp.s

CMakeFiles/tp_open_gl.dir/uvbuffer.cpp.o: CMakeFiles/tp_open_gl.dir/flags.make
CMakeFiles/tp_open_gl.dir/uvbuffer.cpp.o: /home/fredo/Documents/tp_open_gl/tp_open_gl/uvbuffer.cpp
CMakeFiles/tp_open_gl.dir/uvbuffer.cpp.o: CMakeFiles/tp_open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/tp_open_gl.dir/uvbuffer.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp_open_gl.dir/uvbuffer.cpp.o -MF CMakeFiles/tp_open_gl.dir/uvbuffer.cpp.o.d -o CMakeFiles/tp_open_gl.dir/uvbuffer.cpp.o -c /home/fredo/Documents/tp_open_gl/tp_open_gl/uvbuffer.cpp

CMakeFiles/tp_open_gl.dir/uvbuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_open_gl.dir/uvbuffer.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fredo/Documents/tp_open_gl/tp_open_gl/uvbuffer.cpp > CMakeFiles/tp_open_gl.dir/uvbuffer.cpp.i

CMakeFiles/tp_open_gl.dir/uvbuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_open_gl.dir/uvbuffer.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fredo/Documents/tp_open_gl/tp_open_gl/uvbuffer.cpp -o CMakeFiles/tp_open_gl.dir/uvbuffer.cpp.s

CMakeFiles/tp_open_gl.dir/vertexarray.cpp.o: CMakeFiles/tp_open_gl.dir/flags.make
CMakeFiles/tp_open_gl.dir/vertexarray.cpp.o: /home/fredo/Documents/tp_open_gl/tp_open_gl/vertexarray.cpp
CMakeFiles/tp_open_gl.dir/vertexarray.cpp.o: CMakeFiles/tp_open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/tp_open_gl.dir/vertexarray.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp_open_gl.dir/vertexarray.cpp.o -MF CMakeFiles/tp_open_gl.dir/vertexarray.cpp.o.d -o CMakeFiles/tp_open_gl.dir/vertexarray.cpp.o -c /home/fredo/Documents/tp_open_gl/tp_open_gl/vertexarray.cpp

CMakeFiles/tp_open_gl.dir/vertexarray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_open_gl.dir/vertexarray.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fredo/Documents/tp_open_gl/tp_open_gl/vertexarray.cpp > CMakeFiles/tp_open_gl.dir/vertexarray.cpp.i

CMakeFiles/tp_open_gl.dir/vertexarray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_open_gl.dir/vertexarray.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fredo/Documents/tp_open_gl/tp_open_gl/vertexarray.cpp -o CMakeFiles/tp_open_gl.dir/vertexarray.cpp.s

CMakeFiles/tp_open_gl.dir/vertexbuffer.cpp.o: CMakeFiles/tp_open_gl.dir/flags.make
CMakeFiles/tp_open_gl.dir/vertexbuffer.cpp.o: /home/fredo/Documents/tp_open_gl/tp_open_gl/vertexbuffer.cpp
CMakeFiles/tp_open_gl.dir/vertexbuffer.cpp.o: CMakeFiles/tp_open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/tp_open_gl.dir/vertexbuffer.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp_open_gl.dir/vertexbuffer.cpp.o -MF CMakeFiles/tp_open_gl.dir/vertexbuffer.cpp.o.d -o CMakeFiles/tp_open_gl.dir/vertexbuffer.cpp.o -c /home/fredo/Documents/tp_open_gl/tp_open_gl/vertexbuffer.cpp

CMakeFiles/tp_open_gl.dir/vertexbuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_open_gl.dir/vertexbuffer.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fredo/Documents/tp_open_gl/tp_open_gl/vertexbuffer.cpp > CMakeFiles/tp_open_gl.dir/vertexbuffer.cpp.i

CMakeFiles/tp_open_gl.dir/vertexbuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_open_gl.dir/vertexbuffer.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fredo/Documents/tp_open_gl/tp_open_gl/vertexbuffer.cpp -o CMakeFiles/tp_open_gl.dir/vertexbuffer.cpp.s

CMakeFiles/tp_open_gl.dir/stb_image/stb_image.cpp.o: CMakeFiles/tp_open_gl.dir/flags.make
CMakeFiles/tp_open_gl.dir/stb_image/stb_image.cpp.o: /home/fredo/Documents/tp_open_gl/tp_open_gl/stb_image/stb_image.cpp
CMakeFiles/tp_open_gl.dir/stb_image/stb_image.cpp.o: CMakeFiles/tp_open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/tp_open_gl.dir/stb_image/stb_image.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp_open_gl.dir/stb_image/stb_image.cpp.o -MF CMakeFiles/tp_open_gl.dir/stb_image/stb_image.cpp.o.d -o CMakeFiles/tp_open_gl.dir/stb_image/stb_image.cpp.o -c /home/fredo/Documents/tp_open_gl/tp_open_gl/stb_image/stb_image.cpp

CMakeFiles/tp_open_gl.dir/stb_image/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_open_gl.dir/stb_image/stb_image.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fredo/Documents/tp_open_gl/tp_open_gl/stb_image/stb_image.cpp > CMakeFiles/tp_open_gl.dir/stb_image/stb_image.cpp.i

CMakeFiles/tp_open_gl.dir/stb_image/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_open_gl.dir/stb_image/stb_image.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fredo/Documents/tp_open_gl/tp_open_gl/stb_image/stb_image.cpp -o CMakeFiles/tp_open_gl.dir/stb_image/stb_image.cpp.s

# Object files for target tp_open_gl
tp_open_gl_OBJECTS = \
"CMakeFiles/tp_open_gl.dir/main.cpp.o" \
"CMakeFiles/tp_open_gl.dir/camera.cpp.o" \
"CMakeFiles/tp_open_gl.dir/pointlight.cpp.o" \
"CMakeFiles/tp_open_gl.dir/controls.cpp.o" \
"CMakeFiles/tp_open_gl.dir/fpscontrols.cpp.o" \
"CMakeFiles/tp_open_gl.dir/navigationcontrols.cpp.o" \
"CMakeFiles/tp_open_gl.dir/object.cpp.o" \
"CMakeFiles/tp_open_gl.dir/renderer.cpp.o" \
"CMakeFiles/tp_open_gl.dir/shader.cpp.o" \
"CMakeFiles/tp_open_gl.dir/texture.cpp.o" \
"CMakeFiles/tp_open_gl.dir/uvbuffer.cpp.o" \
"CMakeFiles/tp_open_gl.dir/vertexarray.cpp.o" \
"CMakeFiles/tp_open_gl.dir/vertexbuffer.cpp.o" \
"CMakeFiles/tp_open_gl.dir/stb_image/stb_image.cpp.o"

# External object files for target tp_open_gl
tp_open_gl_EXTERNAL_OBJECTS =

tp_open_gl: CMakeFiles/tp_open_gl.dir/main.cpp.o
tp_open_gl: CMakeFiles/tp_open_gl.dir/camera.cpp.o
tp_open_gl: CMakeFiles/tp_open_gl.dir/pointlight.cpp.o
tp_open_gl: CMakeFiles/tp_open_gl.dir/controls.cpp.o
tp_open_gl: CMakeFiles/tp_open_gl.dir/fpscontrols.cpp.o
tp_open_gl: CMakeFiles/tp_open_gl.dir/navigationcontrols.cpp.o
tp_open_gl: CMakeFiles/tp_open_gl.dir/object.cpp.o
tp_open_gl: CMakeFiles/tp_open_gl.dir/renderer.cpp.o
tp_open_gl: CMakeFiles/tp_open_gl.dir/shader.cpp.o
tp_open_gl: CMakeFiles/tp_open_gl.dir/texture.cpp.o
tp_open_gl: CMakeFiles/tp_open_gl.dir/uvbuffer.cpp.o
tp_open_gl: CMakeFiles/tp_open_gl.dir/vertexarray.cpp.o
tp_open_gl: CMakeFiles/tp_open_gl.dir/vertexbuffer.cpp.o
tp_open_gl: CMakeFiles/tp_open_gl.dir/stb_image/stb_image.cpp.o
tp_open_gl: CMakeFiles/tp_open_gl.dir/build.make
tp_open_gl: CMakeFiles/tp_open_gl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable tp_open_gl"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tp_open_gl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tp_open_gl.dir/build: tp_open_gl
.PHONY : CMakeFiles/tp_open_gl.dir/build

CMakeFiles/tp_open_gl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tp_open_gl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tp_open_gl.dir/clean

CMakeFiles/tp_open_gl.dir/depend:
	cd /home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fredo/Documents/tp_open_gl/tp_open_gl /home/fredo/Documents/tp_open_gl/tp_open_gl /home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug /home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug /home/fredo/Documents/tp_open_gl/build-tp_open_gl-Desktop-Debug/CMakeFiles/tp_open_gl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tp_open_gl.dir/depend
