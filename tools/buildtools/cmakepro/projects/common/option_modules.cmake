
set(cmake_modules_dir modules)


	##############################   other   ##############################
if(  MODULE_G2O )
	add_subdirectory(${cmake_modules_dir}/other/lib_g2o)
endif()

	##############################   comm  spaceos  ##############################

if(MODULE_SP_COMM)
    add_subdirectory(${cmake_modules_dir}/common/comm)
endif()
if(MODULE_GRIDMAP)
    add_subdirectory(${cmake_modules_dir}/common/gridmap)
endif()
if(  MODULE_APA_COMM_MATH )
	add_subdirectory(${cmake_modules_dir}/common/apa_comm_math)
endif()
if( MODULE_FRAMEWORKBASE  )
	add_subdirectory(${cmake_modules_dir}/spaceos/frameworkbase)
endif()
if(  MODULE_SERVICE_FW_SDK )
	add_subdirectory(${cmake_modules_dir}/spaceos/framework/fw_sdk)
endif()
if(  MODULE_SERVICE_HDMICAMCAPTURE )
	add_subdirectory(${cmake_modules_dir}/spaceos/framework/hdmiCamCapture)
endif()
if( MODULE_SERVICE_FW_BEV )
	add_subdirectory(${cmake_modules_dir}/spaceos/framework/fw_bev)
endif()
if( MODULE_IOGATEWAY )
	add_subdirectory(${cmake_modules_dir}/spaceos/framework/io_gateway)
endif()
if( MODULE_SERVICE_CONFIG  )
	add_subdirectory(${cmake_modules_dir}/spaceos/framework/service/config)
endif()
if(  MODULE_SERVICE_MEMORY )
	add_subdirectory(${cmake_modules_dir}/spaceos/framework/service/memory)
endif()
if( MODULE_SERVICE_OPENCV  )
	add_subdirectory(${cmake_modules_dir}/spaceos/framework/service/opencv)
endif()
if(  MODULE_SERVICE_COMMUNICATION )
	 add_subdirectory(${cmake_modules_dir}/spaceos/framework/service/communication)
endif()
if( MODULE_SERVICE_ZMQ  )
	add_subdirectory(${cmake_modules_dir}/spaceos/framework/service/zmq)
endif()
if( MODULE_SERVICE_NETWORK  )
	add_subdirectory(${cmake_modules_dir}/spaceos/framework/service/network)
endif()
if( MODULE_SERVICE_MEDIA  )
	add_subdirectory(${cmake_modules_dir}/spaceos/framework/service/media)
endif()
if(  MODULE_SERVICE_LIDAR )
	 add_subdirectory(${cmake_modules_dir}/spaceos/framework/service/lidar)
endif()
if(  MODULE_SERVICE_CAN )
	add_subdirectory(${cmake_modules_dir}/spaceos/framework/service/communication/can)
endif()
if(  MODULE_SERVICE_DIAGNOSTIC )
	 add_subdirectory(${cmake_modules_dir}/spaceos/framework/service/diagnostic)
endif()
if(  MODULE_ADAPTOR )
	add_subdirectory(${cmake_modules_dir}/spaceos/framework/adaptor/os/API)
endif()
if( MODULE_J6_DEMUX  )
	add_subdirectory(${cmake_modules_dir}/spaceos/framework/j6_demux)
endif()
if(  MODULE_MP4_PLAYBACK )
	add_subdirectory(${cmake_modules_dir}/spaceos/framework/mp4_playback)
endif()
if(  MODULE_ADAPTOR_CAN )
	add_subdirectory(${cmake_modules_dir}/spaceos/framework/adaptor/driver/can)
endif()
if( MODULE_MULTIPROCESSTRANSPORT )
    add_subdirectory(${cmake_modules_dir}/spaceos/framework/multiProcessTransport)
endif()
if(MODULE_XDMA)
    add_subdirectory(${cmake_modules_dir}/spaceos/framework/XDMA)
endif()
if(MODULE_LIDAR_PLAYBACK)
    add_subdirectory(${cmake_modules_dir}/spaceos/framework/lidar_playback)
endif()
if(MODULE_LIDAR_RECORD)
    add_subdirectory(${cmake_modules_dir}/spaceos/framework/lidar_record)
