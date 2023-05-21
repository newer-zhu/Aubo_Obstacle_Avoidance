# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "aubo_msgs: 6 messages, 4 services")

set(MSG_I_FLAGS "-Iaubo_msgs:/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(aubo_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetFK.srv" NAME_WE)
add_custom_target(_aubo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aubo_msgs" "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetFK.srv" ""
)

get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/IOState.msg" NAME_WE)
add_custom_target(_aubo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aubo_msgs" "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/IOState.msg" "aubo_msgs/Analog:aubo_msgs/Digital"
)

get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/TraPoint.msg" NAME_WE)
add_custom_target(_aubo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aubo_msgs" "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/TraPoint.msg" ""
)

get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetPayload.srv" NAME_WE)
add_custom_target(_aubo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aubo_msgs" "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetPayload.srv" ""
)

get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetIO.srv" NAME_WE)
add_custom_target(_aubo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aubo_msgs" "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetIO.srv" ""
)

get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/GoalPoint.msg" NAME_WE)
add_custom_target(_aubo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aubo_msgs" "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/GoalPoint.msg" ""
)

get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg" NAME_WE)
add_custom_target(_aubo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aubo_msgs" "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg" ""
)

get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg" NAME_WE)
add_custom_target(_aubo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aubo_msgs" "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg" ""
)

get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetIK.srv" NAME_WE)
add_custom_target(_aubo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aubo_msgs" "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetIK.srv" ""
)

get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/JointPos.msg" NAME_WE)
add_custom_target(_aubo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aubo_msgs" "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/JointPos.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/IOState.msg"
  "${MSG_I_FLAGS}"
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg;/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aubo_msgs
)
_generate_msg_cpp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/TraPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aubo_msgs
)
_generate_msg_cpp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/GoalPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aubo_msgs
)
_generate_msg_cpp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aubo_msgs
)
_generate_msg_cpp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aubo_msgs
)
_generate_msg_cpp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/JointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aubo_msgs
)

### Generating Services
_generate_srv_cpp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aubo_msgs
)
_generate_srv_cpp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aubo_msgs
)
_generate_srv_cpp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aubo_msgs
)
_generate_srv_cpp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aubo_msgs
)

### Generating Module File
_generate_module_cpp(aubo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aubo_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(aubo_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(aubo_msgs_generate_messages aubo_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetFK.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_cpp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/IOState.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_cpp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/TraPoint.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_cpp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetPayload.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_cpp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetIO.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_cpp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/GoalPoint.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_cpp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_cpp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_cpp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetIK.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_cpp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/JointPos.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_cpp _aubo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aubo_msgs_gencpp)
add_dependencies(aubo_msgs_gencpp aubo_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aubo_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/IOState.msg"
  "${MSG_I_FLAGS}"
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg;/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aubo_msgs
)
_generate_msg_eus(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/TraPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aubo_msgs
)
_generate_msg_eus(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/GoalPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aubo_msgs
)
_generate_msg_eus(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aubo_msgs
)
_generate_msg_eus(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aubo_msgs
)
_generate_msg_eus(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/JointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aubo_msgs
)

### Generating Services
_generate_srv_eus(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aubo_msgs
)
_generate_srv_eus(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aubo_msgs
)
_generate_srv_eus(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aubo_msgs
)
_generate_srv_eus(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aubo_msgs
)

### Generating Module File
_generate_module_eus(aubo_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aubo_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(aubo_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(aubo_msgs_generate_messages aubo_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetFK.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_eus _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/IOState.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_eus _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/TraPoint.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_eus _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetPayload.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_eus _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetIO.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_eus _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/GoalPoint.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_eus _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_eus _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_eus _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetIK.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_eus _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/JointPos.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_eus _aubo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aubo_msgs_geneus)
add_dependencies(aubo_msgs_geneus aubo_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aubo_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/IOState.msg"
  "${MSG_I_FLAGS}"
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg;/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aubo_msgs
)
_generate_msg_lisp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/TraPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aubo_msgs
)
_generate_msg_lisp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/GoalPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aubo_msgs
)
_generate_msg_lisp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aubo_msgs
)
_generate_msg_lisp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aubo_msgs
)
_generate_msg_lisp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/JointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aubo_msgs
)

