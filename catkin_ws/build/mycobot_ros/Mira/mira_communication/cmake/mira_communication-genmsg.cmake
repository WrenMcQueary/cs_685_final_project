# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mira_communication: 6 messages, 6 services")

set(MSG_I_FLAGS "-Imira_communication:/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mira_communication_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraAngles.msg" NAME_WE)
add_custom_target(_mira_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mira_communication" "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraAngles.msg" ""
)

get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraCoords.msg" NAME_WE)
add_custom_target(_mira_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mira_communication" "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraCoords.msg" ""
)

get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetAngles.msg" NAME_WE)
add_custom_target(_mira_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mira_communication" "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetAngles.msg" ""
)

get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetCoords.msg" NAME_WE)
add_custom_target(_mira_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mira_communication" "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetCoords.msg" ""
)

get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraGripperStatus.msg" NAME_WE)
add_custom_target(_mira_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mira_communication" "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraGripperStatus.msg" ""
)

get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraPumpStatus.msg" NAME_WE)
add_custom_target(_mira_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mira_communication" "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraPumpStatus.msg" ""
)

get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetAngles.srv" NAME_WE)
add_custom_target(_mira_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mira_communication" "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetAngles.srv" ""
)

get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetAngles.srv" NAME_WE)
add_custom_target(_mira_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mira_communication" "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetAngles.srv" ""
)

get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetCoords.srv" NAME_WE)
add_custom_target(_mira_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mira_communication" "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetCoords.srv" ""
)

get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetCoords.srv" NAME_WE)
add_custom_target(_mira_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mira_communication" "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetCoords.srv" ""
)

get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GripperStatus.srv" NAME_WE)
add_custom_target(_mira_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mira_communication" "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GripperStatus.srv" ""
)

get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/PumpStatus.srv" NAME_WE)
add_custom_target(_mira_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mira_communication" "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/PumpStatus.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mira_communication
)
_generate_msg_cpp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraCoords.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mira_communication
)
_generate_msg_cpp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mira_communication
)
_generate_msg_cpp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetCoords.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mira_communication
)
_generate_msg_cpp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraGripperStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mira_communication
)
_generate_msg_cpp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraPumpStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mira_communication
)

### Generating Services
_generate_srv_cpp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mira_communication
)
_generate_srv_cpp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mira_communication
)
_generate_srv_cpp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetCoords.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mira_communication
)
_generate_srv_cpp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetCoords.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mira_communication
)
_generate_srv_cpp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GripperStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mira_communication
)
_generate_srv_cpp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/PumpStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mira_communication
)

### Generating Module File
_generate_module_cpp(mira_communication
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mira_communication
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mira_communication_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mira_communication_generate_messages mira_communication_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraAngles.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_cpp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraCoords.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_cpp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetAngles.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_cpp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetCoords.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_cpp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraGripperStatus.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_cpp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraPumpStatus.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_cpp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetAngles.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_cpp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetAngles.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_cpp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetCoords.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_cpp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetCoords.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_cpp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GripperStatus.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_cpp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/PumpStatus.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_cpp _mira_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mira_communication_gencpp)
add_dependencies(mira_communication_gencpp mira_communication_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mira_communication_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mira_communication
)
_generate_msg_eus(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraCoords.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mira_communication
)
_generate_msg_eus(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mira_communication
)
_generate_msg_eus(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetCoords.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mira_communication
)
_generate_msg_eus(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraGripperStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mira_communication
)
_generate_msg_eus(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraPumpStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mira_communication
)

### Generating Services
_generate_srv_eus(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mira_communication
)
_generate_srv_eus(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mira_communication
)
_generate_srv_eus(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetCoords.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mira_communication
)
_generate_srv_eus(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetCoords.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mira_communication
)
_generate_srv_eus(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GripperStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mira_communication
)
_generate_srv_eus(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/PumpStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mira_communication
)

### Generating Module File
_generate_module_eus(mira_communication
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mira_communication
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mira_communication_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mira_communication_generate_messages mira_communication_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraAngles.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_eus _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraCoords.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_eus _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetAngles.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_eus _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetCoords.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_eus _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraGripperStatus.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_eus _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraPumpStatus.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_eus _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetAngles.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_eus _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetAngles.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_eus _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetCoords.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_eus _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetCoords.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_eus _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GripperStatus.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_eus _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/PumpStatus.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_eus _mira_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mira_communication_geneus)
add_dependencies(mira_communication_geneus mira_communication_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mira_communication_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mira_communication
)
_generate_msg_lisp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraCoords.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mira_communication
)
_generate_msg_lisp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mira_communication
)
_generate_msg_lisp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetCoords.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mira_communication
)
_generate_msg_lisp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraGripperStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mira_communication
)
_generate_msg_lisp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraPumpStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mira_communication
)

