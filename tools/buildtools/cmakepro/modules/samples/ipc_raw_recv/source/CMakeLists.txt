file(GLOB_RECURSE  cxx_srcs 
							"${IPC_RAW_RECV_SAMPLE_PATH}/src/*.cpp"
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DQNX --std=c++14 -D__QNX__ -D__EXT_QNX -D_QNX_SOURCE") 

set(LIBRARIES
# libcomm_static.a
# libpos_log.so
# librte.so
# libprotobuf.so
# libzmq.so
# libglog.so
# libtinyxml2.so
# libgflags.so
# libclass_loader.so
# libsocket.so

libipc.so
libcomm.so
libpos_log.so
librte.so 
libvsomeip-cfg.so.2
libvsomeip.so.2
libboost_log.so
libboost_log_setup.so
libboost_filesystem.so
libboost_regex.so
libboost_date_time.so
libboost_thread.so
libboost_chrono.so
libboost_atomic.so

libprotobuf.so
libprotobuf-lite.so
libvsomeip-sd.so
libprotoc.so
libzmq.so
libboost_system.so
libjsoncpp.so
libxml2.so.2
socket
)

include_directories(
					${SP_INTERFACE_PATH}/include	
					${HAOMO_LIBS}/comm
					${HAOMO_LIBS}/comm/proto
					${HAOMO_LIBS}/rte
					${HAOMO_LIBS}/log
					${HAOMO_LIBS}/ipc
					${HAOMO_LIBS}/../thirdparty/protobuf/include
					${HAOMO_LIBS}/../thirdparty/zmq/include
)


link_directories(
					#${RPC_SAMPLE_PATH}/lib
					#${HAOMO_IPC}/thirdparty/protobuf/lib/

					# POS 2.0
					${HAOMO_LIBS}/comm/lib
					${HAOMO_LIBS}/ipc/lib
					${HAOMO_LIBS}/rte/lib
					${HAOMO_LIBS}/log/lib

					${HAOMO_LIBS}/../thirdparty/protobuf/lib/
					${HAOMO_LIBS}/../thirdparty/zmq/lib/
					${HAOMO_LIBS}/../thirdparty/boost/lib/
					${HAOMO_LIBS}/../thirdparty/protobuf/lib/
					${THIRD_PARTY_LIB_PATH}/vsomeip/lib/
					${THIRD_PARTY_LIB_PATH}/jsoncpp/lib
)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
SET(EXECUTABLE_OUTPUT_PATH "${OUTPUT_PATH}/")
add_executable(${PROJECT_NAME} ${cxx_srcs} )

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
