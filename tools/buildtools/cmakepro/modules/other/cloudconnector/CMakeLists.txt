CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake.modules")

FIND_PACKAGE(toolchain REQUIRED)

#SET(CMAKE_BUILD_TYPE "Release")

project(cloudconnector)

FIND_PACKAGE(rootfs REQUIRED)

FIND_PACKAGE(submodule REQUIRED)

#INCLUDE_DIRECTORIES(${VENUS_ROOTFS}/usr/include )
include_directories(
        ${DEPS_ROOT}/bpu_predict/include
        ${DEPS_ROOT}/glog/include
        ${DEPS_ROOT}/gflags/include
        ${DEPS_ROOT}/libzmq/include
        ${DEPS_ROOT}/protobuf/include
        ${DEPS_ROOT}/opencv/include)
#LINK_DIRECTORIES(${VENUS_ROOTFS}/lib ${VENUS_ROOTFS}/usr/lib)
link_directories(
        ${DEPS_ROOT}/bpu_predict/lib
        ${DEPS_ROOT}/protobuf/lib
        ${DEPS_ROOT}/libzmq/lib
        ${DEPS_ROOT}/glog/lib
        ${DEPS_ROOT}/gflags/lib
        ${DEPS_ROOT}/opencv/lib)

LINK_DIRECTORIES(${OUTPUT_PATH}/)

#添加子目录
add_subdirectory(source)

