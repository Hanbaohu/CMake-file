#file(GLOB_RECURSE  c_srcs      "${CLOUD_CONNECTOR_PATH}/source/*.c")
file(GLOB_RECURSE cxx_srcs      "${CLOUD_CONNECTOR_PATH}/source/filter/filters.cpp"
                                "${CLOUD_CONNECTOR_PATH}/source/module/*.cpp"
                                )

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_ON_TDA4_HENGDA_ -D_STATIC_LIB_") #

set(LIBRARIES
	frameworkbase
	sp_comm
)

include_directories(    
                        ${CLOUD_CONNECTOR_PATH}/source/filter
                        ${CLOUD_CONNECTOR_PATH}/source/module
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
                        ${COMM_PATH}/source/interface/app
                        ${COMM_PATH}/source/utility
                        ${COMM_PATH}/source/utility/avm
                        ${COMM_PATH}/source/utility/dim3
                        ${COMM_PATH}/source/utility/vehmdl
                        ${COMM_PATH}/source/utility/kalman
                        ${COMM_PATH}/source/utility/math
                        ${COMM_PATH}/source/utility/data_association
                        ${COMM_PATH}/source/utility/mmr
                        ${COMM_PATH}/source/utility/imgmorph	
                        ${COMM_PATH}/thirdparty/mqtt/arm64/horizon_j3/mqttcpp/include
                        ${COMM_PATH}/thirdparty/mqtt/arm64/horizon_j3/mqttc/include
                        ${CLOUD_CONNECTOR_PATH}/rapidjson
                        ${FW_SDK_PATH}/fw_sdk/src
                        ${FW_SDK_PATH}/service/opencv/include
                        ${DAFW_PATH}/arm_src/Interface/include
                        ${SPACE_AUTOPILOT_PATH}
		)


link_directories(
			${DEPS_ROOT}/opencv/lib
			${COMM_PATH}/thirdparty/boost_1_73_0/arm64
			${COMM_PATH}/thirdparty/jsoncpp/arm64
            ${COMM_PATH}/thirdparty/mqtt/arm64/ti_tda4/mqttc/lib64
            ${COMM_PATH}/thirdparty/mqtt/arm64/ti_tda4/mqttcpp/lib64
		)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
add_library(cloudconnector STATIC ${c_srcs} ${cxx_srcs})
target_link_libraries(cloudconnector PUBLIC ${LIBRARIES} libpaho-mqtt3a.so libpaho-mqttpp3.so )
