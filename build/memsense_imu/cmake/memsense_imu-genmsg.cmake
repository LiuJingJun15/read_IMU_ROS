# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "memsense_imu: 1 messages, 0 services")

set(MSG_I_FLAGS "-Imemsense_imu:/home/pi/Desktop/IMU/catkin_workspace/src/memsense_imu/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(memsense_imu_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/Desktop/IMU/catkin_workspace/src/memsense_imu/msg/ImuMAG.msg" NAME_WE)
add_custom_target(_memsense_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "memsense_imu" "/home/pi/Desktop/IMU/catkin_workspace/src/memsense_imu/msg/ImuMAG.msg" "std_msgs/Header:geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(memsense_imu
  "/home/pi/Desktop/IMU/catkin_workspace/src/memsense_imu/msg/ImuMAG.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/memsense_imu
)

### Generating Services

### Generating Module File
_generate_module_cpp(memsense_imu
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/memsense_imu
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(memsense_imu_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(memsense_imu_generate_messages memsense_imu_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/Desktop/IMU/catkin_workspace/src/memsense_imu/msg/ImuMAG.msg" NAME_WE)
add_dependencies(memsense_imu_generate_messages_cpp _memsense_imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(memsense_imu_gencpp)
add_dependencies(memsense_imu_gencpp memsense_imu_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS memsense_imu_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(memsense_imu
  "/home/pi/Desktop/IMU/catkin_workspace/src/memsense_imu/msg/ImuMAG.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/memsense_imu
)

### Generating Services

### Generating Module File
_generate_module_eus(memsense_imu
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/memsense_imu
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(memsense_imu_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(memsense_imu_generate_messages memsense_imu_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/Desktop/IMU/catkin_workspace/src/memsense_imu/msg/ImuMAG.msg" NAME_WE)
add_dependencies(memsense_imu_generate_messages_eus _memsense_imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(memsense_imu_geneus)
add_dependencies(memsense_imu_geneus memsense_imu_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS memsense_imu_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(memsense_imu
  "/home/pi/Desktop/IMU/catkin_workspace/src/memsense_imu/msg/ImuMAG.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/memsense_imu
)

### Generating Services

### Generating Module File
_generate_module_lisp(memsense_imu
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/memsense_imu
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(memsense_imu_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(memsense_imu_generate_messages memsense_imu_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/Desktop/IMU/catkin_workspace/src/memsense_imu/msg/ImuMAG.msg" NAME_WE)
add_dependencies(memsense_imu_generate_messages_lisp _memsense_imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(memsense_imu_genlisp)
add_dependencies(memsense_imu_genlisp memsense_imu_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS memsense_imu_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(memsense_imu
  "/home/pi/Desktop/IMU/catkin_workspace/src/memsense_imu/msg/ImuMAG.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/memsense_imu
)

### Generating Services

### Generating Module File
_generate_module_nodejs(memsense_imu
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/memsense_imu
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(memsense_imu_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(memsense_imu_generate_messages memsense_imu_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/Desktop/IMU/catkin_workspace/src/memsense_imu/msg/ImuMAG.msg" NAME_WE)
add_dependencies(memsense_imu_generate_messages_nodejs _memsense_imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(memsense_imu_gennodejs)
add_dependencies(memsense_imu_gennodejs memsense_imu_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS memsense_imu_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(memsense_imu
  "/home/pi/Desktop/IMU/catkin_workspace/src/memsense_imu/msg/ImuMAG.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/memsense_imu
)

### Generating Services

### Generating Module File
_generate_module_py(memsense_imu
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/memsense_imu
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(memsense_imu_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(memsense_imu_generate_messages memsense_imu_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/Desktop/IMU/catkin_workspace/src/memsense_imu/msg/ImuMAG.msg" NAME_WE)
add_dependencies(memsense_imu_generate_messages_py _memsense_imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(memsense_imu_genpy)
add_dependencies(memsense_imu_genpy memsense_imu_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS memsense_imu_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/memsense_imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/memsense_imu
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(memsense_imu_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(memsense_imu_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/memsense_imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/memsense_imu
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(memsense_imu_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(memsense_imu_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/memsense_imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/memsense_imu
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(memsense_imu_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(memsense_imu_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/memsense_imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/memsense_imu
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(memsense_imu_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(memsense_imu_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/memsense_imu)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/memsense_imu\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/memsense_imu
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(memsense_imu_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(memsense_imu_generate_messages_py geometry_msgs_generate_messages_py)
endif()
