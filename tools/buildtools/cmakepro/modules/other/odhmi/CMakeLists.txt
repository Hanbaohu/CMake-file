CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
SET(CMAKE_CXX_FLAGS "-fPIC -g -Wno-psabi -O0 -Dlinux -fpermissive -std=c++11")
SET(CMAKE_C_FLAGS "-fPIC -Wno-psabi -g -O0 -Dlinux")
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake.modules")

FIND_PACKAGE(toolchain REQUIRED)

#SET(CMAKE_BUILD_TYPE "Release")

project(odhmi)

FIND_PACKAGE(rootfs REQUIRED)

FIND_PACKAGE(submodule REQUIRED)

include_directories(
        ${DEPS_ROOT}/usr/include)
#LINK_DIRECTORIES(${VENUS_ROOTFS}/lib ${VENUS_ROOTFS}/usr/lib)

link_directories(
        ${DEPS_ROOT}/usr/lib)

LINK_DIRECTORIES(${OUTPUT_PATH}/)

#添加子目录
add_subdirectory(source)