endif()
if(MODULE_FW_RECORD)
    add_subdirectory(${cmake_modules_dir}/spaceos/framework/fw_record)
endif()




if(  MODULE_CAN )
	add_subdirectory(${cmake_modules_dir}/spaceos/can/can)
endif()
if(  MODULE_CAN_MASTER )
	add_subdirectory(${cmake_modules_dir}/spaceos/can/can_master)
endif()
if(  MODULE_CAN_PERIPHERAL )
	add_subdirectory(${cmake_modules_dir}/spaceos/can/can_peripheral)
endif()

if(  MODULE_MONITOR_PRO )
	add_subdirectory(${cmake_modules_dir}/spaceos/monitor_pro)
endif()
if(  MODULE_8927_LEFT_LIDAR_DRIVER )
	add_subdirectory(${cmake_modules_dir}/spaceos/lidar/8927_left_lidar_driver)
endif()
if(  MODULE_8927_RIGHT_LIDAR_DRIVER )
	add_subdirectory(${cmake_modules_dir}/spaceos/lidar/8927_right_lidar_driver)
endif()
if(  MODULE_HS_REAR_DRIVER )
	add_subdirectory(${cmake_modules_dir}/spaceos/lidar/hs_rear_driver)
endif()
if(  MODULE_HS_RIGHT_DRIVER )
	add_subdirectory(${cmake_modules_dir}/spaceos/lidar/hs_right_driver)
endif()
if(  MODULE_LIDAR_CALIB )
	add_subdirectory(${cmake_modules_dir}/spaceos/lidar/lidar_calib)
endif()
if(  MODULE_RS_DRIVER )
	add_subdirectory(${cmake_modules_dir}/spaceos/lidar/robosense)
endif()
if(  MODULE_RS_LEFT_DRIVER )
	add_subdirectory(${cmake_modules_dir}/spaceos/lidar/robosense_left)
endif()
if(  MODULE_RS_RIGHT_DRIVER )
	add_subdirectory(${cmake_modules_dir}/spaceos/lidar/robosense_right)
endif()

	##############################   perception   ##############################
if( MODULE_PARKOCCUPY  )
	add_subdirectory(${cmake_modules_dir}/perception/datafusion/parkoccupy)
endif()
if( MODULE_SENSORFUSION_FREESPACE  )
	add_subdirectory(${cmake_modules_dir}/perception/datafusion/sensorfusion_freespace)
endif()
if( MODULE_SCENEMANAGE  )
	add_subdirectory(${cmake_modules_dir}/perception/datafusion/scenemanager)
endif()
if( MODULE_SP_PK_SENSORFUSION  )
	add_subdirectory(${cmake_modules_dir}/perception/datafusion/SP_PK_SensorFusion)
endif()
if( MODULE_SP_PK_SLOTDETECT  )
	add_subdirectory(${cmake_modules_dir}/perception/datafusion/SP_PK_SlotDetect)
endif()
if( MODULE_SENSORFUSION_OD  )
	add_subdirectory(${cmake_modules_dir}/perception/datafusion/sensorfusion_od)   #vs2019
endif()
if( MODULE_ONLINECALIB_ALL  )
	add_subdirectory(${cmake_modules_dir}/perception/datafusion/OnlineCalibAll)   #vs2019
endif()

if(  MODULE_SPACENET )
	add_subdirectory(${cmake_modules_dir}/perception/deeplearning/spacenet) #vs2013
endif()
if( MODULE_VISION_PERCEPTION  )
	add_subdirectory(${cmake_modules_dir}/perception/deeplearning/vision_perception)
endif()
if(  MODULE_SP_PK_SONARPROC )
	add_subdirectory(${cmake_modules_dir}/perception/detection/sonar/sp_pk_sonarproc)
endif()
if(  MODULE_SP_PK_SONARDETECT )
	add_subdirectory(${cmake_modules_dir}/perception/detection/sonar/sp_pk_sonardetect)
endif()
if(  MODULE_SP_PK_SONARPDC )
	add_subdirectory(${cmake_modules_dir}/perception/detection/sonar/sp_pk_sonarpdc)
endif()

if( MODULE_PLD  )
	add_subdirectory(${cmake_modules_dir}/perception/detection/vision/pld)
