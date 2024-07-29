CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake.modules")

FIND_PACKAGE(toolchain REQUIRED)
FIND_PACKAGE(rootfs REQUIRED)
FIND_PACKAGE(submodule REQUIRED)

include_directories(
        ${DEPS_ROOT}/usr/include)

link_directories(
        ${DEPS_ROOT}/usr/lib)


add_subdirectory(avm)
add_subdirectory(stitch)
add_subdirectory(eol)
add_subdirectory(eol_imageloade)