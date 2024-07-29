CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake.modules")

FIND_PACKAGE(toolchain REQUIRED)
FIND_PACKAGE(rootfs REQUIRED)
FIND_PACKAGE(submodule REQUIRED)

include_directories(
        ${DEPS_ROOT}/usr/include)

link_directories(
        ${DEPS_ROOT}/usr/lib)

LINK_DIRECTORIES(
        ${DEPS_ROOT}/usr/lib        
        ${OUTPUT_PATH}/
)

add_subdirectory(ipc_raw_recv)
add_subdirectory(lidar_driver_sample)
add_subdirectory(rpc_sample)
add_subdirectory(qcd_test)
add_subdirectory(rpc_recv_test)