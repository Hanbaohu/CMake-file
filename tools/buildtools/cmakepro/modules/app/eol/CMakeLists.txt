project(eol)

file(GLOB_RECURSE  c_srcs "${EOL_PATH}/source/*.c")
file(GLOB_RECURSE  cxx_srcs "${EOL_PATH}/source/*.cpp")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ") 

include_directories(${EOL_PATH}/source
			${EOL_PATH}/source/EOL_calib_cb
			${EOL_PATH}/source/pc_wrapper
		)

include_directories(
			${COMM_PATH}/thirdparty/opencv300/include
			${COMM_PATH}/thirdparty/opencv300/include/opencv
			${COMM_PATH}/thirdparty/opencv300/include/opencv2
			${COMM_PATH}/thirdparty
			${COMM_PATH}/thirdparty/libcmatrix/include
			${COMM_PATH}/source/utility/common
			${COMM_PATH}/source/utility
			${COMM_PATH}/source/interface/comm
			${COMM_PATH}/interface/avm
			${COMM_PATH}/source/interface/gpu3d
			${COMM_PATH}/source
			${COMM_PATH}/source/interface/smc
			${COMM_PATH}/source/interface/math
			${COMM_PATH}/source/interface/common
			${COMM_PATH}/source/interface/avm
			${COMM_PATH}/thirdparty/Eigen
			${COMM_PATH}/source/interface/algo
			${EOL_IMAGELOADE_PATH}/source/
		)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME} SHARED ${c_srcs} ${cxx_srcs})
target_link_libraries(${PROJECT_NAME} PUBLIC ${LIBRARIES}  libsp_comm.so )

