project(stitch)

file(GLOB_RECURSE  c_srcs "${STITCH_PATH}/source/*.c")
file(GLOB_RECURSE  cxx_srcs "${STITCH_PATH}/source/*.cpp")

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
			${FW_BASE_PATH}/src/utility
			${STITCH_PATH}/include
			${STITCH_PATH}/source/core)

ADD_LIBRARY(${PROJECT_NAME} SHARED ${c_srcs} ${cxx_srcs})

TARGET_LINK_LIBRARIES(${PROJECT_NAME} libsp_comm.so libframeworkbase.so)

#设置输出路径
SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")