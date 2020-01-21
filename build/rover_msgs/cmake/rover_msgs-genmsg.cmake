# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rover_msgs: 6 messages, 0 services")

set(MSG_I_FLAGS "-Irover_msgs:/home/joshashley/Projects/LunaRover/src/rover_msgs/msg;-Istd_msgs:/home/joshashley/ros_catkin_ws/install_isolated/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rover_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDReading.msg" NAME_WE)
add_custom_target(_rover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rover_msgs" "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDReading.msg" ""
)

get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigArmSetting.msg" NAME_WE)
add_custom_target(_rover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rover_msgs" "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigArmSetting.msg" ""
)

get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DepthCamReading.msg" NAME_WE)
add_custom_target(_rover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rover_msgs" "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DepthCamReading.msg" ""
)

get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/TelemReading.msg" NAME_WE)
add_custom_target(_rover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rover_msgs" "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/TelemReading.msg" ""
)

get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigMotorSetting.msg" NAME_WE)
add_custom_target(_rover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rover_msgs" "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigMotorSetting.msg" ""
)

get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDSetting.msg" NAME_WE)
add_custom_target(_rover_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rover_msgs" "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDSetting.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_msgs
)
_generate_msg_cpp(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigArmSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_msgs
)
_generate_msg_cpp(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DepthCamReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_msgs
)
_generate_msg_cpp(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/TelemReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_msgs
)
_generate_msg_cpp(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigMotorSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_msgs
)
_generate_msg_cpp(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(rover_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rover_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rover_msgs_generate_messages rover_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDReading.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_cpp _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigArmSetting.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_cpp _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DepthCamReading.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_cpp _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/TelemReading.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_cpp _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigMotorSetting.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_cpp _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDSetting.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_cpp _rover_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rover_msgs_gencpp)
add_dependencies(rover_msgs_gencpp rover_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rover_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_msgs
)
_generate_msg_eus(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigArmSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_msgs
)
_generate_msg_eus(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DepthCamReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_msgs
)
_generate_msg_eus(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/TelemReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_msgs
)
_generate_msg_eus(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigMotorSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_msgs
)
_generate_msg_eus(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(rover_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rover_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rover_msgs_generate_messages rover_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDReading.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_eus _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigArmSetting.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_eus _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DepthCamReading.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_eus _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/TelemReading.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_eus _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigMotorSetting.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_eus _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDSetting.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_eus _rover_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rover_msgs_geneus)
add_dependencies(rover_msgs_geneus rover_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rover_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_msgs
)
_generate_msg_lisp(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigArmSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_msgs
)
_generate_msg_lisp(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DepthCamReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_msgs
)
_generate_msg_lisp(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/TelemReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_msgs
)
_generate_msg_lisp(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigMotorSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_msgs
)
_generate_msg_lisp(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(rover_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rover_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rover_msgs_generate_messages rover_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDReading.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_lisp _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigArmSetting.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_lisp _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DepthCamReading.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_lisp _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/TelemReading.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_lisp _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigMotorSetting.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_lisp _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDSetting.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_lisp _rover_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rover_msgs_genlisp)
add_dependencies(rover_msgs_genlisp rover_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rover_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_msgs
)
_generate_msg_nodejs(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigArmSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_msgs
)
_generate_msg_nodejs(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DepthCamReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_msgs
)
_generate_msg_nodejs(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/TelemReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_msgs
)
_generate_msg_nodejs(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigMotorSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_msgs
)
_generate_msg_nodejs(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rover_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rover_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rover_msgs_generate_messages rover_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDReading.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_nodejs _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigArmSetting.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_nodejs _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DepthCamReading.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_nodejs _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/TelemReading.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_nodejs _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigMotorSetting.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_nodejs _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDSetting.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_nodejs _rover_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rover_msgs_gennodejs)
add_dependencies(rover_msgs_gennodejs rover_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rover_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_msgs
)
_generate_msg_py(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigArmSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_msgs
)
_generate_msg_py(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DepthCamReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_msgs
)
_generate_msg_py(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/TelemReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_msgs
)
_generate_msg_py(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigMotorSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_msgs
)
_generate_msg_py(rover_msgs
  "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(rover_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rover_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rover_msgs_generate_messages rover_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDReading.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_py _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigArmSetting.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_py _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DepthCamReading.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_py _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/TelemReading.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_py _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/DigMotorSetting.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_py _rover_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshashley/Projects/LunaRover/src/rover_msgs/msg/FWDSetting.msg" NAME_WE)
add_dependencies(rover_msgs_generate_messages_py _rover_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rover_msgs_genpy)
add_dependencies(rover_msgs_genpy rover_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rover_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rover_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rover_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rover_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rover_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rover_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rover_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rover_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rover_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rover_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rover_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
