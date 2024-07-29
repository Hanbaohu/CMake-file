cmake_minimum_required(VERSION 3.0)


SET(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -march=armv8-a -DHAOMOV71 -D_QNX_SOURCE -DQNX -D__QNX__ -D__EXT_QNX -o3 -D__PRINT_DEBUG -D__USESRCVERSION -D__EXT_POSIX1_198808 ") # -O3
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=armv8-a -DHAOMOV71 -D_QNX_SOURCE -DQNX -D__QNX__ -D__EXT_QNX -o3 -D__PRINT_DEBUG -D__USESRCVERSION -D__EXT_POSIX1_198808 --std=c++14 -fpermissive -D_UINIT_64_T_") # -O3


file(GLOB_RECURSE c_srcs
                        ${SPACEOS_LAUNCHER_A2}/src/rpc/*.c
                        ${SPACEOS_LAUNCHER_A2}/src/udp/*.c
                        ${SPACEOS_LAUNCHER_A2}/src/video/*.c
                        ${SPACEOS_LAUNCHER_A2}/src/app_gl_egl_utils_qnx.c
)
file(GLOB_RECURSE cpp_src
                        ${SPACEOS_LAUNCHER_A2}/src/rpc/*.cpp
                        ${SPACEOS_LAUNCHER_A2}/src/ipc/*.cpp
                        ${SPACEOS_LAUNCHER_A2}/src/ipc/proto/*.cc
                        ${SPACEOS_LAUNCHER_A2}/src/udp/*.cpp
                        ${SPACEOS_LAUNCHER_A2}/src/nsp/*.cpp
                        ${SPACEOS_LAUNCHER_A2}/src/video/*.cpp
                        ${RPC_SAMPLE_PATH}/src/proto/*.cc
                        ${SPACEOS_LAUNCHER_A2}/src/main.cpp
                        ${SPACEOS_LAUNCHER_A2}/src/openglutils.cpp
)

message(${MY_ROOT_DIR})

include_directories(             
                ${SP_INTERFACE_PATH}/include
                ${SPACEOS_LAUNCHER_A2}/src

                ${SPACEOS_LAUNCHER_A2}/src/video
                ${SPACEOS_LAUNCHER_A2}/src/udp
                ${SPACEOS_LAUNCHER_A2}/src/rpc
                ${SPACEOS_LAUNCHER_A2}/src/nsp
                ${SPACEOS_LAUNCHER_A2}/src/ipc

                ${COMM_PATH}/thirdparty/opencv300/include/tda4
                ${COMM_PATH}/source/interface/common
                ${COMM_PATH}/source/interface/algo
                ${COMM_PATH}/source/utility/pk_common
                
                ${HAOMO_LIBS}/comm
                ${HAOMO_LIBS}/comm/proto
                ${HAOMO_LIBS}/rte
                ${HAOMO_LIBS}/log
                ${HAOMO_LIBS}/ipc
                ${HAOMO_LIBS}/../thirdparty/protobuf/include
                ${HAOMO_LIBS}/../thirdparty/zmq/include
                ${RPC_SAMPLE_PATH}/src/proto
                ${HAOMO_LIBS}/../A2_libs/nsp/include

                # QCD Related 
                ${BSP_HEADER_A2_PATH}/apps/qnx_ap/AMSS/multimedia/camera_safe/qcd/src/SystemServices/QCDOsal/inc 		# qcdosal_timer.h
                ${BSP_HEADER_A2_PATH}/apps/qnx_ap/AMSS/multimedia/camera_safe/qcd/src/SystemServices/Common 			# qcd_common.h
                ${BSP_HEADER_A2_PATH}/apps/qnx_ap/AMSS/platform/qal/libstd/1.0/protected 								# AEEStdDef.h
                ${BSP_HEADER_A2_PATH}/apps/qnx_ap/AMSS/multimedia/camera_safe/qcd/src/SystemServices/QCDOsal/QNX/inc	# qcdosal_logging.h
                ${BSP_HEADER_A2_PATH}/apps/qnx_ap/AMSS/multimedia/camera_safe/qcd/src/API/inc 							# qcarcam_types.h
                ${BSP_HEADER_A2_PATH}/apps/qnx_ap/AMSS/platform/utilities/mem_utils/pmem_client/protected				# pmem.h
                ${BSP_LIBRARY_A2_PATH}/usr/include/

                ${BSP_HEADER_A2_PATH}/apps/qnx_ap/AMSS/platform/qal/clients/fastrpc_lib/protected                               # remote.h
)

link_directories(
                ${BSP_LIBRARY_A2_PATH}/aarch64le/lib/
                ${BSP_LIBRARY_A2_PATH}/aarch64le/usr/lib/graphics/qc/
                ${BSP_HEADER_A2_PATH}/apps/qnx_ap/AMSS/qaic/prebuilt/lib64
                
                #${HAOMO_IPC}/lib/
                ${HAOMO_LIBS}/../thirdparty/protobuf/lib/
                ${HAOMO_LIBS}/../thirdparty/zmq/lib/
                ${HAOMO_LIBS}/../thirdparty/boost/lib/
                ${HAOMO_LIBS}/../thirdparty/protobuf/lib/

                ${THIRD_PARTY_LIB_PATH}/vsomeip/lib/
                ${THIRD_PARTY_LIB_PATH}/jsoncpp/lib
                ${THIRD_PARTY_LIB_PATH}/opencv/

                #${RPC_SAMPLE_PATH}/lib
                #${HAOMO_IPC}/thirdparty/protobuf/lib/

                # Pos 2.0 
                ${HAOMO_LIBS}/comm/lib
                ${HAOMO_LIBS}/ipc/lib
                ${HAOMO_LIBS}/rte/lib
                ${HAOMO_LIBS}/log/lib
                ${HAOMO_LIBS}/../A2_libs/nsp/lib
)

add_executable(${PROJECT_NAME} ${c_srcs} ${cpp_src})

#add_library(${PROJECT_NAME} SHARED ${c_srcs})

target_link_libraries(${PROJECT_NAME} 
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
        libzmq_service.so
        libopencv_service.so 
        libsp_comm.so 
        libopencv_world.so 
        libavm.so 
        libhmi.so
        #libgrid_map.so 
        libapa_comm_math.so

        libOSAbstraction.so
        libscreen.so.1
        libxml2.so.2
        libpmem_client.so
        libfdt_utils.so.1
        libgpio_client.so
        libfadas.so
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
        #libone_nsp_skel.so

        libprotobuf.so
        libprotoc.so
        libzmq.so
        libboost_system.so
        libjsoncpp.so

        libQAic.so

        libsocket.so
        
        # A2 BSP
        libqcdplatform.so
        libOSAbstraction.so
        libqcd_client.so
        libpmem_client.so
        libaosal.so
        libgpio_client.so
        libsmmu_client.so
        libfdt_utils.so
        libnpa_client.so
        libdalsys.so
        libdalconfig.so
        libxml2.so
        liblibstd.so

        #Space Libs
        # libapa_debug_monitor.so
        # libavp_pathfollow.so
        # libavp_pathplan.so
        # libcomdr.so
        # libfw_bev.so
        # libhmi_p7.so
        # libhmi.so
        # libhmihub.so
        # liblocalization.so
        # libmapservice.so
        # libspace_havpmap.so
        # libhdmap_wrapper.so
        # libparkoccupy.so
        # libplanning.so
        # libpld.so
        # librouting.so
        # libsegparse.so
        # libsensorfusion_freespace.so
        # libslam.so
        # libg2o.so

        # libSP_PK_ObjAvoid.so
        # libSP_PK_PathFollow.so
        # libSP_PK_SensorFusion.so
        # libSP_PK_PathPlan.so
        # libSP_PK_SlotDetect.so
        # libSP_PK_SonarProc.so
        # libSP_PK_StateManager_all.so
        # libSP_PK_VehicleControl.so

        # libSPM.so
        # libtsml.so
        # libspacenet.so

)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
SET(EXECUTABLE_OUTPUT_PATH "${OUTPUT_PATH}")