endif()
if(MODULE_SEGPARSE   )
	add_subdirectory(${cmake_modules_dir}/perception/detection/vision/segparse)
endif()
if( MODULE_SPACE_TRACKING  )
	add_subdirectory(${cmake_modules_dir}/perception/detection/vision/space_tracking)
endif()
if( MODULE_LANE_ON_BEV )
	add_subdirectory(${cmake_modules_dir}/perception/detection/vision/lane_on_bev)
endif()
if( MODULE_SNAVI_LANE_ANALYSIS )
	add_subdirectory(${cmake_modules_dir}/perception/detection/vision/snavi_lane_analysis)
endif()
if( MODULE_SNAVI_LANE_FUSION )
	add_subdirectory(${cmake_modules_dir}/perception/detection/vision/snavi_lane_fusion)
endif()
if( MODULE_LIDAR_DETECT  )
	add_subdirectory(${cmake_modules_dir}/perception/detection/lidar/lidar_detect)  #vs2019
endif()
if( MODULE_LIDARFREESPACE  )
	add_subdirectory(${cmake_modules_dir}/perception/detection/lidar/LidarFreespace) #vs2019
endif()
if( MODULE_LIDAR_GRID )
	add_subdirectory(${cmake_modules_dir}/perception/detection/lidar/lidar_grid) #vs2019
endif()
if( MODULE_LIDARNET  )
	add_subdirectory(${cmake_modules_dir}/perception/detection/lidar/LidarNet) #vs2019
endif()
if( MODULE_LIDAROBJ  )
	add_subdirectory(${cmake_modules_dir}/perception/detection/lidar/LidarObj) #vs2019
endif()
if( MODULE_LIDAROBSTACLE  )
	add_subdirectory(${cmake_modules_dir}/perception/detection/lidar/LidarObstacle) #vs2019
endif()
if( MODULE_LIDARPROC  )
	add_subdirectory(${cmake_modules_dir}/perception/detection/lidar/LidarProc) #vs2019
endif()
if( MODULE_LIDARPROC_PIX )
	add_subdirectory(${cmake_modules_dir}/perception/detection/lidar/LidarProcPix)
endif()
if( MODULE_LIDARSLAM  )
	add_subdirectory(${cmake_modules_dir}/perception/detection/lidar/LidarSLAM) #vs2019
endif()
if( MODULE_LIDARLOCATOR )
	add_subdirectory(${cmake_modules_dir}/perception/detection/lidar/LidarLocator)
endif()
if( MODULE_LOCALIZATION  )
	add_subdirectory(${cmake_modules_dir}/perception/localization/localization)
endif()
if( MODULE_SLAM  )
	add_subdirectory(${cmake_modules_dir}/perception/localization/slam) #vs2013
endif()
if( MODULE_TSML  )
	add_subdirectory(${cmake_modules_dir}/perception/localization/tsml)
endif()

if( MODULE_GNSSER_SAVER  )
	add_subdirectory(${cmake_modules_dir}/perception/localization/gnss/gnsser_saver)
endif()
if( MODULE_COMDR  )
	add_subdirectory(${cmake_modules_dir}/perception/localization/odom/comdr)
endif()
if( MODULE_COMM_VRU_WE_ODOM  )
	add_subdirectory(${cmake_modules_dir}/perception/localization/odom/comm_vru_we_odom)
endif()
if( MODULE_VRU_PRODUCER  )
	add_subdirectory(${cmake_modules_dir}/perception/localization/odom/vru_producer)
endif()
if( MODULE_VRU_WE_SAVER  )
	add_subdirectory(${cmake_modules_dir}/perception/localization/odom/vru_we_saver)
endif()
if(  MODULE_VRU_WHEELENCODER_PACKER )
	add_subdirectory(${cmake_modules_dir}/perception/localization/odom/vru_wheelencoder_packer)
endif()
if( MODULE_YAWRATER_PRODUCER  )
	add_subdirectory(${cmake_modules_dir}/perception/localization/odom/yawrater_producer)
endif()
if( MODULE_REVERSING_ASSISTANT  )
	add_subdirectory(${cmake_modules_dir}/perception/localization/reversing_assistant)