### Generating Services
_generate_srv_lisp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aubo_msgs
)
_generate_srv_lisp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aubo_msgs
)
_generate_srv_lisp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aubo_msgs
)
_generate_srv_lisp(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aubo_msgs
)

### Generating Module File
_generate_module_lisp(aubo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aubo_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(aubo_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(aubo_msgs_generate_messages aubo_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetFK.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_lisp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/IOState.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_lisp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/TraPoint.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_lisp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetPayload.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_lisp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetIO.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_lisp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/GoalPoint.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_lisp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_lisp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_lisp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetIK.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_lisp _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/JointPos.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_lisp _aubo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aubo_msgs_genlisp)
add_dependencies(aubo_msgs_genlisp aubo_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aubo_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/IOState.msg"
  "${MSG_I_FLAGS}"
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg;/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aubo_msgs
)
_generate_msg_nodejs(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/TraPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aubo_msgs
)
_generate_msg_nodejs(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/GoalPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aubo_msgs
)
_generate_msg_nodejs(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aubo_msgs
)
_generate_msg_nodejs(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aubo_msgs
)
_generate_msg_nodejs(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/JointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aubo_msgs
)

### Generating Services
_generate_srv_nodejs(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aubo_msgs
)
_generate_srv_nodejs(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aubo_msgs
)
_generate_srv_nodejs(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aubo_msgs
)
_generate_srv_nodejs(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aubo_msgs
)

### Generating Module File
_generate_module_nodejs(aubo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aubo_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(aubo_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(aubo_msgs_generate_messages aubo_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetFK.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_nodejs _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/IOState.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_nodejs _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/TraPoint.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_nodejs _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetPayload.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_nodejs _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetIO.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_nodejs _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/GoalPoint.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_nodejs _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_nodejs _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_nodejs _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetIK.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_nodejs _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/JointPos.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_nodejs _aubo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aubo_msgs_gennodejs)
add_dependencies(aubo_msgs_gennodejs aubo_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aubo_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/IOState.msg"
  "${MSG_I_FLAGS}"
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg;/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aubo_msgs
)
_generate_msg_py(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/TraPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aubo_msgs
)
_generate_msg_py(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/GoalPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aubo_msgs
)
_generate_msg_py(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aubo_msgs
)
_generate_msg_py(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aubo_msgs
)
_generate_msg_py(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/JointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aubo_msgs
)

### Generating Services
_generate_srv_py(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aubo_msgs
)
_generate_srv_py(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aubo_msgs
)
_generate_srv_py(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aubo_msgs
)
_generate_srv_py(aubo_msgs
  "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aubo_msgs
)

### Generating Module File
_generate_module_py(aubo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aubo_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(aubo_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(aubo_msgs_generate_messages aubo_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetFK.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_py _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/IOState.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_py _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/TraPoint.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_py _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetPayload.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_py _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/SetIO.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_py _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/GoalPoint.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_py _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Digital.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_py _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/Analog.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_py _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/srv/GetIK.srv" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_py _aubo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhu/aubo_ws/src/aubo_robot-melodic/aubo_msgs/msg/JointPos.msg" NAME_WE)
add_dependencies(aubo_msgs_generate_messages_py _aubo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aubo_msgs_genpy)
add_dependencies(aubo_msgs_genpy aubo_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aubo_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aubo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aubo_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(aubo_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aubo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aubo_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(aubo_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aubo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aubo_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(aubo_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aubo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aubo_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(aubo_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aubo_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aubo_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aubo_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(aubo_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
