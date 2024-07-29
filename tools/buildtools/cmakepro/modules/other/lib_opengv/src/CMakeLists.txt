file(GLOB_RECURSE  c_srcs "${LIB_OPENGV}/src/*.c")
file(GLOB_RECURSE  cxx_srcs "${LIB_OPENGV}/src/*.c??")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DOPENCV=1 -DOENCV300=1 -O3") #-D_PLD_

include_directories(
                    ${LIB_OPENGV}/include
                    ${LIB_OPENGV}/third_party
                    ${LIB_OPENGV}/third_party/eigen3/unsupported
                    ${LIB_OPENGV}/third_party/Eigen
                    ${LIB_OPENGV}/third_party/eigen3
)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME} SHARED ${c_srcs} ${cxx_srcs})
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
