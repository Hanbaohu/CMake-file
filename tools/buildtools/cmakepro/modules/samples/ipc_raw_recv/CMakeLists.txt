CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake.modules")

FIND_PACKAGE(toolchain REQUIRED)

#SET(CMAKE_BUILD_TYPE "Release")

project(ipc_raw_recv)

FIND_PACKAGE(rootfs REQUIRED)

FIND_PACKAGE(submodule REQUIRED)

# INCLUDE_DIRECTORIES(${DEPS_ROOT}/usr/include
#                         arm_src
# 			arm_src/Interface)

# link_directories(
#         ${DEPS_ROOT}/usr/lib)

#LINK_DIRECTORIES(${OUTPUT_PATH}/)

#添加子目录
add_subdirectory(source)


