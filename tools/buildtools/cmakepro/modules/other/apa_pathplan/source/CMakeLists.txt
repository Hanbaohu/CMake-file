file(GLOB_RECURSE  c_srcs "${APA_PATH_PLAN}/source/*.c")
file(GLOB_RECURSE  cxx_srcs "${APA_PATH_PLAN}/source/*.c??")

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DOPENCV=1 -DOPENCV300=1") #-D_PLD_

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fpermissive")#-D_STATIC_LIB_ 

include_directories(${APA_PATH_PLAN}/include
					${APA_PATH_PLAN}/source
                    ${GRID_MAP}/inc
                    ${APA_COMM_MATH_PATH}/include
                    ${PATH_FOLLOW}/source/include
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
					${COMM_PATH}/source/utility/state_machine/hsm
                    ${COMM_PATH}/thirdparty/Eigen
                    ${FW_SDK_PATH}/adaptor/os/API/include
                    ${FW_SDK_PATH}/service/opencv/include)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME} SHARED ${c_srcs} ${cxx_srcs})
#target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

