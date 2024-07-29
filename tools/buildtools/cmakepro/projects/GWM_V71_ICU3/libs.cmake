
###############################################################################
# 差异的链接库路径,命令方式固定：模块名字_link_directories,多个话之间用分号;隔开，不能用空格，
# 如：set(sp_comm_link_directories ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################
# link_directories(${OUTPUT_PATH})

set(slam_link_directories
    "${THIRD_PARTY_LIB_PATH}/slam_3rdparty"
)
set(mp4_playback_link_directories
    "${THIRD_PARTY_LIB_PATH}/ffmpeg/lib/shared"
    "${THIRD_PARTY_LIB_PATH}/x264/lib"
)

###############################################################################
# 差异的链接库,命令方式固定：模块名字_link_libraries,多个话之间用分号;隔开，不能用空格，
# 如：set(sp_comm_link_libraries ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################

set(hmihub_link_libraries 
    "mapservice"
)
set(slam_link_libraries  
    "libg2o.so"
    "libopengv.a"
    "libopencv_service.so"
)
set(mp4_playback_link_libraries
    "libavcodec.so"
    "libavdevice.so"
    "libavfilter.so"
    "libavformat.so"
    "libpostproc.so"
    "libavutil.so"
    "libswresample.so"
    "libswscale.so"
    "bz2"
    "libx264.so"
    "libj6_demux.so"
    "libsp_comm.so"
)
set(routing_link_libraries  
    "mapservice"
)
set(tsml_link_libraries  
    "mapservice"
)
set(space_tracking_link_libraries  
    "sp_comm"
    "opencv_service"
)
set(mapservice_link_libraries  
    "space_havpmap"
    "hdmap_wrapper"
)

set(can_adaptor_link_libraries  
        frameworkbase
        sp_comm
        libprotobuf.so
        libprotoc.so
        librte.so
        libcomm_static.a 
        libipc.so
        )

set(can_adaptor_link_directories
        ${HAOMO_IPC}/thirdparty/protobuf/lib/
        ${HAOMO_LIBS}/comm/lib
        ${HAOMO_LIBS}/rte/lib
        ${HAOMO_LIBS}/ipc/lib
        )