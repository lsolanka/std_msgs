cmake_minimum_required(VERSION 2.8.3)

include(cmake/HunterGate.cmake)
HunterGate(
  URL "https://github.com/ruslo/hunter/archive/v0.21.3.tar.gz"
  SHA1 "67346d2d3958fe293a33f3eda59da295a9af9bf5"
)

project(std_msgs)

hunter_add_package(catkin)
hunter_add_package(ros_message_generation)
hunter_add_package(ros_message_runtime)

find_package(catkin REQUIRED COMPONENTS message_generation)

add_message_files(
  DIRECTORY msg
  FILES
  Bool.msg
  Byte.msg
  ByteMultiArray.msg
  Char.msg
  ColorRGBA.msg
  Duration.msg
  Empty.msg
  Float32.msg
  Float32MultiArray.msg
  Float64.msg
  Float64MultiArray.msg
  Header.msg
  Int16.msg
  Int16MultiArray.msg
  Int32.msg
  Int32MultiArray.msg
  Int64.msg
  Int64MultiArray.msg
  Int8.msg
  Int8MultiArray.msg
  MultiArrayDimension.msg
  MultiArrayLayout.msg
  String.msg
  Time.msg
  UInt16.msg
  UInt16MultiArray.msg
  UInt32.msg
  UInt32MultiArray.msg
  UInt64.msg
  UInt64MultiArray.msg
  UInt8.msg
  UInt8MultiArray.msg
)

generate_messages()

set(PROJECT_INSTALLSPACE_LIBRARIES ros::${PROJECT_NAME})
catkin_package(
  LIBRARIES std_msgs
  INCLUDE_DIRS include
  CATKIN_DEPENDS message_runtime)

add_library(${PROJECT_NAME} INTERFACE)
target_include_directories(${PROJECT_NAME} INTERFACE $<INSTALL_INTERFACE:include>)

install(TARGETS ${PROJECT_NAME}
  EXPORT ${PROJECT_NAME}Targets
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_GLOBAL_BIN_DESTINATION})

install(EXPORT ${PROJECT_NAME}Targets
    DESTINATION share/${PROJECT_NAME}/cmake
    NAMESPACE ros::
    FILE ${PROJECT_NAME}Targets.cmake
)

install(DIRECTORY include/std_msgs/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  PATTERN "*.h")
