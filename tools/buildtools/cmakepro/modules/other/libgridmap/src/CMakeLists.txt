file(GLOB_RECURSE  c_srcs "${GRID_MAP}/src/*.c")
file(GLOB_RECURSE  cxx_srcs "${GRID_MAP}/src/*.c??")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}  -O3") #-D_PLD_ -DOPENCV=1 -DOENCV300=1

include_directories(${GRID_MAP}/inc
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
                    ${COMM_PATH}/thirdparty/Eigen)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME} SHARED ${c_srcs} ${cxx_srcs})
#target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

