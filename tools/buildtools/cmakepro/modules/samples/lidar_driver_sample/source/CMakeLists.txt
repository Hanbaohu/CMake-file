file(GLOB_RECURSE  cxx_srcs 
							"${LIDAR_DIRVER_PATH}/demo_src/*.cpp"
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DQNX --std=c++14 -D__QNX__ -D__EXT_QNX -D_QNX_SOURCE") 
set(LIBRARIES
socket
pcap
)

include_directories(	${LIDAR_DIRVER_PATH}/
						${LIDAR_DIRVER_PATH}/include

)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}/")
SET(EXECUTABLE_OUTPUT_PATH "${OUTPUT_PATH}/")
add_executable(${PROJECT_NAME} ${cxx_srcs} )

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
