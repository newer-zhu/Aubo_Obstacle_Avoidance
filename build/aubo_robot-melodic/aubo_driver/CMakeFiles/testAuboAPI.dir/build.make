# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/zhu/aubo_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhu/aubo_ws/build

# Include any dependencies generated for this target.
include aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/depend.make

# Include the progress variables for this target.
include aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/progress.make

# Include the compile flags for this target's objects.
include aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/flags.make

aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.o: aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/flags.make
aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.o: /home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_driver/src/testAuboAPI.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhu/aubo_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.o"
	cd /home/zhu/aubo_ws/build/aubo_robot-melodic/aubo_driver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.o -c /home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_driver/src/testAuboAPI.cpp

aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.i"
	cd /home/zhu/aubo_ws/build/aubo_robot-melodic/aubo_driver && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_driver/src/testAuboAPI.cpp > CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.i

aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.s"
	cd /home/zhu/aubo_ws/build/aubo_robot-melodic/aubo_driver && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_driver/src/testAuboAPI.cpp -o CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.s

aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.o.requires:

.PHONY : aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.o.requires

aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.o.provides: aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.o.requires
	$(MAKE) -f aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/build.make aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.o.provides.build
.PHONY : aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.o.provides

aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.o.provides.build: aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.o


# Object files for target testAuboAPI
testAuboAPI_OBJECTS = \
"CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.o"

# External object files for target testAuboAPI
testAuboAPI_EXTERNAL_OBJECTS =

/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.o
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/build.make
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /opt/ros/melodic/lib/libroscpp.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /opt/ros/melodic/lib/librosconsole.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /opt/ros/melodic/lib/librostime.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /opt/ros/melodic/lib/libcpp_common.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI: aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhu/aubo_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI"
	cd /home/zhu/aubo_ws/build/aubo_robot-melodic/aubo_driver && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testAuboAPI.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/build: /home/zhu/aubo_ws/devel/lib/aubo_driver/testAuboAPI

.PHONY : aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/build

aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/requires: aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/src/testAuboAPI.cpp.o.requires

.PHONY : aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/requires

aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/clean:
	cd /home/zhu/aubo_ws/build/aubo_robot-melodic/aubo_driver && $(CMAKE_COMMAND) -P CMakeFiles/testAuboAPI.dir/cmake_clean.cmake
.PHONY : aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/clean

aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/depend:
	cd /home/zhu/aubo_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhu/aubo_ws/src /home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_driver /home/zhu/aubo_ws/build /home/zhu/aubo_ws/build/aubo_robot-melodic/aubo_driver /home/zhu/aubo_ws/build/aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : aubo_robot-melodic/aubo_driver/CMakeFiles/testAuboAPI.dir/depend
