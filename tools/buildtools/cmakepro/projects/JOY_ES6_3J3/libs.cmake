
###############################################################################
# 差异的链接库路径,命令方式固定：模块名字_link_directories,多个话之间用分号;隔开，不能用空格，
# 如：set(sp_comm_link_directories ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################

set(mp4_playback_link_directories
    "${THIRD_PARTY_LIB_PATH}/ffmpeg-4.4.1/lib/"
    "${THIRD_PARTY_LIB_PATH}/x264-1.6.4/lib"
)
set(slam_link_directories
    "${THIRD_PARTY_LIB_PATH}/opengv/lib"
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
)

###############################################################################
# 差异的链接库,命令方式固定：模块名字_link_libraries,多个话之间用分号;隔开，不能用空格，
# 如：set(sp_comm_link_libraries ${COMM_PATH}/thirdparty/opencv300/include/tda4)
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
)

set(can_adaptor_link_libraries
        spi_j3
)

set(zmq_service_link_libraries
    debug
    hobot-auto-protocold
    optimized
    hobot-auto-protocol
    communication-static
)