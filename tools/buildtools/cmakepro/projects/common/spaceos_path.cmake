SET(MY_ROOT_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../../../..")


# APP
SET(EOL_IMAGELOADE_PATH "${MY_ROOT_DIR}/spaceos/app/eol_imageLoader")
SET(EOL_HORZON_EP40_PATH "${MY_ROOT_DIR}/spaceos/app/EOL_HORZON_EP40")
SET(STITCH_PATH "${MY_ROOT_DIR}/spaceos/app/stitch")
SET(AVM_PATH "${MY_ROOT_DIR}/spaceos/app/AVM")

# Common
SET(APA_COMM_MATH_PATH "${MY_ROOT_DIR}/spaceos/common/apa_comm_math")
SET(COMM_PATH "${MY_ROOT_DIR}/spaceos/common/comm")
SET(COMM_LIB_HASTAR_PATH "${MY_ROOT_DIR}/spaceos/common/comm/thirdparty/hastar")

# Control
#SET(SP_PK_VEHICLECONTROL_ES6_MASTER_PATH "${MY_ROOT_DIR}/spaceos/control/vehiclecontrol_es6_master")
SET(SP_PK_VEHICLECONTROL_PATH "${MY_ROOT_DIR}/spaceos/control/vehiclecontrol_es6_master")
SET(REMOTE_CONTROL_CONNECTOR "${MY_ROOT_DIR}/spaceos/control/remote_control_connector")

# Decision
SET(AVP_BEHAVIORHSM_PATH "${MY_ROOT_DIR}/avp_waic_demo/avp_behaviorHSM")
SET(AVP_BEHAVIORDECISION "${MY_ROOT_DIR}/spaceos/decision/avp_behaviorDecision")
SET(AVPMAPONLINESCHEDULER_PATH "${MY_ROOT_DIR}/spaceos/decision/avp_online_map_scheduler")
SET(SCHEDULER_PATH "${MY_ROOT_DIR}/spaceos/decision/scheduler")
SET(SP_PK_OBJAVOID_PATH "${MY_ROOT_DIR}/spaceos/decision/sp_pk_objavoid")
SET(SP_PK_PAS_PATH "${MY_ROOT_DIR}/spaceos/decision/sp_pk_pas")
SET(SP_PK_STATEMANAGER_PATH "${MY_ROOT_DIR}/spaceos/decision/sp_pk_statemanager")
SET(SP_PK_STATEMANAGER_ALL_PATH "${MY_ROOT_DIR}/spaceos/decision/sp_pk_statemanager_all")
SET(SP_PK_STATEMANAGER_NEW_PATH "${MY_ROOT_DIR}/spaceos/decision/sp_pk_statemangmt_new")
SET(SP_PK_MEB_PATH "${MY_ROOT_DIR}/spaceos/decision/sp_pk_meb")

# HMI
SET(APA_DEBUG_MONITOR_PATH "${MY_ROOT_DIR}/spaceos/hmi/apa_debug_monitor/")
SET(HMI_IC321_PATH   "${MY_ROOT_DIR}/spaceos/hmi/HMI/HMI_IC321")
SET(HMI_P7_PATH "${MY_ROOT_DIR}/spaceos/hmi/HMI/HMI_P7")
SET(HMI_ICU3_PATH "${MY_ROOT_DIR}/spaceos/hmi/HMI/HMI_ICU3")
SET(HMI_SPAVEVIEW_PATH "${MY_ROOT_DIR}/spaceos/hmi/HMI/HMI_spaceview")
SET(HMI "${MY_ROOT_DIR}/spaceos/hmi")

SET(HMIHUB_PATH "${MY_ROOT_DIR}/spaceos/hmi/hmihub")
SET(HMI_DATA_VISUALIZATION_PATH "${MY_ROOT_DIR}/spaceos/hmi/data_visualization")
SET(LIDAR_HMI_PATH "${MY_ROOT_DIR}/spaceos/hmi/Lidar_HMI")
SET(LIDAR_VISUALIZER_PATH "${MY_ROOT_DIR}/spaceos/hmi/lidar_visualizer")
SET(WEB_HMI_SERVER_PATH "${MY_ROOT_DIR}/spaceos/hmi/web_hmi_server")

# Perception
## DataFusion
SET(PARKOCCUPY "${MY_ROOT_DIR}/spaceos/perception/datafusion/parkoccupy")
SET(SENSORFUSION_FREESPACE_PATH "${MY_ROOT_DIR}/spaceos/perception/datafusion/sensorfusion_freespace")
SET(SCENEMANAGER_PATH "${MY_ROOT_DIR}/spaceos/perception/datafusion/scenemanager")
SET(SP_PK_SENSORFUSION_PATH "${MY_ROOT_DIR}/spaceos/perception/datafusion/sp_pk_sensorfusion")
SET(SP_PK_SLOTDETECT_PATH "${MY_ROOT_DIR}/spaceos/perception/datafusion/sp_pk_slotdetect")
SET(SCENE_RECOGNITION_PATH "${MY_ROOT_DIR}/spaceos/perception/datafusion/scene_recognition")
SET(SENSORFUSION_OD_PATH "${MY_ROOT_DIR}/spaceos/perception/datafusion/sensorfusion_od")
SET(ONLINECALIB_ALL_PATH "${MY_ROOT_DIR}/spaceos/perception/datafusion/OnlineCalib")

## DeepLearning
SET(SPACENET_PATH "${MY_ROOT_DIR}/spaceos/perception/deeplearning/spacenet")
SET(SPACENET_OD_PATH "${MY_ROOT_DIR}/avp_waic_demo/spaceod")
SET(VISION_PERCEPTION_PATH "${MY_ROOT_DIR}/spaceos/perception/deeplearning/vision_perception")

## Detection
### Lidar 
SET(LidarFreeSpace_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/lidar/lidar_Freespace")
SET(LidarNet_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/lidar/LidarNet")
SET(LidarObj_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/lidar/LidarObj")
SET(LidarObstacle_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/lidar/LidarObstacle")
SET(LidarProc_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/lidar/LidarProc")
SET(LidarSLAM_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/lidar/LidarSLAM")
SET(LidarProcPix_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/lidar/LidarProcPix")
SET(LidarGrid_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/lidar/LidarGrid")
SET(LidarLocator_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/lidar/LidarLocator")

### Sonar 
SET(SP_PK_SONARPROC_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/sonar/sp_pk_sonarproc")
SET(SP_PK_SONARDETECT_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/sonar/sp_pk_sonardetect")
SET(SP_PK_SONARPDC_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/sonar/sp_pk_sonar_pdc")

### Vision
SET(PLD_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/vision/pld")
SET(SEGPARSE_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/vision/segparse")
SET(SPACE_TRACKING_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/vision/space_tracking")
SET(LANE_ON_BEV_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/vision/lane_on_bev")
SET(SNAVI_LANE_ANALYSIS_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/vision/snavi_lane_analysis")
SET(SNAVI_LANE_FUSION_PATH "${MY_ROOT_DIR}/spaceos/perception/detection/vision/snavi_lane_fusion")

## Localization
SET(COM_DR "${MY_ROOT_DIR}/spaceos/perception/localization/odom/comdr")
SET(LOCALIZATION_PATH "${MY_ROOT_DIR}/spaceos/perception/localization/localization")
SET(SLAM_PATH "${MY_ROOT_DIR}/spaceos/perception/localization/slam/core")
SET(TSML_PATH "${MY_ROOT_DIR}/spaceos/perception/localization/tsml")

#IMU
SET(GNSS_PATH "${MY_ROOT_DIR}/spaceos/perception/localization/gnss")
SET(WE_ODOM_PATH "${MY_ROOT_DIR}/spaceos/perception/localization/odom/comm_vru_we_odom")
SET(WHEELENCODER_PATH "${MY_ROOT_DIR}/spaceos/perception/localization/odom/vru_wheelencoder_packer")
SET(YAWRATER_PATH "${MY_ROOT_DIR}/spaceos/perception/localization/odom/yawrater_producer")
SET(PRODUCER_PATH "${MY_ROOT_DIR}/spaceos/perception/localization/odom/vru_producer")
SET(WE_SAVER_PATH "${MY_ROOT_DIR}/spaceos/perception/localization/odom/vru_we_saver")

SET(REVERSING_ASSISTANT_PATH "${MY_ROOT_DIR}/spaceos/perception/localization/reversing_assistant")

## Map
SET(AVPMAP_PATH "${MY_ROOT_DIR}/spaceos/perception/map/avp_map")
### Maplibs 
SET(MAPLIBS_PATH "${MY_ROOT_DIR}/spaceos/perception/map/maplibs")
SET(HDMAP_WRAPPER_PATH "${MY_ROOT_DIR}/spaceos/perception/map/maplibs/jngzhg_hdmap_wrapper")
SET(SPACE_HAVPMAP_PATH "${MY_ROOT_DIR}/spaceos/perception/map/maplibs/space_havpmap")
SET(SPACE_PAVPMAP_PATH "${MY_ROOT_DIR}/spaceos/perception/map/maplibs/space_pavpmap")

SET(MAPSERVICE_PATH "${MY_ROOT_DIR}/spaceos/perception/map/mapservice")
SET(SPM_PATH "${MY_ROOT_DIR}/spaceos/perception/map/spacemap")

# Planning
SET(AVP_PATHFOLLOW_PATH  "${MY_ROOT_DIR}/spaceos/planning/avp_pathfollow")
SET(AVP_PATHPLAN_PATH "${MY_ROOT_DIR}/spaceos/planning/avp_pathplan")
SET(LIB_PATH_FOLLOW "${MY_ROOT_DIR}/spaceos/planning/lib_path_follow")
SET(PARKOUT_PATH "${MY_ROOT_DIR}/avp_waic_demo/parkout")
SET(PATH_FOLLOW "${MY_ROOT_DIR}/spaceos/planning/pathfollow")
SET(PATH_PLAN "${MY_ROOT_DIR}/spaceos/planning/pathplan")
SET(PLANNING_PATH "${MY_ROOT_DIR}/spaceos/planning/planning")
SET(ROUTING_PATH "${MY_ROOT_DIR}/spaceos/planning/routing")
SET(SP_PK_PATHPLAN_PATH "${MY_ROOT_DIR}/spaceos/planning/sp_pk_pathplan")
SET(SP_PK_PATHFOLLOW_PATH "${MY_ROOT_DIR}/spaceos/planning/sp_pk_pathfollow")
SET(AVP_LOCALPLANNER_PATH "${MY_ROOT_DIR}/spaceos/planning/avp_localplanner")
SET(SP_PK_HASTAR_PATH "${MY_ROOT_DIR}/spaceos/planning/sp_pk_hastar")

# SPACEOS
## CAN
SET(CAN "${MY_ROOT_DIR}/spaceos/spaceos/can")
SET(CAPTURE_PATH "${MY_ROOT_DIR}/spaceos/spaceos/capture")

## Framework
SET(FW_SDK_PATH "${MY_ROOT_DIR}/spaceos/spaceos/framework")
SET(J6_DEMUX_PATH "${MY_ROOT_DIR}/spaceos/spaceos/framework/j6_demux")
SET(MP4_PLAYBACK_PATH "${MY_ROOT_DIR}/spaceos/spaceos/framework/mp4_playback")
SET(IOGATEWAY_PATH "${MY_ROOT_DIR}/spaceos/spaceos/framework/io_gateway")
SET(HDMICAMCAPTURE_PATH "${MY_ROOT_DIR}/spaceos/spaceos/framework/hdmiCamCapture")
## Frameworkbase
SET(FW_BASE_PATH "${MY_ROOT_DIR}/spaceos/spaceos/frameworkbase")
SET(LIDAR_PATH "${MY_ROOT_DIR}/spaceos/spaceos/lidar")

SET(MONITOR_PATH "${MY_ROOT_DIR}/spaceos/spaceos/monitor")

# V2X
SET(NETWORK_CONNECTOR_PATH "${MY_ROOT_DIR}/spaceos/v2x/network_connector")
SET(OBU_ADAPTOR "${MY_ROOT_DIR}/spaceos/v2x/obu_adaptor")

# tools
SET(TOOLS_PATH "${MY_ROOT_DIR}/spaceos/tools")

# SpaceosInterface 
SET(SPACEOS_LAUNCHER "${MY_ROOT_DIR}/spaceos/spaceos_launcher/")
SET(SPACEOS_LAUNCHER_A2 "${MY_ROOT_DIR}/modules/spaceos_launcher_a2/")
SET(SPACEOS_LAUNCHER_NEW_PATH "${MY_ROOT_DIR}/modules/spaceos_launcher_new/")

SET(LIB_OPENGV "${MY_ROOT_DIR}/spaceos/perception/localization/slam/core/3rdparty/OpenGV")
SET(LIB_G2O "${MY_ROOT_DIR}/spaceos/perception/localization/slam/core/3rdparty/g2o")
SET(GRID_MAP "${MY_ROOT_DIR}/spaceos/common/comm/thirdparty/libgridmap")
SET(DAFW_PATH "${MY_ROOT_DIR}/spaceos/spaceos_launcher")
SET(SPACEOS_LAUNCHER_LINUX_PATH "${MY_ROOT_DIR}/spaceos/spaceos_launcher")

SET(LIB_PARKING_PLATRORM_COMMON_PATH "${MY_ROOT_DIR}/spaceos/common/comm/thirdparty/lib_parking_platform_common/port/vc2019/lib_parking_platform_common")
SET(CAMERACAPTURE "${MY_ROOT_DIR}/spaceos/spaceos/framework/CameraCapture")

#monitor_pro
SET(MONITOR_PRO_PATH "${MY_ROOT_DIR}/spaceos/spaceos/monitor_pro")

# OutputPath
SET(OUTPUT_PATH "${CMAKE_CURRENT_SOURCE_DIR}/output")



