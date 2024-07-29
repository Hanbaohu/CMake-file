
###############################################################################
# 差异的链接库路径,命令方式固定：模块名字_link_directories,多个话之间用分号;隔开，不能用空格，
# 如：set(comm_link_directories ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################

# windows各个模块用了不同版本的opencv，没有统一；但嵌入式是统一用一种版本的，这时platform_opencv_include_directories可以打开
# set( platform_opencv_link_directories  "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib")

set(comm_link_directories
"${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib"
)
set(pld_link_directories
"${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib"
)
set(hmihub_link_directories
"${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib"
)
set(fw_bev_link_directories
"${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib"
)
set(DebugMonitor_link_directories
"${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib"
)
set(spacemap_link_directories
"${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib"
"${COMM_PATH}/thirdparty/hastar/library"
)
set(opencv_service_link_directories
        "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
)
set(SP_PK_VehicleControl_link_directories
        "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
)
set(sp_pk_meb_link_directories
        "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
)
set(avp_localplanner_link_directories
        "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
)
set(XDMA_link_directories
        "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
)

set(SP_PK_SonarProc_link_directories
        "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
)
set(SP_PK_ObjAvoid_link_directories
        "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
)
set(SP_PK_PathFollow_link_directories
        "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
)

set(SP_PK_StateManager_all_link_directories
        "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
)
set(SP_PK_SensorFusion_link_directories
        "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
)

set(tsml_link_directories
        "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
)
set(zmq_service_link_directories
            "${COMM_PATH}/thirdparty/protobuf/lib/x86_64"
            "${COMM_PATH}/thirdparty/zmq/lib/x86_64"
)
set(frameworkbase_link_directories
            "${COMM_PATH}/thirdparty/protobuf/lib/x86_64"
            "${COMM_PATH}/thirdparty/easy_profiler/x64/lib"
            "${COMM_PATH}/thirdparty/ffmpeg/lib/x64"
            "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
)
set(media_service_link_directories
            "${COMM_PATH}/thirdparty/ffmpeg/lib/x64"
)
set(slam_link_directories
"${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib"
"${SLAM_PATH}/lib"
)

set(mp4_playback_link_directories
    "${COMM_PATH}/thirdparty/ffmpeg/lib/x64"
    "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib"
)

set( io_gateway_include_directories  "${MY_ROOT_DIR}/spaceos/tools/buildtools/cmakepro/projects/${CMAKE_PROJECT}/platform_lib/libprotobuf/include")
set(io_gateway_link_directories
    "${MY_ROOT_DIR}/spaceos/tools/buildtools/cmakepro/projects/${CMAKE_PROJECT}/platform_lib/libprotobuf/lib"
)

set(fw_bev_link_directories  "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib") 
set(network_connector_link_directories  
    "${COMM_PATH}/thirdparty/boost_1_73_0/x64lib;"
    "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib"
    "${COMM_PATH}/thirdparty/jsoncpp/lib_x64;"
) 

set(space_tracking_link_directories  "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib") 

set(segparse_link_directories  "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib") 

set(spacenet_link_directories          
"${COMM_PATH}/thirdparty/opencv460/lib/x64/vc16/lib;"
"${cuda_dir}/lib/x64"
) 
set(SP_PK_SlotDetect_link_directories          "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;") 

set(apa_debug_monitor_link_directories  "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib") 

set(scenemanager_link_directories   
"${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib"
) 
set(fw_record_link_directories   
"${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib"
"${COMM_PATH}/thirdparty/ffmpeg/lib/x64"

) 
set( monitor_pro_link_directories 
        "${MY_ROOT_DIR}/spaceos/tools/buildtools/cmakepro/projects/${CMAKE_PROJECT}/platform_lib/libopenssl-3.1.0/lib64"
        "${MY_ROOT_DIR}/spaceos/tools/buildtools/cmakepro/projects/${CMAKE_PROJECT}/platform_lib/libprotobuf/lib"
   )
set(avp_behaviorDecision_link_directories   
    "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
    "${COMM_PATH}/thirdparty/hastar/library"
) 

set(display_link_directories   
    "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
    "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib"
    "${MY_ROOT_DIR}/spaceos/spaceos_launcher/port/vc2019/x64/Release;"
)

set(LidarNet_link_directories
    "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
    "${COMM_PATH}/thirdparty/multiprocess;"
    "${COMM_PATH}/thirdparty/pcl-1.8.1/lib;"
)

set(eol_imageloader_link_directories
    "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib;"
)

set(Lidar_HMI_link_directories
    "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
)

set(web_hmi_server_link_directories
    "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib;"
    "${COMM_PATH}/thirdparty/boost_1_73_0/x64lib;"
    "${COMM_PATH}/thirdparty/jsoncpp/lib_x64;"
)

