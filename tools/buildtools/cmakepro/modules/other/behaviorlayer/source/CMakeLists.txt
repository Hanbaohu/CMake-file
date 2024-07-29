#file(GLOB_RECURSE  c_srcs "${BEHAVIORLAYER_PATH}/source/*.c")
file(GLOB_RECURSE  cxx_srcs "${BEHAVIORLAYER_PATH}/source/*.cpp"
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_STATIC_LIB_") # -DOPENCV=1 -DOENCV300=1 -DBEV_VER -D_ON_J3_

set(LIBRARIES
	frameworkbase
	sp_comm
	avpmap
)

include_directories(${BEHAVIORLAYER_PATH}/source
					)

include_directories(${COMM_PATH}/thirdparty/avpmap/interface
					${AVPSCHEDULER_PATH}/source/utility
					${RADAR_PATH}/source
					${TSML_PATH}/source/core/vehmdl
					
					${COMM_PATH}/source/interface/common
                    ${COMM_PATH}/source/interface/avm
					${COMM_PATH}/source/interface/algo
					${COMM_PATH}/source/interface/smc
					${COMM_PATH}/source/interface/cv
					${COMM_PATH}/source/interface/schedule
					${COMM_PATH}/source/interface/math
					${COMM_PATH}/source/interface/gpu3d
					${COMM_PATH}/source/interface/ml
					${COMM_PATH}/source/utility
					${COMM_PATH}/source/utility/avm
					${COMM_PATH}/source/utility/dim3
					${COMM_PATH}/source/utility/vehmdl
					${COMM_PATH}/source/utility/kalman
					${COMM_PATH}/source/utility/math
					${COMM_PATH}/source/utility/data_association
					${COMM_PATH}/source/utility/mmr
					${COMM_PATH}/source/utility/imgmorph
					${SPACE_AUTOPILOT_PATH}/avp_scheduler/source/utility			
					${FW_SDK_PATH}/fw_sdk/src
					${FW_SDK_PATH}/service/opencv/include
					${DAFW_PATH}/arm_src/Interface/include
					${SPACE_AUTOPILOT_PATH}
			)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(behaviorlayer STATIC ${c_srcs} ${cxx_srcs})
#target_link_libraries(behaviorlayer PRIVATE ${LIBRARIES})

