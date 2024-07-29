
# file(GLOB_RECURSE c_srcs
#                         ${SPACEOS_LAUNCHER}/src/*.c
# )

file(GLOB_RECURSE cpp_src
						${H265ENCODER_PATH}/*.cpp
)

include_directories(
				${H265ENCODER_PATH}/

				${BSP_LIBRARY_PATH}/apps/qnx_ap/install/usr/include/
				${BSP_LIBRARY_PATH}/apps/qnx_ap/install/usr/include/amss/core/
				${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/multimedia/common/source/qnx/osabstraction/protected/
				${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/platform/utilities/mem_utils/pmem_client/protected/
				${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/multimedia/video/source/common/drivers/codec/vidc_drv/inc/
				${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/multimedia/video/source/common/drivers/codec/vidc/inc/
				${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/multimedia/graphics/include/private/C2D/
				${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/platform/qal/libstd/1.0/protected/
				${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/multimedia/inc
				${HAOMO_IPC}/thirdparty/boost/include/
)

link_directories(
                ${QNX_710_PATH_LIB}/

                ${BSP_LIBRARY_PATH}/apps/qnx_ap/install/aarch64le/lib/
                ${BSP_LIBRARY_PATH}/apps/qnx_ap/install/aarch64le/usr/lib/graphics/qc/
                ${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/qaic/prebuilt/lib64
				${BSP_HEADER_PATH}/apps/qnx_ap/install/aarch64le/lib/
                ${HAOMO_IPC}/lib/
                ${HAOMO_IPC}/thirdparty/protobuf/lib/
                ${HAOMO_IPC}/thirdparty/zmq/lib/

                ${HAOMO_IPC}/thirdparty/boost/lib/

                ${THIRD_PARTY_LIB_PATH}/jsoncpp/lib
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DQNX --std=c++14 -D__QNX__ -D__EXT_QNX -D_QNX_SOURCE") 

add_executable(${PROJECT_NAME} ${cpp_src})

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

		libaosal.so
		libdll_utils.so
		libioctlClient.so
)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
SET(EXECUTABLE_OUTPUT_PATH "${OUTPUT_PATH}")



