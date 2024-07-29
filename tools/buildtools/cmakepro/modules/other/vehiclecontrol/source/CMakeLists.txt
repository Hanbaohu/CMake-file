set(vv6 FALSE)
if(vv6)
	SET(VEHICLECONTROL_PATH "${MY_ROOT_DIR}/space_modules/avp_waic_demo/vehiclecontrol_vv6")
endif()
file(GLOB_RECURSE  c_srcs "${VEHICLECONTROL_PATH}/src/*.c"
							)
file(GLOB_RECURSE  cxx_srcs "${VEHICLECONTROL_PATH}/src/*.c??"
							)
if(NOT vv6)							
list(REMOVE_ITEM cxx_srcs ${VEHICLECONTROL_PATH}/src/VehicleControlUtility.cpp)
endif()
#SET(CMAKE_CXX_FLAGS "-fPIC -g -Wno-psabi -O0 -Dlinux -fpermissive -std=c++11")
#SET(CMAKE_C_FLAGS "-fPIC -Wno-psabi -g -O0 -Dlinux")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_VEHICLEMOTION_ -D_STATIC_LIB_") #-DDISPLAYTOOL=3  -DOPENCV=1 -DOPENCV300=1  -D_VEHICLEMOTION_
set(LIBRARIES
	frameworkbase
	sp_comm
)

include_directories(${VEHICLECONTROL_PATH}/include
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
			${COMM_PATH}/source/interface/schedule
			${COMM_PATH}/source/interface/display
			${COMM_PATH}/thirdparty/Eigen
			${COMM_PATH}/thirdparty/avpmap/interface
			${FW_SDK_PATH}/fw_sdk/src
			${FW_SDK_PATH}/service/opencv/include
			${FW_SDK_PATH}/adaptor/os/API/include
			${SP_INTERFACE_PATH}/include
			${SPACE_AUTOPILOT_PATH})

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME} STATIC ${c_srcs} ${cxx_srcs})
#target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