endif()
if( MODULE_SPACE_HAVPMAP  )
	add_subdirectory(${cmake_modules_dir}/perception/map/maplibs/space_havpmap)
endif()
if( MODULE_HDMAP_WRAPPER  )
	add_subdirectory(${cmake_modules_dir}/perception/map/maplibs/hdmap_wrapper)
endif()
if( MODULE_SPACEMAP  )
	add_subdirectory(${cmake_modules_dir}/perception/map/spacemap)
endif()
if(  MODULE_MAPSERVICE )
	add_subdirectory(${cmake_modules_dir}/perception/map/mapservice)
endif()
if( MODULE_MAPTEST  )
	add_subdirectory(${cmake_modules_dir}/perception/map/maptest)   #vs2019
endif()

	##############################   decision   ##############################
if( MODULE_AVP_BEHAVIORDECISION  )
	add_subdirectory(${cmake_modules_dir}/decision/avp_behaviorDecision)
endif()
if( MODULE_SP_PK_OBJAVOID  )
	add_subdirectory(${cmake_modules_dir}/decision/SP_PK_ObjAvoid)
endif()
if( MODULE_SP_PK_PAS  )
	add_subdirectory(${cmake_modules_dir}/decision/SP_PK_Pas)
endif()
if(  MODULE_SP_PK_STATEMANAGER )
	add_subdirectory(${cmake_modules_dir}/decision/SP_PK_StateManager)
endif()
if( MODULE_SP_PK_STATEMANAGER_ALL  )
	add_subdirectory(${cmake_modules_dir}/decision/SP_PK_StateManager_all)
endif()
if( MODULE_SP_PK_MEB  )
	add_subdirectory(${cmake_modules_dir}/decision/sp_pk_meb)   #vs2019
endif()


	##############################   planning   ##############################
if( MODULE_AVP_PATHFOLLOW  )
	add_subdirectory(${cmake_modules_dir}/planning/avp_pathfollow)
endif()
if( MODULE_AVP_PATHPLAN  )
	add_subdirectory(${cmake_modules_dir}/planning/avp_pathplan)
endif()
if( MODULE_PATHFOLLOW  )
	add_subdirectory(${cmake_modules_dir}/planning/pathfollow)  #vs2019
endif()
if( MODULE_PATHPLAN  )
	add_subdirectory(${cmake_modules_dir}/planning/pathplan)  #vs2019
endif()
if( MODULE_PLANNING  )
	add_subdirectory(${cmake_modules_dir}/planning/planning)
endif()
if( MODULE_ROUTING  )
	add_subdirectory(${cmake_modules_dir}/planning/routing)
endif()
if( MODULE_SP_PK_PATHFOLLOW  )
	add_subdirectory(${cmake_modules_dir}/planning/SP_PK_PathFollow)
endif()
if(  MODULE_SP_PK_PATHPLAN )
	add_subdirectory(${cmake_modules_dir}/planning/SP_PK_PathPlan)
endif()
if(  MODULE_AVP_LOCALPLANNER )
	add_subdirectory(${cmake_modules_dir}/planning/avp_localplanner)
endif()
if( MODULE_SP_PK_HASTAR )
	add_subdirectory(${cmake_modules_dir}/planning/sp_pk_hastar)
endif()
if( MODULE_LIB_HASTAR )
	add_subdirectory(${cmake_modules_dir}/common/libhastar)
endif()

	##############################   v2x   ##############################
if(  MODULE_NETWORK_CONNECTOR )
	add_subdirectory(${cmake_modules_dir}/v2x/network_connector)
endif()
if(  MODULE_OBU_ADAPTOR )
	add_subdirectory(${cmake_modules_dir}/v2x/obu_adaptor)
endif()


	##############################   hmi   ##############################
if( MODULE_APA_DEBUG_MONITOR  )
	add_subdirectory(${cmake_modules_dir}/hmi/apa_debug_monitor)
endif()
if( MODULE_HMIHUB  )
	add_subdirectory(${cmake_modules_dir}/hmi/hmihub)
endif()
if( MODULE_DATA_VISUALIZATION  )
	add_subdirectory(${cmake_modules_dir}/hmi/data_visualization)
endif()
if( MODULE_HMI_P7  )
	add_subdirectory(${cmake_modules_dir}/hmi/HMI/hmi_p7)        #通用
