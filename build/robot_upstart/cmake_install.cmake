# Install script for directory: /home/pi/Desktop/IMU/catkin_workspace/src/robot_upstart

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/pi/Desktop/IMU/catkin_workspace/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/pi/Desktop/IMU/catkin_workspace/build/robot_upstart/catkin_generated/installspace/robot_upstart.pc")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_upstart/cmake" TYPE FILE FILES
    "/home/pi/Desktop/IMU/catkin_workspace/build/robot_upstart/catkin_generated/installspace/robot_upstartConfig.cmake"
    "/home/pi/Desktop/IMU/catkin_workspace/build/robot_upstart/catkin_generated/installspace/robot_upstartConfig-version.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_upstart" TYPE FILE FILES "/home/pi/Desktop/IMU/catkin_workspace/src/robot_upstart/package.xml")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/pi/Desktop/IMU/catkin_workspace/build/robot_upstart/catkin_generated/safe_execute_install.cmake")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/robot_upstart" TYPE PROGRAM FILES
    "/home/pi/Desktop/IMU/catkin_workspace/src/robot_upstart/scripts/getifip"
    "/home/pi/Desktop/IMU/catkin_workspace/src/robot_upstart/scripts/install"
    "/home/pi/Desktop/IMU/catkin_workspace/src/robot_upstart/scripts/mklaunch"
    "/home/pi/Desktop/IMU/catkin_workspace/src/robot_upstart/scripts/mkxacro"
    "/home/pi/Desktop/IMU/catkin_workspace/src/robot_upstart/scripts/mutate_files"
    "/home/pi/Desktop/IMU/catkin_workspace/src/robot_upstart/scripts/uninstall"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_upstart" TYPE DIRECTORY FILES "/home/pi/Desktop/IMU/catkin_workspace/src/robot_upstart/templates")
endif()

