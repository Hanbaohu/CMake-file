file(GLOB_RECURSE  c_srcs "${APA_MODULE}/source/apa_logic/*.c"
							"${APA_MODULE}/source/core/*.c"
							"${APA_MODULE}/source/fw_interface/*.c"
							"${APA_MODULE}/source/rpa_logic/*.c")
file(GLOB_RECURSE  cxx_srcs "${APA_MODULE}/source/apa_logic/*.c??"
							"${APA_MODULE}/source/core/cmd/*.c??"
							"${APA_MODULE}/source/core/perceptionfusion/*.c??"
							"${APA_MODULE}/source/core/pldfusion/*.c??"
							"${APA_MODULE}/source/core/state/*.c??"
							"${APA_MODULE}/source/core/scheduler/*.c??"
							"${APA_MODULE}/source/core/sensors/*.c??"
							"${APA_MODULE}/source/core/slot/*.c??"
							"${APA_MODULE}/source/core/safe/sonar_aeb/CalSonarPositionRealTime.cpp"
							"${APA_MODULE}/source/core/safe/sonar_aeb/CommonFunction.cpp"
							"${APA_MODULE}/source/core/safe/sonar_aeb/Control.cpp"
							"${APA_MODULE}/source/core/safe/sonar_aeb/LockPointOnTrajectory.cpp"
							"${APA_MODULE}/source/core/safe/sonar_aeb/VehicleControl.cpp"
							"${APA_MODULE}/source/core/safe/safe_manager.cpp"
							"${APA_MODULE}/source/core/apa_data_rec.cpp"
							"${APA_MODULE}/source/core/apa_params.cpp"
							"${APA_MODULE}/source/core/apa.cpp"
							"${APA_MODULE}/source/tools/CarSonarSim.cpp"
							"${APA_MODULE}/source/tools/DataRec.cpp"
#							"${APA_MODULE}/source/tools/VehicleMovementSim.cpp"
#							"${APA_MODULE}/source/tools/sonar_test/*.cpp"
							"${APA_MODULE}/source/adaptor/*.c??"
							"${APA_MODULE}/source/fw_interface/*.c??"
							"${APA_MODULE}/source/rpa_logic/*.c??")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_APA_ -fpermissive") #-DDISPLAYTOOL=3  -DOPENCV=1 -DOPENCV300=1   -D_STATIC_LIB_

set(LIBRARIES
	frameworkbase
	sp_comm
	apa_comm_math
	apa_pathplan
	grid_map
	lib_path_follow
	path_follow
)

include_directories(${APA_MODULE}/include
			${APA_MODULE}/source/
			${APA_MODULE}/source/core
			${APA_PATH_PLAN}/include
            ${GRID_MAP}/inc
			${PATH_FOLLOW}/source/include
			${APA_COMM_MATH_PATH}/include
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
			${COMM_PATH}/thirdparty/Eigen
			${COMM_PATH}/thirdparty/avpmap/interface
			${FW_SDK_PATH}/fw_sdk/src
			${FW_SDK_PATH}/service/opencv/include
			${FW_SDK_PATH}/adaptor/os/API/include
			${SP_INTERFACE_PATH}/include
			${SPACE_AUTOPILOT_PATH})

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME} SHARED ${c_srcs} ${cxx_srcs})
#target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
