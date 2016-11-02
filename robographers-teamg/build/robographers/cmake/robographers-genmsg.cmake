# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robographers: 2 messages, 0 services")

set(MSG_I_FLAGS "-Irobographers:/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robographers_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTag.msg" NAME_WE)
add_custom_target(_robographers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robographers" "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTag.msg" ""
)

get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTagList.msg" NAME_WE)
add_custom_target(_robographers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robographers" "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTagList.msg" "robographers/AprilTag"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robographers
  "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robographers
)
_generate_msg_cpp(robographers
  "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTagList.msg"
  "${MSG_I_FLAGS}"
  "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTag.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robographers
)

### Generating Services

### Generating Module File
_generate_module_cpp(robographers
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robographers
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robographers_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robographers_generate_messages robographers_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTag.msg" NAME_WE)
add_dependencies(robographers_generate_messages_cpp _robographers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTagList.msg" NAME_WE)
add_dependencies(robographers_generate_messages_cpp _robographers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robographers_gencpp)
add_dependencies(robographers_gencpp robographers_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robographers_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robographers
  "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robographers
)
_generate_msg_lisp(robographers
  "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTagList.msg"
  "${MSG_I_FLAGS}"
  "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTag.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robographers
)

### Generating Services

### Generating Module File
_generate_module_lisp(robographers
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robographers
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robographers_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robographers_generate_messages robographers_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTag.msg" NAME_WE)
add_dependencies(robographers_generate_messages_lisp _robographers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTagList.msg" NAME_WE)
add_dependencies(robographers_generate_messages_lisp _robographers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robographers_genlisp)
add_dependencies(robographers_genlisp robographers_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robographers_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robographers
  "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robographers
)
_generate_msg_py(robographers
  "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTagList.msg"
  "${MSG_I_FLAGS}"
  "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTag.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robographers
)

### Generating Services

### Generating Module File
_generate_module_py(robographers
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robographers
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robographers_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robographers_generate_messages robographers_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTag.msg" NAME_WE)
add_dependencies(robographers_generate_messages_py _robographers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/robographers/msg/AprilTagList.msg" NAME_WE)
add_dependencies(robographers_generate_messages_py _robographers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robographers_genpy)
add_dependencies(robographers_genpy robographers_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robographers_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robographers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robographers
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(robographers_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(robographers_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robographers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robographers
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(robographers_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(robographers_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robographers)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robographers\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robographers
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(robographers_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(robographers_generate_messages_py geometry_msgs_generate_messages_py)
