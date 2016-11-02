# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "intraface: 4 messages, 0 services")

set(MSG_I_FLAGS "-Iintraface:/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(intraface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Landmarks.msg" NAME_WE)
add_custom_target(_intraface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "intraface" "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Landmarks.msg" ""
)

get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotions.msg" NAME_WE)
add_custom_target(_intraface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "intraface" "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotions.msg" "intraface/Emotion:std_msgs/Header"
)

get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotion.msg" NAME_WE)
add_custom_target(_intraface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "intraface" "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotion.msg" ""
)

get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/IrisGaze.msg" NAME_WE)
add_custom_target(_intraface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "intraface" "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/IrisGaze.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(intraface
  "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotions.msg"
  "${MSG_I_FLAGS}"
  "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intraface
)
_generate_msg_cpp(intraface
  "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/IrisGaze.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intraface
)
_generate_msg_cpp(intraface
  "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intraface
)
_generate_msg_cpp(intraface
  "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Landmarks.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intraface
)

### Generating Services

### Generating Module File
_generate_module_cpp(intraface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intraface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(intraface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(intraface_generate_messages intraface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Landmarks.msg" NAME_WE)
add_dependencies(intraface_generate_messages_cpp _intraface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotions.msg" NAME_WE)
add_dependencies(intraface_generate_messages_cpp _intraface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotion.msg" NAME_WE)
add_dependencies(intraface_generate_messages_cpp _intraface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/IrisGaze.msg" NAME_WE)
add_dependencies(intraface_generate_messages_cpp _intraface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intraface_gencpp)
add_dependencies(intraface_gencpp intraface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intraface_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(intraface
  "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotions.msg"
  "${MSG_I_FLAGS}"
  "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intraface
)
_generate_msg_lisp(intraface
  "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/IrisGaze.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intraface
)
_generate_msg_lisp(intraface
  "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intraface
)
_generate_msg_lisp(intraface
  "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Landmarks.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intraface
)

### Generating Services

### Generating Module File
_generate_module_lisp(intraface
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intraface
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(intraface_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(intraface_generate_messages intraface_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Landmarks.msg" NAME_WE)
add_dependencies(intraface_generate_messages_lisp _intraface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotions.msg" NAME_WE)
add_dependencies(intraface_generate_messages_lisp _intraface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotion.msg" NAME_WE)
add_dependencies(intraface_generate_messages_lisp _intraface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/IrisGaze.msg" NAME_WE)
add_dependencies(intraface_generate_messages_lisp _intraface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intraface_genlisp)
add_dependencies(intraface_genlisp intraface_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intraface_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(intraface
  "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotions.msg"
  "${MSG_I_FLAGS}"
  "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intraface
)
_generate_msg_py(intraface
  "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/IrisGaze.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intraface
)
_generate_msg_py(intraface
  "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intraface
)
_generate_msg_py(intraface
  "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Landmarks.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intraface
)

### Generating Services

### Generating Module File
_generate_module_py(intraface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intraface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(intraface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(intraface_generate_messages intraface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Landmarks.msg" NAME_WE)
add_dependencies(intraface_generate_messages_py _intraface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotions.msg" NAME_WE)
add_dependencies(intraface_generate_messages_py _intraface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/Emotion.msg" NAME_WE)
add_dependencies(intraface_generate_messages_py _intraface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gauri/mrsd_project/robographers_teamg/src/intraface/msg/IrisGaze.msg" NAME_WE)
add_dependencies(intraface_generate_messages_py _intraface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intraface_genpy)
add_dependencies(intraface_genpy intraface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intraface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intraface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intraface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(intraface_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(intraface_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intraface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intraface
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(intraface_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(intraface_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intraface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intraface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intraface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(intraface_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(intraface_generate_messages_py geometry_msgs_generate_messages_py)
