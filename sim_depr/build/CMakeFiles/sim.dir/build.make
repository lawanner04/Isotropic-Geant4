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
CMAKE_SOURCE_DIR = /home/lawanner/Isotropic-Geant4/sim

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lawanner/Isotropic-Geant4/sim/build

# Include any dependencies generated for this target.
include CMakeFiles/sim.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sim.dir/flags.make

CMakeFiles/sim.dir/sim.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/sim.cc.o: ../sim.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lawanner/Isotropic-Geant4/sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sim.dir/sim.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/sim.cc.o -c /home/lawanner/Isotropic-Geant4/sim/sim.cc

CMakeFiles/sim.dir/sim.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/sim.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lawanner/Isotropic-Geant4/sim/sim.cc > CMakeFiles/sim.dir/sim.cc.i

CMakeFiles/sim.dir/sim.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/sim.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lawanner/Isotropic-Geant4/sim/sim.cc -o CMakeFiles/sim.dir/sim.cc.s

CMakeFiles/sim.dir/EventAction.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/EventAction.cc.o: ../EventAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lawanner/Isotropic-Geant4/sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sim.dir/EventAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/EventAction.cc.o -c /home/lawanner/Isotropic-Geant4/sim/EventAction.cc

CMakeFiles/sim.dir/EventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/EventAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lawanner/Isotropic-Geant4/sim/EventAction.cc > CMakeFiles/sim.dir/EventAction.cc.i

CMakeFiles/sim.dir/EventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/EventAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lawanner/Isotropic-Geant4/sim/EventAction.cc -o CMakeFiles/sim.dir/EventAction.cc.s

CMakeFiles/sim.dir/GlobalFile.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/GlobalFile.cc.o: ../GlobalFile.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lawanner/Isotropic-Geant4/sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sim.dir/GlobalFile.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/GlobalFile.cc.o -c /home/lawanner/Isotropic-Geant4/sim/GlobalFile.cc

CMakeFiles/sim.dir/GlobalFile.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/GlobalFile.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lawanner/Isotropic-Geant4/sim/GlobalFile.cc > CMakeFiles/sim.dir/GlobalFile.cc.i

CMakeFiles/sim.dir/GlobalFile.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/GlobalFile.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lawanner/Isotropic-Geant4/sim/GlobalFile.cc -o CMakeFiles/sim.dir/GlobalFile.cc.s

CMakeFiles/sim.dir/action.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/action.cc.o: ../action.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lawanner/Isotropic-Geant4/sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/sim.dir/action.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/action.cc.o -c /home/lawanner/Isotropic-Geant4/sim/action.cc

CMakeFiles/sim.dir/action.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/action.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lawanner/Isotropic-Geant4/sim/action.cc > CMakeFiles/sim.dir/action.cc.i

CMakeFiles/sim.dir/action.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/action.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lawanner/Isotropic-Geant4/sim/action.cc -o CMakeFiles/sim.dir/action.cc.s

CMakeFiles/sim.dir/construction.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/construction.cc.o: ../construction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lawanner/Isotropic-Geant4/sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/sim.dir/construction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/construction.cc.o -c /home/lawanner/Isotropic-Geant4/sim/construction.cc

CMakeFiles/sim.dir/construction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/construction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lawanner/Isotropic-Geant4/sim/construction.cc > CMakeFiles/sim.dir/construction.cc.i

CMakeFiles/sim.dir/construction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/construction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lawanner/Isotropic-Geant4/sim/construction.cc -o CMakeFiles/sim.dir/construction.cc.s

CMakeFiles/sim.dir/detector.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/detector.cc.o: ../detector.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lawanner/Isotropic-Geant4/sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/sim.dir/detector.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/detector.cc.o -c /home/lawanner/Isotropic-Geant4/sim/detector.cc

CMakeFiles/sim.dir/detector.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/detector.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lawanner/Isotropic-Geant4/sim/detector.cc > CMakeFiles/sim.dir/detector.cc.i

CMakeFiles/sim.dir/detector.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/detector.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lawanner/Isotropic-Geant4/sim/detector.cc -o CMakeFiles/sim.dir/detector.cc.s

