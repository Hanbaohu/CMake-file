file(GLOB_RECURSE  c_srcs "${AVM_MGR_PATH}/source/*.c")
file(GLOB_RECURSE  cxx_srcs "${AVM_MGR_PATH}/source/*.c??")

#设置包含目录
INCLUDE_DIRECTORIES(${SP_INTERFACE_PATH}/include)
INCLUDE_DIRECTORIES( ${COMM_PATH}/source/interface/common
			${COMM_PATH}/source/utility
			${COMM_PATH}/source/utility/avm
			${COMM_PATH}/source/interface/avm
			${COMM_PATH}/source/utility/dim3
			${COMM_PATH}/source/utility/vehmdl
			${COMM_PATH}/source/interface/algo
			${COMM_PATH}/source/interface/smc
			${COMM_PATH}/source/interface/cv
			${COMM_PATH}/source/interface/cuda
			${COMM_PATH}/source/interface/math
			${COMM_PATH}/source/interface/gpu3d
			${COMM_PATH}/source/interface/ffmpeg
			${COMM_PATH}/source/utility/mmr
			${AVM_MGR_PATH}/include
			${AVM_PATH}/include)
			
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")

ADD_LIBRARY(${PROJECT_NAME} SHARED ${c_srcs} ${cxx_srcs})

TARGET_LINK_LIBRARIES(${PROJECT_NAME} libcomm.so libframeworkbase.so libavm.so)

#设置输出路径
SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")


