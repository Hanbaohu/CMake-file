
file(GLOB_RECURSE cxx_srcs      "${ODHMI_PATH}/source/api/*.cpp"
                                "${ODHMI_PATH}/source/core/*.cpp"
                                "${ODHMI_PATH}/source/framework/*.cpp"
                                )
list(REMOVE_ITEM cxx_srcs "${ODHMI_PATH}/source/core/utils/debug/debug.cpp")

#message(${ODHMI_PATH})
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_STATIC_LIB_ -D_ON_TDA4_ -O3") #  -DOPENCV=1 -DOPENCV300=1 -D_BEHAVIORLAYER_ 

set(LIBRARIES
	frameworkbase
	sp_comm
    grid_map
)

include_directories(    ${ODHMI_PATH}/source
                        ${ODHMI_PATH}/source/core
                    
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
                        ${COMM_PATH}/source/utility
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
                        ${COMM_PATH}/thirdparty/opencv300/include/tda4
                        ${FW_SDK_PATH}/fw_sdk/src
                        ${FW_SDK_PATH}/service/opencv/include
                        ${DAFW_PATH}/arm_src/Interface/include
                        ${SPACE_AUTOPILOT_PATH}
		)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME} STATIC ${c_srcs} ${cxx_srcs})
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES} )

