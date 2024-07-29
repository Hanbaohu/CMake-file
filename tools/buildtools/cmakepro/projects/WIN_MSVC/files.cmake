###############################################################################
# 差异的源文件路径,命令方式固定：模块名字_src_directories,多个话之间用分号;隔开，不能用空格，
# 如：set( api_adaptor_src_directories  ""${FW_SDK_PATH}/adaptor/os/API/src/threadoperation.cpp";")
###############################################################################
# set( spacenet_src_files     "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld2stage_inference_tda4.cpp"
#                         "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_and_seg_inference_tda4.cpp"
#                         "${SPACENET_PATH}/source/core/feature/corner/dodcore/line_object_inference_tda4.cpp"
# 			"${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_detection_algorithm.cpp"
# 			"${SPACENET_PATH}/source/core/feature/corner/dodcore/inference_base.cpp"
#                         )

# file(GLOB_RECURSE  monitor_pro_foxglove_srcs "${MONITOR_PRO_PATH}/src/proto/pb/3_21_12/foxglove/*.cc")
# file(GLOB_RECURSE  monitor_pro_space_srcs "${MONITOR_PRO_PATH}/src/proto/pb/3_21_12/space/*.cc")
# set( monitor_pro_src_files
#         "${monitor_pro_foxglove_srcs}"
#         "${monitor_pro_space_srcs}"
# )

set(zmq_service_src_files
    "${FW_SDK_PATH}/service/zmq/protoData/test.pb.cc"
    "${FW_SDK_PATH}/service/zmq/protoData/test.pb.h"
)



###############################################################################
# 差异的头文件路径,命令方式固定：模块名字_include_directories,多个话之间用分号;隔开，不能用空格，
# 如：set(comm_include_directories ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################
# set( monitor_pro_include_directories
#         "${MY_ROOT_DIR}/spaceos/tools/buildtools/cmakepro/projects/${CMAKE_PROJECT}/platform_lib/libopenssl-3.1.0/include"
#         "${MY_ROOT_DIR}/spaceos/tools/buildtools/cmakepro/projects/${CMAKE_PROJECT}/platform_lib/libprotobuf/include"
#         "${MONITOR_PRO_PATH}/src/proto/pb/3_21_12/"
#    )

# windows各个模块用了不同版本的opencv，没有统一；但嵌入式是统一用一种版本的，这时platform_opencv_include_directories可以打开
# set( platform_opencv_include_directories   "${COMM_PATH}/thirdparty/opencv410/include;")

set( comm_include_directories   "${COMM_PATH}/thirdparty/opencv300/include")
set( scenemanager_include_directories   "${COMM_PATH}/thirdparty/opencv300/include")

set(  opencv_service_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include;"
)
set(  SP_PK_StateManager_all_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include;"
)
set(  spacenet_include_directories
        "${COMM_PATH}/thirdparty/opencv460/include;"
        "${cuda_dir}/include"
)
set(  SP_PK_ObjAvoid_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include;"
)
set(  SP_PK_VehicleControl_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include;"
)
set(  SP_PK_SonarProc_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include;"
)
set(  avp_localplanner_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include;"
)
set(  XDMA_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include;"
        "${COMM_PATH}/thirdparty/opencv410/include/opencv2;"
)
set(  SP_PK_SlotDetect_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include;"
)
set(  sp_pk_meb_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include;"
)

set(  SP_PK_PathFollow_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include;"
)
set(  SP_PK_SensorFusion_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include;"
)
set(  libgridmap_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include;"
)
set(  pld_include_directories
        "${COMM_PATH}/thirdparty/opencv300/include"
)
set(  mp4_playback_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include"
        "${COMM_PATH}/source/interface/ffmpeg"
)

set(  DebugMonitor_include_directories
        "${COMM_PATH}/thirdparty/opencv300/include"
)
set(  fw_bev_include_directories
        "${COMM_PATH}/thirdparty/opencv300/include"
)
set(  spacemap_include_directories
        "${COMM_PATH}/thirdparty/opencv300/include"
)
set(  hmihub_include_directories
        "${COMM_PATH}/thirdparty/opencv300/include"
)
set(  segparse_include_directories
        "${COMM_PATH}/thirdparty/opencv300/include"
)

set(  space_tracking_include_directories
        "${COMM_PATH}/thirdparty/opencv300/include"
)
set(  slam_include_directories
        "${COMM_PATH}/thirdparty/opencv300/include"
)
set(  network_connector_include_directories
        "${COMM_PATH}/thirdparty/opencv300/include"
)

set(  display_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include;"
        "${COMM_PATH}/thirdparty/opencv300/include"
)

set(  tsml_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include;"
)
set( frameworkbase_include_directories
        "${COMM_PATH}/thirdparty/easy_profiler/x64/include/"
)

set( comm_include_directories
        "${COMM_PATH}/thirdparty/boost_1_73_0;"
)

set( zmq_service_include_directories
"${COMM_PATH}/thirdparty/zmq/include;"
"${COMM_PATH}/thirdparty/zmq/protobuf/include;"
"${COMM_PATH}/thirdparty/protobuf/include;"

)

set( network_service_include_directories
"${COMM_PATH}/thirdparty/mqtt/win/include/;"
"${COMM_PATH}/thirdparty/zmq/include;"

)

set( media_service_include_directories
        "${COMM_PATH}//source/interface/ffmpeg;"
)
set( avp_behaviorDecision_include_directories
        "${COMM_PATH}/thirdparty/boost_1_73_0;"
        "${COMM_PATH}/thirdparty/opencv410/include;"

)

set(  lidar_calib_include_directories
        "${COMM_PATH}/thirdparty/opencv410/include;"
)

set( fw_record_include_directories
        "${COMM_PATH}//source/interface/ffmpeg;"
        "${COMM_PATH}/thirdparty/opencv300/include"
)