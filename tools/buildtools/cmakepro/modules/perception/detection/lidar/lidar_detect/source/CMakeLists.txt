file(GLOB_RECURSE  ${PROJECT_NAME}_c_srcs "${LIDAR_DETECT_PATH}/euclidean_cluster/*.c")
file(GLOB_RECURSE  ${PROJECT_NAME}_cxx_srcs "${LIDAR_DETECT_PATH}/euclidean_cluster/euclidean_cluster_core.cpp"
											"${LIDAR_DETECT_PATH}/lidar_ground_filter/ground_filter_core.cpp"
											"${LIDAR_DETECT_PATH}/fw_interface/*.cpp")

SET(CMAKE_CXX_FLAGS " -std=c++14 -fpermissive -fPIC -Wall -fms-extensions -Wno-write-strings -Wno-format-security -fno-short-enums -ggdb -ggdb3 -gdwarf-2 -mlittle-endian -mcpu=cortex-a72  -Wno-format-truncation")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DOPENCV=1") 

set(LIBRARIES
	frameworkbase
	sp_comm
)

include_directories(
					${LIDAR_DETECT_PATH}/euclidean_cluster/include
					${LIDAR_DETECT_PATH}/lidar_ground_filter/include
					${LIDAR_DETECT_PATH}/fw_interface
					${LIDAR_DETECT_PATH}/thirdparty
					${COMM_PATH}/thirdparty/opencv300/include/tda4
					${COMM_PATH}/thirdparty/boost_1_73_0
					${COMM_PATH}/thirdparty/Eigen
					${FW_SDK_PATH}/adaptor/driver/lidar/include
					${COMM_PATH}/source/interface/common
					${COMM_PATH}/source/interface/algo
					${ROS_BRIDGE_PATH}/include
					${LIDAR_DETECT_PATH}/include
					${COMM_PATH}/source/interface/cv
					)

include_directories(
			${LIDAR_DETECT_PATH}/euclidean_cluster/include
			${LIDAR_DETECT_PATH}/euclidean_cluster/src
			
		)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME} STATIC ${${PROJECT_NAME}_c_srcs} ${${PROJECT_NAME}_cxx_srcs})
#target_link_libraries(network_connector PRIVATE ${LIBRARIES}  libjsoncpp.a )

