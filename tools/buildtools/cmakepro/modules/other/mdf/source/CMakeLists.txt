
file(GLOB_RECURSE cxx_srcs      "${MDF_PATH}/source/api/*.cpp"
                                "${MDF_PATH}/source/core/*.cpp"
                                "${MDF_PATH}/source/framework/*.cpp"
                                )
#list(REMOVE_ITEM cxx_srcs "${MDF_PATH}/source/AvpStateController.cpp")
#message(${MDF_PATH})
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}  -D_STATIC_LIB_ -D_ON_TDA4_ -DOPENCV=1 -D_MDF_ -O3") # -D_BEHAVIORLAYER_ 

set(LIBRARIES
	frameworkbase
)

include_directories(    ${MDF_PATH}/source
                        ${MDF_PATH}/source/core
                        ${MDF_PATH}/source/core/bev
                    
                )

include_directories(    ${AVP_PATHPLAN_PATH}/source/utility
                        ${APA_COMM_MATH_PATH}/include
                        ${GRID_MAP}/inc
                        ${COMM_PATH}/thirdparty
                        ${COMM_PATH}/thirdparty/Eigen
                        ${COMM_PATH}/thirdparty/avpmap/interface
						${COMM_PATH}/source/interface/common
                        ${COMM_PATH}/source/interface/avm
                        ${COMM_PATH}/source/interface/algo
                        ${COMM_PATH}/source/interface/smc
                        ${COMM_PATH}/source/interface/cv
                        ${COMM_PATH}/source/interface/schedule
                        ${COMM_PATH}/source/interface/math
                        ${COMM_PATH}/source/interface/gpu3d
                        ${COMM_PATH}/source/interface/ml
                        ${COMM_PATH}/source/interface/cnn
                        ${COMM_PATH}/source/utility
                        ${COMM_PATH}/source/utility/bev
                        ${COMM_PATH}/source/utility/avm
                        ${COMM_PATH}/source/utility/dim3
                        ${COMM_PATH}/source/utility/vehmdl
                        ${COMM_PATH}/source/utility/synchronizer
                        ${COMM_PATH}/source/utility/math
                        ${COMM_PATH}/source/utility/data_association
                        ${COMM_PATH}/source/utility/mmr
                        ${COMM_PATH}/source/utility/imgmorph	
                        ${COMM_PATH}/source/utility/helper
                        ${COMM_PATH}/source/utility/logparser	
                        ${COMM_PATH}/source/utility/sobject	
                        ${COMM_PATH}/source/utility/kalman	
                        ${COMM_PATH}/thirdparty/opencv300/include/tda4
                        ${FW_SDK_PATH}/fw_sdk/src
                        ${FW_SDK_PATH}/service/opencv/include
                        ${DAFW_PATH}/arm_src/Interface/include
                        ${SPACE_AUTOPILOT_PATH}
		)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME} STATIC ${c_srcs} ${cxx_srcs})
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES} )

