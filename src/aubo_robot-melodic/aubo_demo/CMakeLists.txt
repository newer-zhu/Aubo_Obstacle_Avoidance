cmake_minimum_required(VERSION 2.8.3)
project(aubo_demo)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

if("$ENV{ROS_DISTRO}" STREQUAL "melodic")
    find_package(catkin REQUIRED COMPONENTS
      roscpp
      rospy
      std_msgs
      moveit_core
      moveit_visual_tools
      moveit_ros_planning
      moveit_ros_planning_interface
      pluginlib
      geometric_shapes
      pcl_ros
      pcl_conversions
      rosbag
      tf
      tf2_ros
      #tf2_eigen
      tf2_geometry_msgs
      image_transport
      cv_bridge
      sensor_msgs
      message_filters
    )
    Message(STATUS "<<<<<<<<<<<<<<<<<<<<<<<<<Note: Find Package for melodic")
endif()

if("$ENV{ROS_DISTRO}" STREQUAL "indigo")
    find_package(catkin REQUIRED COMPONENTS
      roscpp
      rospy
      std_msgs
      moveit_core
      moveit_ros_planning
      moveit_ros_planning_interface
      pluginlib
      geometric_shapes
      pcl_ros
      pcl_conversions
      rosbag
      tf
      tf2_ros
      #tf2_eigen
      tf2_geometry_msgs
    )
    Message(STATUS "<<<<<<<<<<<<<<<<<<<<<<<<<Note: Find Package for  for indigo")
endif()





###################################
## catkin specific configuration ##
###################################

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES aubo_demo
#  CATKIN_DEPENDS roscpp rospy std_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########

include_directories(
# include
  ${PCL_INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
)
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

if("$ENV{ROS_DISTRO}" STREQUAL "melodic")
    ## Declare a C++ executable
    ## With catkin_make MoveGroupInterface_To_Kinetic package is built within a single CMake context
    ## The recommended prefix ensures that target names across packages don't collide
    add_executable(MoveGroupInterface_To_Melodic src/MoveGroupInterface_To_Melodic.cpp)
    ## Specify libraries to link a library or executable target against
    target_link_libraries(MoveGroupInterface_To_Melodic ${PCL_INCLUDE_DIRS} ${catkin_LIBRARIES} ${Boost_LIBRARIES})
    Message(STATUS "<<<<<<<<<<<<<<<<<<<<<<<<<Note: build aubo_demo node for Melodic")
endif()

if("$ENV{ROS_DISTRO}" STREQUAL "indigo")
    ## Declare a C++ executable
    ## With catkin_make MoveGroupInterface_To_Kinetic package is built within a single CMake context
    ## The recommended prefix ensures that target names across packages don't collide
    add_executable(MoveGroupInterface_To_Indigo src/MoveGroupInterface_To_Indigo.cpp)

    ## Specify libraries to link a library or executable target against
    target_link_libraries(MoveGroupInterface_To_Indigo ${catkin_LIBRARIES} ${Boost_LIBRARIES})

    Message(STATUS "<<<<<<<<<<<<<<<<<<<<<<<<<Note:build aubo_demo node for indigo")
endif()





