
cmake_minimum_required(VERSION 3.0)

SET(BSP_HEADER_PATH "/home/lxpizza/workspace/HaoMo/sa8540p-qx-1-0_hlos_dev_qnx_r000062.2-ee079725fcd6dc31f03071b4a1d831a99fedea4e/sa8540p-qx-1-0_hlos_dev_qnx.git/apps/qnx_ap")
SET(BSP_LIBRARY_PATH "/home/lxpizza/workspace/HaoMo/output_bsp_install_622/apps/qnx_ap")
SET(QNX_710_PATH_INC "/home/lxpizza/qnx710/target/qnx7/usr/include")
SET(QNX_710_PATH_LIB "/home/lxpizza/qnx710/target/qnx7/aarch64le/usr/lib")

SET(toolchain_dir "/home/lxpizza/qnx710/host/linux/x86_64/usr")

SET(CMAKE_CXX_COMPILER ${toolchain_dir}/bin/aarch64-unknown-nto-qnx7.1.0-g++)
SET(CMAKE_C_COMPILER ${toolchain_dir}/bin/aarch64-unknown-nto-qnx7.1.0-gcc)
SET(CMAKE_LINKER ${toolchain_dir}/bin/aarch64-unknown-nto-qnx7.1.0-ld)

SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -march=armv8-a -D_QNX_SOURCE -DQNX -D__EXT -D__USESRCVERSION -D__EXT_POSIX1_198808")
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=armv8-a -D_QNX_SOURCE -DQNX -D__EXT -DC2D_DISABLED -D__USESRCVERSION -DxENABLE_INJECTION_SUPPORT -D__EXT_POSIX1_198808 -fpermissive")


file(GLOB_RECURSE c_srcs
                        ${SPACEOS_LAUNCHER}/src/*.c
)
file(GLOB_RECURSE cpp_src
                        ${SPACEOS_LAUNCHER}/src/*.cpp
)

message(${MY_ROOT_DIR})

include_directories(
                ${SP_INTERFACE_PATH}/include
                ${SPACEOS_LAUNCHER}/src
                ${QNX_710_PATH_INC}/
                ${QCARCAM}/

)

link_directories(
                ${QNX_710_PATH_LIB}/

                ${BSP_LIBRARY_PATH}/install/aarch64le/lib/
                ${BSP_LIBRARY_PATH}/install/aarch64le/usr/lib/graphics/qc/
)

#add_executable(${PROJECT_NAME} ${c_srcs} ${cpp_src})

add_library(${PROJECT_NAME} SHARED ${c_srcs})

target_link_libraries(${PROJECT_NAME} 
        libais_log.so
        libais_client.so
        libOSAbstraction.so
        libscreen.so.1
        libxml2.so.2
        libpmem_client.so
        libfdt_utils.so.1
        libgpio_client.so
        libfadas.so
        libslog2.so.1
        libc2d30.so
        libfastrpc.so
        libfastrpc_pmem.so.1
        libpmemext.so
        liblibstd.so
        libiconv.so.1
        libOSUser.so
        libGSLUser.so
        libplanedef.so
        libmmap_peer.so
        libone_nsp.so
)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
SET(EXECUTABLE_OUTPUT_PATH "${OUTPUT_PATH}")

