
file(GLOB_RECURSE  cxx_srcs "${UDP_TEST}/*.c??"
							)


set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_VEHICLEMOTION_ -D_STATIC_LIB_") 
set(LIBRARIES
	socket
)

include_directories(
					${UDP_TEST}/
			
)
SET(EXECUTABLE_OUTPUT_PATH "${OUTPUT_PATH}")

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")

link_libraries(socket)
add_executable(${PROJECT_NAME}  ${cxx_srcs} )


