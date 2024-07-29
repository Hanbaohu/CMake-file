
file(GLOB_RECURSE  cxx_srcs "${SOMEIP_PATH}/source/*.c??"

)

file(GLOB_RECURSE  cxx_srcs_server "${SOMEIP_PATH}/serversource/*.c??"

)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11") 

set(LIBRARIES
	libvsomeip.so
	libvsomeip-sd.so
	libvsomeip-cfg.so
	libboost_system.so
	libboost_thread.so
	libboost_log.so
	libboost_chrono.so
	libboost_date_time.so
	libboost_atomic.so
	libboost_log_setup.so
	libboost_filesystem.so
	libboost_regex.so
	libpps.so
)

include_directories(	${SOMEIP_PATH}/
						${THIRD_PARTY_LIB_PATH}/vsomeip/header/
			
)

link_directories(	${THIRD_PARTY_LIB_PATH}/vsomeip/lib
					${HAOMO_IPC}/thirdparty/boost/lib

)
SET(EXECUTABLE_OUTPUT_PATH "${OUTPUT_PATH}/")

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")

link_libraries(${LIBRARIES})
add_executable(hello_world_client  ${cxx_srcs} )
add_executable(hello_world_service  ${cxx_srcs_server} )


