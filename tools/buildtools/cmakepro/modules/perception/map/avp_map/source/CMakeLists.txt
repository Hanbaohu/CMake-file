#file(GLOB_RECURSE  c_srcs      "${TSML_PATH}/source/*.c")
file(GLOB_RECURSE cxx_srcs      "${AVPMAP_PATH}/3rdparty/kalmanfilter/*.cpp"
                                "${AVPMAP_PATH}/adapter/windows/*.cpp"
                                "${AVPMAP_PATH}/source/core/avpmap/source/*.cpp"
                                "${AVPMAP_PATH}/source/core/loc/*.cpp"
                                "${AVPMAP_PATH}/source/core/avpmap/source/tsmap/*.cpp"
                                "${AVPMAP_PATH}/source/core/avpmap/source/tsmap/*.cc"
                                #"${AVPMAP_PATH}/source/core/vehmdl/*.cpp"
                                #"${AVPMAP_PATH}/source/modules/odometry/*.cpp"
                                "${AVPMAP_PATH}/source/modules/topoloc/*.cpp"
                                "${AVPMAP_PATH}/source/utils/*.cpp"
                                )
LIST(REMOVE_ITEM cxx_srcs ${AVPMAP_PATH}/3rdparty/kalmanfilter/math_matrix.cpp)


set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_ON_TDA4_ -D_tda4_qnx_") #-D_AVP_MAP_ -DOPENCV=1 -DOENCV300=1 -DBEV_VER -D_ON_J3_ -# -D_STATIC_LIB_

set(LIBRARIES
	frameworkbase
	sp_comm
)

include_directories(    ${AVPMAP_PATH}/3rdparty
                        ${AVPMAP_PATH}/3rdparty/kalmanfilter
                        ${AVPMAP_PATH}/adapter/windows
                        ${AVPMAP_PATH}/source
                        ${AVPMAP_PATH}/source/core/avpmap/source
                        ${AVPMAP_PATH}/source/core/loc
                        ${AVPMAP_PATH}/source/core/vehmdl
                )

include_directories(    ${COMM_PATH}/thirdparty/avpmap/interface
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
                        ${COMM_PATH}/source/utility/maptool
                        ${COMM_PATH}/source/utility/helper
                        ${COMM_PATH}/source/utility/data_association
                        ${COMM_PATH}/source/utility/mmr
                        ${COMM_PATH}/source/utility/imgmorph			
                        ${FW_SDK_PATH}/fw_sdk/src
                        ${FW_SDK_PATH}/service/opencv/include
                        ${COMM_PATH}/thirdparty/opencv300/include/tda4
                        ${SP_INTERFACE_PATH}/include
                        ${SPACE_AUTOPILOT_PATH}
		)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(${PROJECT_NAME} SHARED ${c_srcs} ${cxx_srcs})
#target_link_libraries(avpmap PRIVATE ${LIBRARIES} )

