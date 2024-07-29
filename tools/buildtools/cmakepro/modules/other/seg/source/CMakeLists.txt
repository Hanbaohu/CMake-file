file(GLOB_RECURSE  c_srcs "${SEG_PATH}/source/*.c")
file(GLOB_RECURSE  cxx_srcs "${SEG_PATH}/source/core/*.cpp"
"${SEG_PATH}/source/interface/*.cpp")
#"${SEG_PATH}/source/platform/j3/*.cpp")
#"${SEG_PATH}/source/platform/pc/*.cpp")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DBEV_VER -D_ON_TDA4_ ") #-D_PLD_ -DOPENCV=1 -DOPENCV300=1 -D_ON_J3_

set(LIBRARIES
	frameworkbase
	sp_comm
)

include_directories(${SEG_PATH}/source/core
					${SEG_PATH}/source/interface
					${SEG_PATH}/source/platform/j3
					${SEG_PATH}/source/platform/pc
					)

include_directories(${COMM_PATH}/source/interface/common
                    ${COMM_PATH}/source/interface/avm
			${COMM_PATH}/source/interface/algo
			${COMM_PATH}/source/interface/smc
			${COMM_PATH}/source/interface/cv
			${COMM_PATH}/source/interface/schedule
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
			${COMM_PATH}/source/utility/imgmorph
			${COMM_PATH}/thirdparty/avpmap/interface			
			${FW_SDK_PATH}/fw_sdk/src
			${FW_SDK_PATH}/service/opencv/include
			${DAFW_PATH}/arm_src/Interface/include)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(seg SHARED ${c_srcs} ${cxx_srcs})
#target_link_libraries(seg PRIVATE ${LIBRARIES})

