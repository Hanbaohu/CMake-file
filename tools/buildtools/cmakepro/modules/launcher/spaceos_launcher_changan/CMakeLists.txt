CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake.modules")

FIND_PACKAGE(toolchain REQUIRED)


project(spaceos_launcher_changan)

FIND_PACKAGE(rootfs REQUIRED)

FIND_PACKAGE(submodule REQUIRED)

include_directories(
        ${DEPS_ROOT}/usr/include)

link_directories(
        ${DEPS_ROOT}/usr/lib)

LINK_DIRECTORIES(${OUTPUT_PATH}/)

#添加子目录
add_subdirectory(source)

