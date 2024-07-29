file(GLOB_RECURSE  c_srcs "${ROS_BRIDGE_PATH}/source/*.c")
file(GLOB_RECURSE  cxx_srcs "${ROS_BRIDGE_PATH}/source/RosBridge.cpp")
SET(CMAKE_CXX_FLAGS " -std=c++11 -fpermissive -fPIC -Wall -fms-extensions -Wno-write-strings -Wno-format-security -fno-short-enums -ggdb -ggdb3 -gdwarf-2 -mlittle-endian -mcpu=cortex-a72  -Wno-format-truncation")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_STATIC_LIB_ -DOPENCV=1") 
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}  -D_STATIC_LIB_") 

set(LIBRARIES
	frameworkbase
)
message(${SPACE_AUTOPILOT_PATH})
include_directories(${ROS_BRIDGE_PATH}/include
					${COMM_PATH}/thirdparty/lcm/include
					${COMM_PATH}/source/interface/common  
					${SPACE_AUTOPILOT_PATH}
					)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME} STATIC ${c_srcs} ${cxx_srcs})
#target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
