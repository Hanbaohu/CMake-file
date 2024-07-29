
###############################################################################
# 差异的源文件路径,命令方式固定：模块名字_src_directories,多个话之间用分号;隔开，不能用空格，
# 如：set( api_adaptor_src_directories  ""${FW_SDK_PATH}/adaptor/os/API/src/threadoperation.cpp";")
###############################################################################
set( can_adaptor_src_files   "${FW_SDK_PATH}/adaptor/driver/can/src/platform/J3/CJ3CanSource.cpp"
                             "${FW_SDK_PATH}/adaptor/driver/can/src/platform/J3/CJ3ZmqCanSource.cpp"
                                )
set( spacenet_src_files   "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_and_seg_inference_bpu.cpp"
                                        )

# set( zmq_service_src_files
#         "${FW_SDK_PATH}/service/communication/zmq/src/platform/horizon_zmq/horizon_zmq.cpp"
#         "${FW_SDK_PATH}/service/communication/zmq/src/datacontainer/horizon/space_raw.pb.cc"
# )

###############################################################################
# 差异的头文件路径,命令方式固定：模块名字_include_directories,多个话之间用分号;隔开，不能用空格，
# 如：set(comm_include_directories ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################
set( platform_opencv_include_directories  "${COMM_PATH}/thirdparty/opencv300/include/tda4")
set( spacenet_include_directories "${APP_MODULE_DIR}/apa/code/common/bpu-predict/release/bpu-predict/include;"
                                  "${APP_MODULE_DIR}/../deps/aarch64/bpu_predict/include;"    
                                  
                                  "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/buildcudnn/install/include/opencv4/"
)
set( mp4_playback_include_directories "${COMM_PATH}/source/interface/ffmpeg/;")
set( zmq_service_include_directories
        "${COMM_PATH}/thirdparty/zmq/include;"

)

set( network_service_include_directories
         "${COMM_PATH}/thirdparty/zmq/include;"
)
set( can_include_directories
   "${FW_SDK_PATH}/service/network/include;"
)


set( can_adaptor_include_directories
                                "${FW_SDK_PATH}/adaptor/driver/can/src/platform/J3/;"
                                "${FW_SDK_PATH}/adaptor/driver/can/src/platform/J3/zmq/inc;"
                                "${COMM_PATH}/thirdparty/spi_mcu/inc;"
                                "${COMM_PATH}/source/utility/memory;"
)

set( fw_bev_include_directories
                                 "${COMM_PATH}/thirdparty/opencv300/include/tda4"
)

set (SP_PK_SensorFusion_include_directories
                                 "${COMM_PATH}/thirdparty/Eigen/"
)

set(avp_behaviorDecision_include_directories
                                 "${COMM_PATH}/thirdparty/boost_1_73_0/"
)

set(scenemanager_include_directories
                                 "${COMM_PATH}/thirdparty/opencv300/include/tda4"
)