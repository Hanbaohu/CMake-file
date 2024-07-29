project(lidar_service C CXX)

file(GLOB_RECURSE lidar_service_c_srcs "${FW_SDK_PATH}/service/lidar/src/*.c")
file(GLOB_RECURSE lidar_service_cxx_srcs "${FW_SDK_PATH}/service/lidar/src/*.cpp")

set(LIBRARIES
    frameworkbase
	sp_comm
)

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DSP_VENUS -D_STATIC_LIB_") #-D_fw_sdk_

include_directories(
            ${COMM_PATH}/source/interface/common
		${COMM_PATH}/source/interface/smc
		${COMM_PATH}/source/interface/avm
		${COMM_PATH}/source/interface/cv
		${COMM_PATH}/source/interface/algo
		${COMM_PATH}/source/utility/dim3
		${COMM_PATH}/source/utility/vehmdl
		${COMM_PATH}/thirdparty/rapidjson/include
		${COMM_PATH}/thirdparty/rapidjson/include/rapidjson
		${DAFW_PATH}/arm_src/Interface/include
		${FW_SDK_PATH}/service/lidar/include
		${FW_SDK_PATH}/adaptor/driver/lidar/include
		${ROS_BRIDGE_PATH}/include
)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME} STATIC  ${lidar_service_c_srcs} ${lidar_service_cxx_srcs})
# target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
