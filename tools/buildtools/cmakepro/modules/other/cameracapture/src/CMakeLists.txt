SET(BSP_HEADER_PATH "/home/lxpizza/workspace/HaoMo/sa8540p-qx-1-0_hlos_dev_qnx_r000062.2-ee079725fcd6dc31f03071b4a1d831a99fedea4e/sa8540p-qx-1-0_hlos_dev_qnx.git/apps/qnx_ap")
SET(BSP_LIBRARY_PATH "/home/lxpizza/workspace/HaoMo/output_bsp_install_622/apps/qnx_ap")


file(GLOB_RECURSE  cxx_srcs "${CAMERACAPTURE}/source/*.cpp"
							"${CAMERACAPTURE}/source/instance/qualcommCamcapture/*.c??"
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=armv8-a -D_QNX_SOURCE -DQNX -D__EXT -DC2D_DISABLED -D__USESRCVERSION -DxENABLE_INJECTION_SUPPORT -D__EXT_POSIX1_198808 -DOPENCV=1 -DOPENCV300=1 -D_ON_TDA4_OPENCV_ ") #-D_PLD_ -DOPENCV=1 -DOPENCV300=1 -D_UINT64_DEFINED 


set(LIBRARIES
	frameworkbase
	sp_comm
)
INCLUDE_DIRECTORIES(${CAMERACAPTURE}/include
					${CAMERACAPTURE}/source/
					${CAMERACAPTURE}/source/instance
					${CAMERACAPTURE}/source/instance/qualcommCamcapture
					)

include_directories(
                    ${COMM_PATH}/source/interface/common
                    ${COMM_PATH}/source/interface/avm
					${COMM_PATH}/source/interface/algo
					${COMM_PATH}/source/interface/smc
					${COMM_PATH}/source/interface/cv
					${COMM_PATH}/thirdparty/opencv300/include/
					${COMM_PATH}/thirdparty/opencv300/include/opencv2
					#${COMM_PATH}/thirdparty/opencv300/include/opencv2
					#${COMM_PATH}/thirdparty/opencv410/include/opencv2
					${COMM_PATH}/source/interface/cuda
					${COMM_PATH}/source/interface/math
					${COMM_PATH}/source/interface/gpu3d
					${COMM_PATH}/source/interface/ml
					${COMM_PATH}/source/utility
					${COMM_PATH}/source/utility/avm
					${COMM_PATH}/source/utility/dim3
					${COMM_PATH}/source/utility/vehmdl
					${COMM_PATH}/source/utility/memory
					${COMM_PATH}/source/utility/math
					${COMM_PATH}/source/utility/tinyxml2
					${COMM_PATH}/source/utility/mmr
					${COMM_PATH}/source/utility/ml/classifier/LightCNN/archit
					${FW_SDK_PATH}/fw_sdk/src
					${FW_SDK_PATH}/service/opencv/include
					${DAFW_PATH}/arm_src/Interface/include
					${FW_SDK_PATH}/adaptor/os/API/include
					${FW_SDK_PATH}/service/config/include
)


include_directories(
				${BSP_HEADER_PATH}/prebuilt_QOS/target/qnx7/usr/include/libdrm
				${BSP_LIBRARY_PATH}/install/usr/include/
				${BSP_LIBRARY_PATH}/install/usr/include/amss/
				${BSP_LIBRARY_PATH}/install/usr/include/amss/core
				${BSP_LIBRARY_PATH}/install/usr/include/amss/multimedia/camera_isp
				${BSP_HEADER_PATH}/AMSS/multimedia/graphics/include/private/C2D/
				${BSP_HEADER_PATH}/AMSS/multimedia/camera_adas/ais/CameraOSServices/CameraOSServices/inc/
				${BSP_HEADER_PATH}/AMSS/multimedia/camera_adas/ais/Common/inc/
				${BSP_HEADER_PATH}/AMSS/inc
)

link_directories(	
				${BSP_LIBRARY_PATH}/install/aarch64le/lib/
				${BSP_LIBRARY_PATH}/install/aarch64le/usr/lib/graphics/qc/
)


SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME} SHARED  ${cxx_srcs})
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES} 
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
						#img convert related 
						libone_nsp.so
)