endif()
if( MODULE_HMI_IC321  )
	add_subdirectory(${cmake_modules_dir}/hmi/HMI/hmi_ic321)     #天际
endif()
if( MODULE_HMI_ICU3  )
	add_subdirectory(${cmake_modules_dir}/hmi/HMI/hmi_icu3)      #长城
endif()

if( MODULE_HMI_SPACEVIEW  )
	add_subdirectory(${cmake_modules_dir}/hmi/HMI/hmi_spaceview)      #master
endif()

if( MODULE_DISPLAY  )
	add_subdirectory(${cmake_modules_dir}/hmi/display)       #vs2019
endif()
if( MODULE_QT_WINDOW  )
	add_subdirectory(${cmake_modules_dir}/hmi/qt_window)   #vs2013
endif()
if( MODULE_WEB_HMI_SERVER  )
	add_subdirectory(${cmake_modules_dir}/hmi/web_hmi_server)  #vs2019
endif()
if( MODULE_LIDAR_HMI )
	add_subdirectory(${cmake_modules_dir}/hmi/Lidar_HMI)
endif()
if( MODULE_LIDAR_VISUALIZER )
	add_subdirectory(${cmake_modules_dir}/hmi/Lidar_visualizer)
endif()


	##############################   control   ##############################
if(  MODULE_VEHICLECONTROL_ES6 )
	add_subdirectory(${cmake_modules_dir}/control/vehiclecontrol_es6)
endif()

if(  MODULE_REMOTE_CONTROL_CONNECTOR )
	add_subdirectory(${cmake_modules_dir}/control/remote_control_connector)
endif()


	##############################   control   ##############################
if(  MODULE_WEBOTS_CONNECTOR )
	add_subdirectory(${cmake_modules_dir}/tools/webots_simulation/webots_connector)
endif()

	##############################   LAUNCHER         ##############################

if(  MODULE_LAUNCHER_WIN_MSVC )
	add_subdirectory(${cmake_modules_dir}/launcher/WIN_MSVC)
endif()

if(  MODULE_LAUNCHER_LINUX_GCC )
	add_subdirectory(${cmake_modules_dir}/launcher/LINUX_GCC)
endif()

if(  MODULE_SP_AUTOPILOT_INFS_GCC )
	add_subdirectory(${cmake_modules_dir}/launcher/SP_AUTOPILOT_INFS)
endif()




	##############################   app   ##############################
if(  MODULE_GWM_V71_ICU3_AVM )
	add_subdirectory(${cmake_modules_dir}/app/avm)
endif()
if(  MODULE_GWM_V71_ICU3_STITCH )
	add_subdirectory(${cmake_modules_dir}/app/stitch)
endif()
if(  MODULE_GWM_V71_ICU3_EOL )
	add_subdirectory(${cmake_modules_dir}/app/eol)
endif()
if(  MODULE_EOL_IMAGELOADER )
	add_subdirectory(${cmake_modules_dir}/app/eol_imageloader)
endif()
if(  MODULE_EOL_HORZON_EP40 )
	add_subdirectory(${cmake_modules_dir}/app/EOL_HORZON_EP40)
endif()

if( MODULE_CAPTURE)
	add_subdirectory(${cmake_modules_dir}/spaceos/capture)
endif()

if( MODULE_PIX_LIDAR_DRIVER )
	add_subdirectory(${cmake_modules_dir}/spaceos/lidar/pix_CF_lidar_driver)
	add_subdirectory(${cmake_modules_dir}/spaceos/lidar/pix_LF_lidar_driver)
	add_subdirectory(${cmake_modules_dir}/spaceos/lidar/pix_LR_lidar_driver)
	add_subdirectory(${cmake_modules_dir}/spaceos/lidar/pix_RF_lidar_driver)
	add_subdirectory(${cmake_modules_dir}/spaceos/lidar/pix_RR_lidar_driver)
endif()

if( MODULE_LIDAR_POINTCLOUD_VIEWER )
	add_subdirectory(${cmake_modules_dir}/tools/lidar_pointcloud_viewer)
endif()

if ( MODULE_MONITOR )
	add_subdirectory(${cmake_modules_dir}/spaceos/monitor)
endif()
