
project(sp_autopilot)

file(GLOB_RECURSE cpp_src "${SPACEOS_LAUNCHER_LINUX_PATH}/SP_AUTOPILOT_INFS/src/*.c??")


INCLUDE_DIRECTORIES(${SPACEOS_LAUNCHER_LINUX_PATH}/SP_AUTOPILOT_INFS/src
					${SPACEOS_LAUNCHER_LINUX_PATH}/SP_AUTOPILOT_INFS/include)

INCLUDE_DIRECTORIES( 
            ${COMM_PATH}/source/interface/common
			${COMM_PATH}/source/utility
			${COMM_PATH}/source/utility/avm
			${COMM_PATH}/source/interface/avm
			${COMM_PATH}/source/utility/dim3
			${COMM_PATH}/source/utility/vehmdl
			${COMM_PATH}/source/utility
			${COMM_PATH}/source/interface/algo
			${COMM_PATH}/source/interface/smc
			${COMM_PATH}/source/interface/cv
			${COMM_PATH}/source/interface/cuda
			${COMM_PATH}/source/interface/math
			${COMM_PATH}/source/interface/gpu3d
			${COMM_PATH}/source/interface/schedule
			${COMM_PATH}/source/interface/hmi
			${COMM_PATH}/source/interface/hmi/hmihub			
			${COMM_PATH}/source/interface/iogateway
			${COMM_PATH}/source/utility/mmr
			${COMM_PATH}/source/utility/drsync
			${COMM_PATH}/source/utility/data_association
			${COMM_PATH}/thirdparty/avpmap/interface
			${COMM_PATH}/thirdparty/opencv300/include/tda4
			${FW_SDK_PATH}/fw_sdk/src
			${FW_SDK_PATH}/fw_bev/src
			${FW_SDK_PATH}/fw_record/src
			${FW_SDK_PATH}/service/opencv/include
			${CAN}/include
			${COM_DR}/source/interface/framework
			${COM_DR}/source/core
			${VEHICLECONTROL_PATH}/include
			${VEHICLECONTROL_PATH}/src
			${NETWORK_CONNECTOR_PATH}/source
			${NETWORK_CONNECTOR_PATH}/source/fw_adaptor
			${SEGPARSE_PATH}/source/interface
			${SEG_PATH}/source/interface
			${APA_MODULE}/source/fw_interface
			${PARKOCCUPY}/source/interface
			${PLD_PATH}/source/interface/framework
			${PATH_FOLLOW}/source/fw_interface
			${SCHEDULER_PATH}/include
			${SCHEDULER_PATH}/source/fw_adaptor
			${SCHEDULER_PATH}/source/event_trigger
			${AVPMAP_PATH}/3rdparty
			${AVPMAP_PATH}/3rdparty/kalmanfilter
			${AVPMAP_PATH}/adapter/windows
			${AVPMAP_PATH}/source
			${AVPMAP_PATH}/source/utils
			${AVPMAP_PATH}/source/core/avpmap/source
			#${AVPMAP_PATH}/source/core/avpmap/source/tsmap
			${AVPMAP_PATH}/source/core/loc
			${AVPMAP_PATH}/source/core/vehmdl
			${SLAM_PATH}/include/interface
			${AVPMAPONLINESCHEDULER_PATH}/source
			${BEHAVIORLAYER_PATH}/source/core
			${SPACE_AUTOPILOT_PATH}/avp_scheduler/include/common
			${PATH_FOLLOW}/source/include    
			${APA_COMM_MATH_PATH}/include
			${PATH_PLAN}/source/fw_interface
			${SPACENET_PATH}/source/framework
			${SPM_PATH}/source/framework
			${PARKOUT_PATH}/source/core
			${PARKOUT_PATH}/source/fw_interface
			${MDF_PATH}/source/framework
			${MDF_PATH}/source
			${ODHMI_PATH}/source/framework
			${ODHMI_PATH}/source
			${COMM_PATH}/source/utility/synchronizer
			${COMM_PATH}/source/utility/state_machine/hsm
			${AVP_BEHAVIORHSM_PATH}/source
			${AVP_PATHPLAN_PATH}/source/scheduler
			${AVP_PATHPLAN_PATH}/source/utility
			${CLOUD_CONNECTOR_PATH}/source/filter
			${CLOUD_CONNECTOR_PATH}/source/module
			${CLOUD_CONNECTOR_PATH}/mqttlib/src
			${COMM_PATH}/source/interface/app
			${SPACE_AUTOPILOT_PATH}/avp_scheduler/include/common
			${SPACE_AUTOPILOT_PATH}/avp_scheduler/source/scheduler/modules
			${MY_ROOT_DIR}/modules/sys_msg_debug/src
			${MY_ROOT_DIR}/modules/remote_key
			${FW_SDK_PATH}/service/lidar/include
			${LIDAR_DETECT_PATH}/fw_interface
			${COMM_PATH}/source/utility/pk_common
			${FW_SDK_PATH}/service/diagnostic/src
			${SPACEOS_LAUNCHER}/src/rpc
			${AVM_ICU3_PATH}/include
			)
			


link_directories(
                    ${THIRD_PARTY_LIB_PATH}/opencv/lib/
                    ${OUTPUT_PATH}

                    /home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/buildcuda/install/lib
)

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DSP_VENUS -D_ON_TDA4_ -D_MAIN_ -D_SP_AUTOPILOT_ ") 



ADD_LIBRARY(${PROJECT_NAME} SHARED ${c_src} ${cpp_src})

TARGET_LINK_LIBRARIES(${PROJECT_NAME} libframeworkbase.so libconfig_service.so libapi_adaptor.so libmemory_service.so libopencv_service.so libcomm.so libopencv_world.so  libapa_comm_math.so libzmq_service.so libmapservice.so pthread  dl ) #libgrid_map.so
add_dependencies(${PROJECT_NAME} frameworkbase comm config_service api_adaptor memory_service opencv_service  apa_comm_math  mapservice )
#设置输出路径
SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
SET(EXECUTABLE_OUTPUT_PATH "${OUTPUT_PATH}")