set(OnlineCalibAll_link_directories
    "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib;"
)

set(lane_on_bev_link_directories
    "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib;"
)

set(lidar_calib_link_directories
        "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
)


set(SNAVI_Lane_Analysis_link_directories
    "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib;"
)

set(SNAVI_Lane_Fusion_link_directories
    "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib;"
)

set(sp_pk_hastar_link_directories
    "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib;"
    "${COMM_PATH}/thirdparty/hastar/library;"
)

set(hdmiCamCapture_link_directories
    "${COMM_PATH}/thirdparty/opencv410/lib/x64/vc15/lib;"
    "${FW_SDK_PATH}/hdmiCamCapture/lib/X86;"
    "${DAFW_PATH}/port/vc2019/x64/Release;"
)

set(io_gateway_link_directories
    "${DAFW_PATH}/port/vc2019/x64/Release;"
    "${COMM_PATH}/thirdparty/protobuf-3.11.4/lib/x64;"
)

###############################################################################
# 差异的链接库,命令方式固定：模块名字_link_libraries,多个话之间用分号;隔开，不能用空格，
# 如：set(comm_link_libraries ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################
set(comm_link_libraries
"opencv_world300"
)
set(fw_record_link_libraries
"opencv_world300"
"avcodec;"
"avformat;"
"avutil;"
swscale
)

set(monitor_pro_link_libraries
    libprotobuf
)
set(frameworkbase_link_libraries
    easy_profiler
)
set(opencv_service_link_libraries
    opencv_world410
)

set(slam_link_libraries  
    g2o
    opencv_world300
    opengv
)


set(zmq_service_link_libraries
    libprotobuf
    libzmq-mt-4_3_4
)
set(mp4_playback_link_libraries
    opencv_world300
) 

set(io_gateway_link_libraries   
    "protobuf"
)

set(fw_bev_link_libraries   
     "opencv_world"   
)
set(space_tracking_link_libraries   
opencv_world300
)
set(segparse_link_libraries   
opencv_world300   
)
set(spacenet_link_libraries   
cuda
cudart
opencv_world460  
)

set(avp_behaviorDecision_link_libraries  
    opencv_world410
    LibHastar
)
set(display_link_libraries  
opencv_world410
opencv_world300
)
set(tsml_link_libraries 
    opencv_world410
)
set(scenemanager_link_libraries 
opencv_world300
)
set(pld_link_libraries 
opencv_world300
)
set(SP_PK_StateManager_all_link_libraries 
    opencv_world410
)
set(hmihub_link_libraries 
opencv_world300
)
set(SP_PK_ObjAvoid_link_libraries 
    opencv_world410
)
set(fw_bev_link_libraries 
opencv_world300
)
set(spacemap_link_libraries 
opencv_world300
libhastar
)
set(network_connector_link_libraries 
opencv_world300
libboost_date_time-vc142-mt-x64-1_73
)
set(SP_PK_VehicleControl_link_libraries 
    opencv_world410
)
set(DebugMonitor_link_libraries 
opencv_world300
)
set(SP_PK_PathFollow_link_libraries 
    opencv_world410
)
set(SP_PK_SonarProc_link_libraries 
    opencv_world410
)
set(SP_PK_SlotDetect_link_libraries 
    opencv_world410
)
set(SP_PK_SensorFusion_link_libraries 
    opencv_world410
)
set(sp_pk_meb_link_libraries 
    opencv_world410
)
set(avp_localplanner_link_libraries 
    opencv_world410
)
set(XDMA_link_libraries 
    opencv_world410
)

set(LidarNet_link_libraries
    opencv_world410
    multiProcessTransport
    pcl_common_release
    pcl_filters_release
    pcl_io_release
)

set(eol_imageloader_link_libraries
    opencv_world300
)

set(Lidar_HMI_link_libraries
    opencv_world410
)

set(web_hmi_server_link_libraries
    libboost_date_time-vc142-mt-x64-1_73
    jsoncpp
    opencv_world300
)

set(OnlineCalibAll_link_libraries
    opencv_world300
)

set(lane_on_bev_link_libraries
    opencv_world300
)

set(lidar_calib_link_libraries 
    opencv_world410
)

set(SNAVI_Lane_Analysis_link_libraries
    opencv_world300
)

set(SNAVI_Lane_Fusion_link_libraries
    opencv_world300
)

set(sp_pk_hastar_link_libraries
    opencv_world300
)

set(hdmiCamCapture_link_libraries
    opencv_world410
    QCAP.X64
    HMICAP
)

set(io_gateway_link_libraries
    libzmq-mt-4_3_4
    network_service
    libprotobuf
)