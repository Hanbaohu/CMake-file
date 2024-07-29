cmake_minimum_required(VERSION 3.0)

SET(QNX_710_PATH_INC "/home/lxpizza/qnx710/target/qnx7/usr/include")
SET(QNX_710_PATH_LIB "/home/lxpizza/qnx710/target/qnx7/aarch64le/usr/lib")

# SET(toolchain_dir "/home/lxpizza/qnx710/host/linux/x86_64/usr")

# SET(CMAKE_CXX_COMPILER ${toolchain_dir}/bin/aarch64-unknown-nto-qnx7.1.0-g++)
# SET(CMAKE_C_COMPILER ${toolchain_dir}/bin/aarch64-unknown-nto-qnx7.1.0-gcc)
# SET(CMAKE_LINKER ${toolchain_dir}/bin/aarch64-unknown-nto-qnx7.1.0-ld)

SET(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -march=armv8-a -D_QNX_SOURCE -DQNX -D__QNX__ -D__EXT_QNX -O3 -D__USESRCVERSION -D__EXT_POSIX1_198808 ")
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=armv8-a -D_QNX_SOURCE -DQNX -D__QNX__ -D__EXT_QNX -O3 -DC2D_DISABLED -D__USESRCVERSION  -D__EXT_POSIX1_198808 --std=c++17 -fpermissive -D_UINIT_64_T_")


file(GLOB_RECURSE c_srcs
                        ${SPACEOS_LAUNCHER}/src/rpc/*.c
                        ${SPACEOS_LAUNCHER}/src/udp/*.c
                        ${SPACEOS_LAUNCHER}/src/app_gl_egl_utils_qnx.c
)
file(GLOB_RECURSE cpp_src
                        ${SPACEOS_LAUNCHER}/src/rpc/*.cpp
                        ${SPACEOS_LAUNCHER}/src/udp/*.cpp
                        ${RPC_SAMPLE_PATH}/src/proto/*.cc
                        ${SPACEOS_LAUNCHER}/src/main.cpp
                        ${SPACEOS_LAUNCHER}/src/openglutils.cpp
)

message(${MY_ROOT_DIR})

include_directories(             
                ${SP_INTERFACE_PATH}/include
                ${SPACEOS_LAUNCHER}/src
                ${QCARCAM}/
                ${QNX_710_PATH_INC}/
                ${SPACEOS_LAUNCHER}/src/video
                ${SPACEOS_LAUNCHER}/src/udp
                ${SPACEOS_LAUNCHER}/src/rpc
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
                ${COMM_PATH}/source/utility/pk_common
                

                # RPC Related 
                # ${RPC_SAMPLE_PATH}/include
                # ${RPC_SAMPLE_PATH}/include/log
                # ${RPC_SAMPLE_PATH}/include/proto
                # ${RPC_SAMPLE_PATH}/src/proto/
                # ${HAOMO_IPC}/thirdparty/protobuf/include
                ${HAOMO_LIBS}/../thirdparty/zmq/include
                ${HAOMO_LIBS}/comm
                ${HAOMO_LIBS}/comm/proto
                ${HAOMO_LIBS}/rte
                ${HAOMO_LIBS}/log
                ${HAOMO_LIBS}/../thirdparty/protobuf/include
                ${RPC_SAMPLE_PATH}/src/proto

)

link_directories(
                #${QNX_710_PATH_LIB}/
                #${BSP_LIBRARY_PATH}/apps/qnx_ap/install/aarch64le/lib/
                #${BSP_LIBRARY_PATH}/apps/qnx_ap/install/aarch64le/usr/lib/graphics/qc/
                #${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/qaic/prebuilt/lib64

                ${BSP_LIBRARY_A2_PATH}/aarch64le/lib/
                ${BSP_LIBRARY_A2_PATH}/aarch64le/usr/lib/graphics/qc/
                ${BSP_HEADER_A2_PATH}/apps/qnx_ap/AMSS/qaic/prebuilt/lib64
                
                #${HAOMO_IPC}/lib/
                #${HAOMO_IPC}/thirdparty/protobuf/lib/
                ${HAOMO_LIBS}/../thirdparty/zmq/lib/
                ${HAOMO_LIBS}/../thirdparty/boost/lib/
                ${THIRD_PARTY_LIB_PATH}/vsomeip/lib/
                ${THIRD_PARTY_LIB_PATH}/jsoncpp/lib
                ${THIRD_PARTY_LIB_PATH}/opencv/
                ${HAOMO_LIBS}/../thirdparty/protobuf/lib/
                #${RPC_SAMPLE_PATH}/lib
                #${HAOMO_IPC}/thirdparty/protobuf/lib/

                # Pos 2.0 
                ${HAOMO_LIBS}/comm/lib
                ${HAOMO_LIBS}/ipc/lib
                ${HAOMO_LIBS}/rte/lib
                ${HAOMO_LIBS}/log/lib

                ${OUTPUT_PATH}
)

add_executable(${PROJECT_NAME} ${c_srcs} ${cpp_src})

#add_library(${PROJECT_NAME} SHARED ${c_srcs})

target_link_libraries(${PROJECT_NAME} 

        # RPC
        # libcomm_static.a
        # libpos_log.so
        # libprotobuf.so
        # libzmq.so
        # libglog.so
        # libtinyxml2.so
        # libgflags.so
        # libclass_loader.so
        # libsocket.so
        # librte.so 

        # Pos 2.0
        libipc.so
        libcomm.so
        libpos_log.so
        librte.so 
        libvsomeip-cfg.so.2
        libvsomeip.so.2
        libboost_log.so
        libboost_log_setup.so
        libboost_filesystem.so
        libboost_regex.so
        libboost_date_time.so
        libboost_thread.so
        libboost_chrono.so
        libboost_atomic.so

        libprotobuf.so
        libvsomeip-sd.so

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
        libzmq_service.so 
        libsp_comm.so 
        libopencv_world.so 
        libavm.so 
        libhmi.so
        #libgrid_map.so 
        libapa_comm_math.so


        #libais_log.so
        #libais_client.so
        libOSAbstraction.so
        libscreen.so.1
        libxml2.so.2
        libpmem_client.so
        libfdt_utils.so.1
        libgpio_client.so
        libfadas.so
        #libslog2.so.1
        #libc2d30.so
        libfastrpc.so
        libfastrpc_pmem.so.1
        libpmemext.so
        liblibstd.so
        libiconv.so.1
        libOSUser.so
        libGSLUser.so
        libplanedef.so
        libmmap_peer.so

        #libone_nsp.so


        #libipc_static.a
        #librte_static.a
        #libpos_log_static.a
        #libipc.so
        #libhios_log.so
        #librte.so 
        libprotobuf.so
        libprotoc.so
        libzmq.so
        libboost_system.so
        libjsoncpp.so

        libQAic.so
        #libspacenet.so

        libsocket.so

)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
SET(EXECUTABLE_OUTPUT_PATH "${OUTPUT_PATH}")

#SET(LIBRARY_OUTPUT_PATH "${PROJECT_SOURCE_DIR}/output")
