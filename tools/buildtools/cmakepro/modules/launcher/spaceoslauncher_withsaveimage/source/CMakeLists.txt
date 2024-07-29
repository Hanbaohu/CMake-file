
cmake_minimum_required(VERSION 3.0)


# SET(MY_ROOT_DIR "${PROJECT_SOURCE_DIR}")
# SET(BSP_HEADER_PATH "/home/lxpizza/workspace/HaoMo/sa8540p-qx-1-0_hlos_dev_qnx_r000062.2-ee079725fcd6dc31f03071b4a1d831a99fedea4e/sa8540p-qx-1-0_hlos_dev_qnx.git/apps/qnx_ap")
SET(QNX_710_PATH_INC "/home/lxpizza/qnx710/target/qnx7/usr/include")
SET(QNX_710_PATH_LIB "/home/lxpizza/qnx710/target/qnx7/aarch64le/usr/lib")

SET(toolchain_dir "/home/lxpizza/qnx710/host/linux/x86_64/usr")

SET(CMAKE_CXX_COMPILER ${toolchain_dir}/bin/aarch64-unknown-nto-qnx7.1.0-g++)
SET(CMAKE_C_COMPILER ${toolchain_dir}/bin/aarch64-unknown-nto-qnx7.1.0-gcc)
SET(CMAKE_LINKER ${toolchain_dir}/bin/aarch64-unknown-nto-qnx7.1.0-ld)

SET(CMAKE_C_FLAGS "  ${CMAKE_C_FLAGS}   -march=armv8-a -D_RECORD_SRC_TO_FILE_ -D_SAVE_BGR_ -D_QNX_SOURCE -DQNX -D__EXT -D__USESRCVERSION -D__EXT_POSIX1_198808 -D_UINIT_64_T_")
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=armv8-a -D_RECORD_SRC_TO_FILE_ -D_SAVE_BGR_ -D_QNX_SOURCE -DQNX -D__EXT -DC2D_DISABLED -D__USESRCVERSION -DxENABLE_INJECTION_SUPPORT -D__EXT_POSIX1_198808 -fpermissive -D_UINIT_64_T_")


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
                ${QCARCAM}/
                ${QNX_710_PATH_INC}/

                ${SPACEOS_LAUNCHER}/src/video
                ${SPACEOS_LAUNCHER}/src/udp

                ${BSP_HEADER_PATH}/apps/qnx_ap/prebuilt_QOS/target/qnx7/usr/include/libdrm
                ${BSP_LIBRARY_PATH}/apps/qnx_ap/install/usr/include/
                ${BSP_LIBRARY_PATH}/apps/qnx_ap/install/usr/include/amss/
                ${BSP_LIBRARY_PATH}/apps/qnx_ap/install/usr/include/amss/core
                ${BSP_LIBRARY_PATH}/apps/qnx_ap/install/usr/include/amss/multimedia/camera_isp
                ${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/multimedia/graphics/include/private/C2D/
                ${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/multimedia/camera_adas/ais/CameraOSServices/CameraOSServices/inc/
                ${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/multimedia/camera_adas/ais/Common/inc/
                ${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/inc
                ${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/platform/qal/libstd/1.0/protected/
                ${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/platform/utilities/mem_utils/pmem_client/protected/
                ${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/platform/resources/gpio_drv/protected/
                ${COMM_PATH}/thirdparty/opencv300/include/tda4
                
                ${COMM_PATH}/source/interface/common
                ${COMM_PATH}/source/interface/algo

)

link_directories(
                ${QNX_710_PATH_LIB}/

                ${BSP_LIBRARY_PATH}/apps/qnx_ap/install/aarch64le/lib/
                ${BSP_LIBRARY_PATH}/apps/qnx_ap/install/aarch64le/usr/lib/graphics/qc/
                ${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/qaic/prebuilt/lib64
                ${HAOMO_IPC}/lib/
                ${HAOMO_IPC}/thirdparty/protobuf/lib/
                ${HAOMO_IPC}/thirdparty/zmq/lib/

                ${HAOMO_IPC}/thirdparty/boost/lib/

                ${THIRD_PARTY_LIB_PATH}/jsoncpp/lib
)

add_executable(${PROJECT_NAME} ${c_srcs} ${cpp_src})

#add_library(${PROJECT_NAME} SHARED ${c_srcs})

target_link_libraries(${PROJECT_NAME} 
        libEGL.so
        libGLESv1_CL.so
        libGLESv1_CM.so
        libGLESv2.so
        libscreen.so
        
        libsp_autopilot.so
        libframeworkbase.so 
        libconfig_service.so 
        libapi_adaptor.so 
        libmemory_service.so 
        libcan_service.so 
        libcan_adaptor.so 
        libopencv_service.so 
        libcomm.so 
        libopencv_world.so 
        libavm.so 
        libhmi.so
        #libgrid_map.so 
        libapa_comm_math.so


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

        libipc.so
        libhios_log.so
        librte.so 
        libprotobuf.so
        libprotoc.so
        libzmq.so
        libboost_system.so
        libjsoncpp.so

        libQAic.so
        libspacenet.so

        socket
)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
SET(EXECUTABLE_OUTPUT_PATH "${OUTPUT_PATH}")