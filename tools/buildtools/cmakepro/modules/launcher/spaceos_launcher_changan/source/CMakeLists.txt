
cmake_minimum_required(VERSION 3.0)

SET(QNX_710_PATH_INC "/home/lxpizza/qnx710/target/qnx7/usr/include")
SET(QNX_710_PATH_LIB "/home/lxpizza/qnx710/target/qnx7/aarch64le/usr/lib")

SET(toolchain_dir "/home/lxpizza/qnx710/host/linux/x86_64/usr")

SET(CMAKE_CXX_COMPILER ${toolchain_dir}/bin/aarch64-unknown-nto-qnx7.1.0-g++)
SET(CMAKE_C_COMPILER ${toolchain_dir}/bin/aarch64-unknown-nto-qnx7.1.0-gcc)
SET(CMAKE_LINKER ${toolchain_dir}/bin/aarch64-unknown-nto-qnx7.1.0-ld)

SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -march=armv8-a -D_QNX_SOURCE -DQNX -D__EXT -D__USESRCVERSION -D__EXT_POSIX1_198808")
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=armv8-a -D_QNX_SOURCE -DQNX -D__EXT -D__USESRCVERSION -D__EXT_POSIX1_198808 -fpermissive")


file(GLOB_RECURSE c_srcs
                        ${SPACEOS_LAUNCHER_CHANGAN}/src/*.c
)

file(GLOB_RECURSE cpp_src
                        ${SPACEOS_LAUNCHER_CHANGAN}/*.cpp
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

add_executable(${PROJECT_NAME} ${cpp_src})

target_link_libraries(${PROJECT_NAME}         
        libsp_autopilot.so
        #libframeworkbase.so 
        #libconfig_service.so 
        #libapi_adaptor.so 
        #libmemory_service.so 
        #libopencv_service.so 
        #libcomm.so 
        libopencv_world.so 
        libavm.so 
        #libhmi.so
        #libgrid_map.so 
        #libapa_comm_math.so

        libboost_system.so
        libjsoncpp.so
)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
SET(EXECUTABLE_OUTPUT_PATH "${OUTPUT_PATH}")

#SET(LIBRARY_OUTPUT_PATH "${PROJECT_SOURCE_DIR}/output")