CMakeFiles/sim.dir/generator.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/generator.cc.o: ../generator.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lawanner/Isotropic-Geant4/sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/sim.dir/generator.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/generator.cc.o -c /home/lawanner/Isotropic-Geant4/sim/generator.cc

CMakeFiles/sim.dir/generator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/generator.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lawanner/Isotropic-Geant4/sim/generator.cc > CMakeFiles/sim.dir/generator.cc.i

CMakeFiles/sim.dir/generator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/generator.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lawanner/Isotropic-Geant4/sim/generator.cc -o CMakeFiles/sim.dir/generator.cc.s

CMakeFiles/sim.dir/physics.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/physics.cc.o: ../physics.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lawanner/Isotropic-Geant4/sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/sim.dir/physics.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/physics.cc.o -c /home/lawanner/Isotropic-Geant4/sim/physics.cc

CMakeFiles/sim.dir/physics.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/physics.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lawanner/Isotropic-Geant4/sim/physics.cc > CMakeFiles/sim.dir/physics.cc.i

CMakeFiles/sim.dir/physics.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/physics.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lawanner/Isotropic-Geant4/sim/physics.cc -o CMakeFiles/sim.dir/physics.cc.s

# Object files for target sim
sim_OBJECTS = \
"CMakeFiles/sim.dir/sim.cc.o" \
"CMakeFiles/sim.dir/EventAction.cc.o" \
"CMakeFiles/sim.dir/GlobalFile.cc.o" \
"CMakeFiles/sim.dir/action.cc.o" \
"CMakeFiles/sim.dir/construction.cc.o" \
"CMakeFiles/sim.dir/detector.cc.o" \
"CMakeFiles/sim.dir/generator.cc.o" \
"CMakeFiles/sim.dir/physics.cc.o"

# External object files for target sim
sim_EXTERNAL_OBJECTS =

sim: CMakeFiles/sim.dir/sim.cc.o
sim: CMakeFiles/sim.dir/EventAction.cc.o
sim: CMakeFiles/sim.dir/GlobalFile.cc.o
sim: CMakeFiles/sim.dir/action.cc.o
sim: CMakeFiles/sim.dir/construction.cc.o
sim: CMakeFiles/sim.dir/detector.cc.o
sim: CMakeFiles/sim.dir/generator.cc.o
sim: CMakeFiles/sim.dir/physics.cc.o
sim: CMakeFiles/sim.dir/build.make
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4Tree.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4FR.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4GMocren.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4visHepRep.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4RayTracer.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4VRML.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4ToolsSG.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4OpenGL.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4vis_management.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4modeling.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4interfaces.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4mctruth.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4geomtext.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4error_propagation.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4readout.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4physicslists.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4run.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4event.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4tracking.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4parmodels.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4processes.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4digits_hits.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4track.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4particles.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4geometry.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4materials.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4graphics_reps.so
sim: /usr/lib/x86_64-linux-gnu/libGL.so
sim: /usr/lib/x86_64-linux-gnu/libXmu.so
sim: /usr/lib/x86_64-linux-gnu/libXext.so
sim: /usr/lib/x86_64-linux-gnu/libXt.so
sim: /usr/lib/x86_64-linux-gnu/libICE.so
sim: /usr/lib/x86_64-linux-gnu/libSM.so
sim: /usr/lib/x86_64-linux-gnu/libX11.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4analysis.so
sim: /usr/lib/x86_64-linux-gnu/libexpat.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4zlib.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4intercoms.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4global.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4clhep.so
sim: /usr/local/geant4/geant4.11.2p0/geant4-v11.2.0-install/lib/libG4ptl.so.2.3.3
sim: CMakeFiles/sim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lawanner/Isotropic-Geant4/sim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable sim"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sim.dir/build: sim

.PHONY : CMakeFiles/sim.dir/build

CMakeFiles/sim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sim.dir/clean

CMakeFiles/sim.dir/depend:
	cd /home/lawanner/Isotropic-Geant4/sim/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lawanner/Isotropic-Geant4/sim /home/lawanner/Isotropic-Geant4/sim /home/lawanner/Isotropic-Geant4/sim/build /home/lawanner/Isotropic-Geant4/sim/build /home/lawanner/Isotropic-Geant4/sim/build/CMakeFiles/sim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sim.dir/depend