### Generating Services
_generate_srv_lisp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mira_communication
)
_generate_srv_lisp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mira_communication
)
_generate_srv_lisp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetCoords.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mira_communication
)
_generate_srv_lisp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetCoords.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mira_communication
)
_generate_srv_lisp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GripperStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mira_communication
)
_generate_srv_lisp(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/PumpStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mira_communication
)

### Generating Module File
_generate_module_lisp(mira_communication
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mira_communication
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mira_communication_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mira_communication_generate_messages mira_communication_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraAngles.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_lisp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraCoords.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_lisp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetAngles.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_lisp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetCoords.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_lisp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraGripperStatus.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_lisp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraPumpStatus.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_lisp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetAngles.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_lisp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetAngles.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_lisp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetCoords.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_lisp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetCoords.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_lisp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GripperStatus.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_lisp _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/PumpStatus.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_lisp _mira_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mira_communication_genlisp)
add_dependencies(mira_communication_genlisp mira_communication_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mira_communication_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mira_communication
)
_generate_msg_nodejs(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraCoords.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mira_communication
)
_generate_msg_nodejs(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mira_communication
)
_generate_msg_nodejs(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetCoords.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mira_communication
)
_generate_msg_nodejs(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraGripperStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mira_communication
)
_generate_msg_nodejs(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraPumpStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mira_communication
)

### Generating Services
_generate_srv_nodejs(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mira_communication
)
_generate_srv_nodejs(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mira_communication
)
_generate_srv_nodejs(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetCoords.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mira_communication
)
_generate_srv_nodejs(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetCoords.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mira_communication
)
_generate_srv_nodejs(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GripperStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mira_communication
)
_generate_srv_nodejs(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/PumpStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mira_communication
)

### Generating Module File
_generate_module_nodejs(mira_communication
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mira_communication
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mira_communication_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mira_communication_generate_messages mira_communication_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraAngles.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_nodejs _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraCoords.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_nodejs _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetAngles.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_nodejs _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetCoords.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_nodejs _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraGripperStatus.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_nodejs _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraPumpStatus.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_nodejs _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetAngles.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_nodejs _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetAngles.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_nodejs _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetCoords.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_nodejs _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetCoords.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_nodejs _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GripperStatus.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_nodejs _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/PumpStatus.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_nodejs _mira_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mira_communication_gennodejs)
add_dependencies(mira_communication_gennodejs mira_communication_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mira_communication_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication
)
_generate_msg_py(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraCoords.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication
)
_generate_msg_py(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication
)
_generate_msg_py(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetCoords.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication
)
_generate_msg_py(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraGripperStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication
)
_generate_msg_py(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraPumpStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication
)

### Generating Services
_generate_srv_py(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication
)
_generate_srv_py(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication
)
_generate_srv_py(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetCoords.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication
)
_generate_srv_py(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetCoords.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication
)
_generate_srv_py(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GripperStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication
)
_generate_srv_py(mira_communication
  "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/PumpStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication
)

### Generating Module File
_generate_module_py(mira_communication
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mira_communication_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mira_communication_generate_messages mira_communication_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraAngles.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_py _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraCoords.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_py _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetAngles.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_py _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetCoords.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_py _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraGripperStatus.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_py _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraPumpStatus.msg" NAME_WE)
add_dependencies(mira_communication_generate_messages_py _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetAngles.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_py _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetAngles.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_py _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetCoords.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_py _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetCoords.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_py _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GripperStatus.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_py _mira_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/PumpStatus.srv" NAME_WE)
add_dependencies(mira_communication_generate_messages_py _mira_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mira_communication_genpy)
add_dependencies(mira_communication_genpy mira_communication_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mira_communication_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mira_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mira_communication
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mira_communication_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mira_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mira_communication
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mira_communication_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mira_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mira_communication
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mira_communication_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mira_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mira_communication
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mira_communication_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication)
  install(CODE "execute_process(COMMAND \"/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mira_communication
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mira_communication_generate_messages_py std_msgs_generate_messages_py)
endif()
