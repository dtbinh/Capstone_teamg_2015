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

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gauri/mrsd_project/robographers_teamg/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gauri/mrsd_project/robographers_teamg/build

# Include any dependencies generated for this target.
include intraface/CMakeFiles/nosePosition.dir/depend.make

# Include the progress variables for this target.
include intraface/CMakeFiles/nosePosition.dir/progress.make

# Include the compile flags for this target's objects.
include intraface/CMakeFiles/nosePosition.dir/flags.make

intraface/CMakeFiles/nosePosition.dir/src/noseDetect.cpp.o: intraface/CMakeFiles/nosePosition.dir/flags.make
intraface/CMakeFiles/nosePosition.dir/src/noseDetect.cpp.o: /home/gauri/mrsd_project/robographers_teamg/src/intraface/src/noseDetect.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/gauri/mrsd_project/robographers_teamg/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object intraface/CMakeFiles/nosePosition.dir/src/noseDetect.cpp.o"
	cd /home/gauri/mrsd_project/robographers_teamg/build/intraface && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/nosePosition.dir/src/noseDetect.cpp.o -c /home/gauri/mrsd_project/robographers_teamg/src/intraface/src/noseDetect.cpp

intraface/CMakeFiles/nosePosition.dir/src/noseDetect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nosePosition.dir/src/noseDetect.cpp.i"
	cd /home/gauri/mrsd_project/robographers_teamg/build/intraface && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/gauri/mrsd_project/robographers_teamg/src/intraface/src/noseDetect.cpp > CMakeFiles/nosePosition.dir/src/noseDetect.cpp.i

intraface/CMakeFiles/nosePosition.dir/src/noseDetect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nosePosition.dir/src/noseDetect.cpp.s"
	cd /home/gauri/mrsd_project/robographers_teamg/build/intraface && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/gauri/mrsd_project/robographers_teamg/src/intraface/src/noseDetect.cpp -o CMakeFiles/nosePosition.dir/src/noseDetect.cpp.s

intraface/CMakeFiles/nosePosition.dir/src/noseDetect.cpp.o.requires:
.PHONY : intraface/CMakeFiles/nosePosition.dir/src/noseDetect.cpp.o.requires

intraface/CMakeFiles/nosePosition.dir/src/noseDetect.cpp.o.provides: intraface/CMakeFiles/nosePosition.dir/src/noseDetect.cpp.o.requires
	$(MAKE) -f intraface/CMakeFiles/nosePosition.dir/build.make intraface/CMakeFiles/nosePosition.dir/src/noseDetect.cpp.o.provides.build
.PHONY : intraface/CMakeFiles/nosePosition.dir/src/noseDetect.cpp.o.provides

intraface/CMakeFiles/nosePosition.dir/src/noseDetect.cpp.o.provides.build: intraface/CMakeFiles/nosePosition.dir/src/noseDetect.cpp.o

# Object files for target nosePosition
nosePosition_OBJECTS = \
"CMakeFiles/nosePosition.dir/src/noseDetect.cpp.o"

# External object files for target nosePosition
nosePosition_EXTERNAL_OBJECTS =

/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: intraface/CMakeFiles/nosePosition.dir/src/noseDetect.cpp.o
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: intraface/CMakeFiles/nosePosition.dir/build.make
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libcv_bridge.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libimage_transport.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libmessage_filters.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libclass_loader.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/libPocoFoundation.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libdl.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libroslib.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libroscpp.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/librosconsole.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/liblog4cxx.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libeigen_conversions.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/liborocos-kdl.so.1.3.0
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/librostime.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libcpp_common.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /home/gauri/mrsd_project/robographers_teamg/src/intraface/lib/libintraface_core126.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /home/gauri/mrsd_project/robographers_teamg/src/intraface/lib/libintraface_emo126.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /home/gauri/mrsd_project/robographers_teamg/src/intraface/lib/libintraface_gaze126.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libclass_loader.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/libPocoFoundation.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libdl.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libroslib.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libroscpp.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/librosconsole.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/liblog4cxx.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libeigen_conversions.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/liborocos-kdl.so.1.3.0
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/librostime.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /opt/ros/indigo/lib/libcpp_common.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /home/gauri/mrsd_project/robographers_teamg/src/intraface/lib/libintraface_core126.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /home/gauri/mrsd_project/robographers_teamg/src/intraface/lib/libintraface_emo126.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /home/gauri/mrsd_project/robographers_teamg/src/intraface/lib/libintraface_gaze126.so
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition: intraface/CMakeFiles/nosePosition.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition"
	cd /home/gauri/mrsd_project/robographers_teamg/build/intraface && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nosePosition.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
intraface/CMakeFiles/nosePosition.dir/build: /home/gauri/mrsd_project/robographers_teamg/devel/lib/intraface/nosePosition
.PHONY : intraface/CMakeFiles/nosePosition.dir/build

intraface/CMakeFiles/nosePosition.dir/requires: intraface/CMakeFiles/nosePosition.dir/src/noseDetect.cpp.o.requires
.PHONY : intraface/CMakeFiles/nosePosition.dir/requires

intraface/CMakeFiles/nosePosition.dir/clean:
	cd /home/gauri/mrsd_project/robographers_teamg/build/intraface && $(CMAKE_COMMAND) -P CMakeFiles/nosePosition.dir/cmake_clean.cmake
.PHONY : intraface/CMakeFiles/nosePosition.dir/clean

intraface/CMakeFiles/nosePosition.dir/depend:
	cd /home/gauri/mrsd_project/robographers_teamg/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gauri/mrsd_project/robographers_teamg/src /home/gauri/mrsd_project/robographers_teamg/src/intraface /home/gauri/mrsd_project/robographers_teamg/build /home/gauri/mrsd_project/robographers_teamg/build/intraface /home/gauri/mrsd_project/robographers_teamg/build/intraface/CMakeFiles/nosePosition.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : intraface/CMakeFiles/nosePosition.dir/depend

