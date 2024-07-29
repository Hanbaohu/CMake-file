CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake.modules")

FIND_PACKAGE(toolchain REQUIRED)
FIND_PACKAGE(rootfs REQUIRED)
FIND_PACKAGE(submodule REQUIRED)

include_directories(
        ${DEPS_ROOT}/usr/include)

link_directories(
        ${DEPS_ROOT}/usr/lib
        ${output}/
        )


#add_subdirectory(spaceoslauncher)
add_subdirectory(spaceoslauncher_a2)
#add_subdirectory(spaceoslauncher_a2_haomo)
#add_subdirectory(spaceoslauncher_withsaveimage)