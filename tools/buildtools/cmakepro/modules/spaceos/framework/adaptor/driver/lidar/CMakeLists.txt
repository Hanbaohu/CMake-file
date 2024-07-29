project(lidar_adaptor C CXX)

file(GLOB_RECURSE ${PROJECT_NAME}_c_srcs "${FW_SDK_PATH}/adaptor/driver/lidar/src/*.c")
file(GLOB_RECURSE ${PROJECT_NAME}_cxx_srcs "${FW_SDK_PATH}/adaptor/driver/lidar/src/*.c??")
file(GLOB_RECURSE  rmfiles "${FW_SDK_PATH}/adaptor/driver/lidar/src/platform/livox/Livox-SDK/*")
foreach(f ${rmfiles})
	list(REMOVE_ITEM ${PROJECT_NAME}_cxx_srcs ${f})
endforeach()
foreach(f ${rmfiles})
	list(REMOVE_ITEM ${PROJECT_NAME}_c_srcs ${f})
endforeach()
set(LIBRARIES
    frameworkbase
	sp_comm
)

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DSP_VENUS -D_ON_TDA4_ ") #-D_fw_sdk_ -D_CAN_ADAPTER_

include_directories(
		${FW_SDK_PATH}/adaptor/driver/lidar/include
		${FW_SDK_PATH}/adaptor/driver/lidar/src/platform/livox
		${FW_SDK_PATH}/adaptor/driver/lidar/src/platform/livox/Livox-SDK/sdk_core/include
        ${COMM_PATH}/source/interface/common
		${COMM_PATH}/source/interface/smc
		${COMM_PATH}/source/interface/avm
		${COMM_PATH}/source/interface/cv
		${COMM_PATH}/source/interface/algo
		${COMM_PATH}/source/utility/dim3
		${COMM_PATH}/source/utility/vehmdl
		${COMM_PATH}/source/utility/memory
		${COMM_PATH}/thirdparty/rapidjson/include
		${COMM_PATH}/thirdparty/rapidjson/include/rapidjson
		${FW_SDK_PATH}/service/config/include
		${FW_SDK_PATH}/service/config/src/vehmotion
		${FW_SDK_PATH}/service/config/src/xml	
		${FW_BASE_PATH}/src/common
		${SP_INTERFACE_PATH}/include
)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME}  STATIC  ${${PROJECT_NAME}_c_srcs} ${${PROJECT_NAME}_cxx_srcs})
# target_link_libraries(${PROJECT_NAME}  PRIVATE ${LIBRARIES})
