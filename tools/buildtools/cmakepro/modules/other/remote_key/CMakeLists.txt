CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake.modules")

FIND_PACKAGE(toolchain REQUIRED)

#SET(CMAKE_BUILD_TYPE "Release")

project(remote_key)

FIND_PACKAGE(rootfs REQUIRED)

FIND_PACKAGE(submodule REQUIRED)



#添加子目录
#add_subdirectory(source)
SET(SYS_MSG_DEBUG "${MY_ROOT_DIR}/modules/remote_key")
file(GLOB_RECURSE  c_srcs "${SYS_MSG_DEBUG}/*.c"
							)
file(GLOB_RECURSE  cxx_srcs "${SYS_MSG_DEBUG}/*.c??"
							)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_STATIC_LIB_ ") #-D_PLD_

set(LIBRARIES
	frameworkbase
	sp_comm	
)

include_directories(
			${PATH_FOLLOW}/source/include   
			${APA_COMM_MATH_PATH}/include		
			${COMM_PATH}/source/interface/common
			${COMM_PATH}/source/interface/avm
			${COMM_PATH}/source/interface/algo
			${COMM_PATH}/source/interface/smc
			${COMM_PATH}/source/interface/cv
			${COMM_PATH}/source/interface/cuda
			${COMM_PATH}/source/interface/math
			${COMM_PATH}/source/interface/gpu3d
			${COMM_PATH}/source/interface/ml
			${COMM_PATH}/source/utility
			${COMM_PATH}/source/utility/avm
			${COMM_PATH}/source/utility/dim3
			${COMM_PATH}/source/utility/vehmdl
			${COMM_PATH}/source/utility/kalman
			${COMM_PATH}/source/utility/math
			${COMM_PATH}/source/utility/tinyxml2
			${COMM_PATH}/source/utility/mmr
			${COMM_PATH}/thirdparty/Eigen
			${FW_SDK_PATH}/fw_sdk/src
			${FW_SDK_PATH}/service/opencv/include
			${FW_SDK_PATH}/adaptor/os/API/include
			${DAFW_PATH}/arm_src/Interface/include
			${SPACE_AUTOPILOT_PATH}
			${COMM_PATH}/thirdparty/opencv300/include/tda4)

message(${c_srcs} ${cxx_srcs})
SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME} STATIC ${c_srcs} ${cxx_srcs})
#target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

