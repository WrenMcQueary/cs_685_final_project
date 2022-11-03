# Install script for directory: /home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wren/Documents/CS685/final_project/catkin_ws/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mira_communication/msg" TYPE FILE FILES
    "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraAngles.msg"
    "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraCoords.msg"
    "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetAngles.msg"
    "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraSetCoords.msg"
    "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraGripperStatus.msg"
    "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/msg/MiraPumpStatus.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mira_communication/srv" TYPE FILE FILES
    "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetAngles.srv"
    "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetAngles.srv"
    "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GetCoords.srv"
    "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/SetCoords.srv"
    "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/GripperStatus.srv"
    "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/srv/PumpStatus.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mira_communication/cmake" TYPE FILE FILES "/home/wren/Documents/CS685/final_project/catkin_ws/build/mycobot_ros/Mira/mira_communication/catkin_generated/installspace/mira_communication-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/wren/Documents/CS685/final_project/catkin_ws/devel/include/mira_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/wren/Documents/CS685/final_project/catkin_ws/devel/share/roseus/ros/mira_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/wren/Documents/CS685/final_project/catkin_ws/devel/share/common-lisp/ros/mira_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/wren/Documents/CS685/final_project/catkin_ws/devel/share/gennodejs/ros/mira_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/bin/python3" -m compileall "/home/wren/Documents/CS685/final_project/catkin_ws/devel/lib/python3/dist-packages/mira_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/wren/Documents/CS685/final_project/catkin_ws/devel/lib/python3/dist-packages/mira_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wren/Documents/CS685/final_project/catkin_ws/build/mycobot_ros/Mira/mira_communication/catkin_generated/installspace/mira_communication.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mira_communication/cmake" TYPE FILE FILES "/home/wren/Documents/CS685/final_project/catkin_ws/build/mycobot_ros/Mira/mira_communication/catkin_generated/installspace/mira_communication-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mira_communication/cmake" TYPE FILE FILES
    "/home/wren/Documents/CS685/final_project/catkin_ws/build/mycobot_ros/Mira/mira_communication/catkin_generated/installspace/mira_communicationConfig.cmake"
    "/home/wren/Documents/CS685/final_project/catkin_ws/build/mycobot_ros/Mira/mira_communication/catkin_generated/installspace/mira_communicationConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mira_communication" TYPE FILE FILES "/home/wren/Documents/CS685/final_project/catkin_ws/src/mycobot_ros/Mira/mira_communication/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mira_communication" TYPE PROGRAM FILES "/home/wren/Documents/CS685/final_project/catkin_ws/build/mycobot_ros/Mira/mira_communication/catkin_generated/installspace/mira_services.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mira_communication" TYPE PROGRAM FILES "/home/wren/Documents/CS685/final_project/catkin_ws/build/mycobot_ros/Mira/mira_communication/catkin_generated/installspace/mira_topics.py")
endif()
