
###############################################################################
# 差异的链接库路径,命令方式固定：模块名字_link_directories,多个话之间用分号;隔开，不能用空格，
# 如：set(comm_link_directories ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################

set(mp4_playback_link_directories
    "${THIRD_PARTY_LIB_PATH}/ffmpeg-4.4.1/lib/"
    "${THIRD_PARTY_LIB_PATH}/x264-1.6.4/lib"
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/FFmpeg/build/lib"
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/x264/build/lib"
)
set(slam_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/build/install/lib"
    "${OUTPUT_PATH}"

)

set(can_adaptor_link_directories
    ${COMM_PATH}/thirdparty/spi_mcu/lib
    ${APP_MODULE_DIR}/spi_test_src/lib
)
    
set(can_link_directories
    ${APP_MODULE_DIR}/spi_test_src/lib
)

set(zmq_service_link_directories
    ${HORIZON_COMM_PATH}/third_party/glog/lib
    ${HORIZON_COMM_PATH}/third_party/libzmq-with-openpgm/lib
    ${HORIZON_COMM_PATH}/third_party/libjpeg-turbo/lib
    ${HORIZON_COMM_PATH}/deps/horizon/hobot/lib
    ${HORIZON_COMM_PATH}/horizon/hobot-auto-protocol/lib
    ${HORIZON_COMM_PATH}/third_party/libzmq-with-openpgm/lib
    ${HORIZON_COMM_PATH}/horizon/communication/lib

    "/home/test/workspace/workspace/spaceos_linux/thirdparty/libzmq/build/lib/"
)

###############################################################################
# 差异的链接库,命令方式固定：模块名字_link_libraries,多个话之间用分号;隔开，不能用空格，
# 如：set(comm_link_libraries ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################

set(mp4_playback_link_libraries
    "avcodec"
    "avdevice"
    "avfilter"
    "avformat"
    "postproc"
    "avutil"
    "swresample"
    "swscale"
    # "bz2"
    "x264"
    "j6_demux"
)

set(slam_link_libraries  
    "opengv"
    "g2o"
    "opencv_world"
)

set(can_adaptor_link_libraries
        spi_j3
)

set(zmq_service_link_libraries
    
)

set( scenemanager_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/build/lib"
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/x264/build/lib"
)

set( scenemanager_link_libraries
    opencv_world
)

set( SP_PK_PathFollow_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/build/install/lib"
)

set( SP_PK_PathFollow_link_libraries
    opencv_world
)

set( SP_PK_SensorFusion_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/build/install/lib"
)

set( SP_PK_SensorFusion_link_libraries
    opencv_world
)

set( SP_PK_SlotDetect_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/build/install/lib"
)

set( SP_PK_SlotDetect_link_libraries
    opencv_world
)

set( spacemap_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/build/install/lib"
)

set( spacemap_link_libraries
    opencv_world
)


set( SP_PK_SlotDetect_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/build/install/lib"
)

set( SP_PK_SlotDetect_link_libraries
    opencv_world
)

set( avp_behaviorDecision_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/build/install/lib"
)

set( avp_behaviorDecision_link_libraries
    opencv_world
)

set( fw_bev_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/build/install/lib"
)

set( fw_bev_link_libraries
    opencv_world
)

set( space_tracking_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/build/install/lib"
)

set( space_tracking_link_libraries
    opencv_world
)

set( spacenet_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/buildcuda/install/lib"
)

set( spacenet_link_libraries
    opencv_world
)

set( pld_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/buildcuda/install/lib"
)

set( pld_link_libraries
    opencv_world
)

set( hmihub_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/buildcuda/install/lib"
)

set( hmihub_link_libraries
    opencv_world
)

set( segparse_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/buildcuda/install/lib"
)

set( segparse_link_libraries
    opencv_world
)

set( io_gateway_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/protobuf/build311/lib"
)

set( io_gateway_link_libraries
    libprotobuf.so
)

set( tsml_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/buildcuda/install/lib"
)

set( tsml_link_libraries
    opencv_world
)

set( avp_localplanner_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/buildcuda/install/lib"
)

set( avp_localplanner_link_libraries
    opencv_world
)

set( sp_pk_hastar_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/buildcuda/install/lib"
)

set( sp_pk_hastar_link_libraries
    opencv_world
)


set( SP_PK_SonarProc_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/buildcuda/install/lib"
)

set( SP_PK_SonarProc_link_libraries
    opencv_world
)

set( SP_PK_VehicleControl_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/buildcuda/install/lib"
)

set( SP_PK_VehicleControl_link_libraries
    opencv_world
)

set( DebugMonitor_link_directories
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/opencv/buildcuda/install/lib"
)

set( DebugMonitor_link_libraries
    opencv_world
)

