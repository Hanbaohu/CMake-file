file(GLOB_RECURSE  c_srcs "${LIB_DBO_W2}/src/*.c")
file(GLOB_RECURSE  cxx_srcs "${LIB_DBO_W2}/src/*.c??")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DOPENCV=1 -DOENCV300=1") #-D_PLD_

include_directories(${LIB_DBO_W2}/src/DBoW2
                    ${LIB_DBO_W2}/src/DUtils)
                    
SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME} SHARED ${c_srcs} ${cxx_srcs})
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

