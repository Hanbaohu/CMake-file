
###############################################################################
# Options:模块开关
###############################################################################

##############################   spaceos   ##############################
set(MODULE_COMM                      ON           CACHE BOOL         "build COMM"                                         FORCE) #COMMON
set(MODULE_APA_COMM_MATH                OFF           CACHE BOOL         "build apa_comm_math"                                   FORCE) #COMMON
set(MODULE_FRAMEWORKBASE                ON           CACHE BOOL         "build frameworkbase"                                   FORCE) #COMMON
set(MODULE_SERVICE_FW_SDK               ON           CACHE BOOL         "build framework service fw_sdk"                        FORCE) #COMMON
set(MODULE_SERVICE_HDMICAMCAPTURE       ON           CACHE BOOL         "build framework hdmicamcapture"                        FORCE)
set(MODULE_SERVICE_FW_BEV               ON           CACHE BOOL         "build framework service fw_bev"                        FORCE) #COMMON
set(MODULE_SERVICE_CONFIG               ON           CACHE BOOL         "build framework service config"                        FORCE)
set(MODULE_SERVICE_MEMORY               ON           CACHE BOOL         "build framework service memory"                        FORCE)
set(MODULE_SERVICE_OPENCV               ON           CACHE BOOL         "build framework service opencv"                        FORCE)
set(MODULE_SERVICE_COMMUNICATION        OFF          CACHE BOOL         "build framework service communication"                 FORCE)
set(MODULE_SERVICE_ZMQ                  ON           CACHE BOOL         "build framework service zmq"                           FORCE)
set(MODULE_SERVICE_LIDAR                OFF          CACHE BOOL         "build framework service lidar"                         FORCE)
set(MODULE_SERVICE_CAN                  ON           CACHE BOOL         "build framework service communication can"             FORCE)
set(MODULE_SERVICE_NETWORK              ON           CACHE BOOL         "build framework service ntwork"                        FORCE)
set(MODULE_SERVICE_MEDIA                ON           CACHE BOOL         "build framework service media"                         FORCE)
set(MODULE_ADAPTOR                      ON           CACHE BOOL         "build framework adaptor os API"                        FORCE)
set(MODULE_ADAPTOR_CAN                  ON           CACHE BOOL         "build framework can adapter"                           FORCE)
set(MODULE_MULTIPROCESSTRANSPORT        ON           CACHE BOOL         "build framework multiprocesstransport"                 FORCE)
set(MODULE_J6_DEMUX                     ON          CACHE BOOL         "build framework j6_demux API"                          FORCE)
set(MODULE_MP4_PLAYBACK                 ON          CACHE BOOL         "build framework mp4_playback API"                      FORCE)
set(MODULE_LIDAR_PLAYBACK                 ON          CACHE BOOL         "build framework lidar_playback"                      FORCE)
set(MODULE_LIDAR_RECORD                 ON          CACHE BOOL         "build framework lidar_record"                      FORCE)
set(MODULE_FW_RECORD                   ON          CACHE BOOL         "build framework fw_record"                      FORCE)


set(MODULE_XDMA                         ON          CACHE BOOL         "build framework XDMA"                                    FORCE)
set(MODULE_CAN                          ON           CACHE BOOL         "build spaceos can "                                    FORCE)
set(MODULE_CAN_MASTER                   OFF          CACHE BOOL         "build spaceos can 3j3 master"                          FORCE)
set(MODULE_CAN_PERIPHERAL               OFF          CACHE BOOL         "build spaceos can 3j3 peripheral"                      FORCE)
set(MODULE_IOGATEWAY                    ON           CACHE BOOL         "build spaceos IOGATEWAY         "                      FORCE)
set(MODULE_MONITOR_PRO                  OFF          CACHE BOOL             "build  monitor pro"                                FORCE)
set(MODULE_GRIDMAP                      ON           CACHE BOOL             "build libgridmap"                                  FORCE)
set(MODULE_MULTIPROCESSTRANSPORT        ON           CACHE BOOL             "build multiProcessTransport"                                   FORCE)

############ lidar
set(MODULE_8927_LEFT_LIDAR_DRIVER         ON            CACHE BOOL             "build 8927_left_lidar_driver"                                   FORCE)
set(MODULE_8927_RIGHT_LIDAR_DRIVER         ON            CACHE BOOL             "build 8927_right_lidar_driver"                                   FORCE)
set(MODULE_HS_REAR_DRIVER                    ON            CACHE BOOL             "build hs_rear_driver"                                   FORCE)
set(MODULE_HS_RIGHT_DRIVER                    ON            CACHE BOOL             "build hs_right_driver"                                   FORCE)
set(MODULE_LIDAR_CALIB                     ON            CACHE BOOL             "build lidar_calib"                                   FORCE)
set(MODULE_RS_DRIVER                       ON            CACHE BOOL             "build rs_driver"                                   FORCE)
set(MODULE_RS_LEFT_DRIVER                       ON            CACHE BOOL             "build rs_left_driver"                                   FORCE)
set(MODULE_RS_RIGHT_DRIVER                       ON            CACHE BOOL             "build rs_right_driver"                                   FORCE)

##############################   clinet_business   ##############################
set(MODULE_DATABANK_SUPERVISORYCONTROL  OFF           CACHE BOOL         "build clinet_business Databank_SupervisoryControl API"       FORCE)

##############################   perception   ##############################
set(MODULE_PARKOCCUPY                   OFF           CACHE BOOL         "build perception datafusion parkoccupy"                FORCE)
set(MODULE_SENSORFUSION_FREESPACE       OFF          CACHE BOOL         "build perception datafusion sensorfusion_freespace"    FORCE)
set(MODULE_SCENEMANAGE                  ON          CACHE BOOL         "build perception datafusion scenemange "               FORCE)
set(MODULE_SP_PK_SENSORFUSION           ON           CACHE BOOL         "build perception datafusion SP_PK_SensorFusion"        FORCE)
set(MODULE_SP_PK_SLOTDETECT             ON           CACHE BOOL         "build perception datafusion SP_PK_SlotDetect"          FORCE)
set(MODULE_ONLINECALIB_ALL              ON           CACHE BOOL         "build perception datafusion OnlineCalibAll"            FORCE)
set(MODULE_SENSORFUSION_OD              OFF          CACHE BOOL         "build perception datafusion sensorfusion_od"           FORCE)
set(MODULE_SPACENET                     ON           CACHE BOOL         "build deeplearning spacenet"                           FORCE)
set(MODULE_VISION_PERCEPTION            ON           CACHE BOOL         "build deeplearning vision_perception"                  FORCE)
set(MODULE_SP_PK_SONARPROC              ON           CACHE BOOL         "build detection sonar"                                 FORCE)
set(MODULE_SP_PK_SONARDETECT              ON           CACHE BOOL         "build SP_PK_SonarDetect"                                 FORCE)
set(MODULE_SP_PK_SONARPDC                ON           CACHE BOOL         "build SP_PK_SonarPDC"                                 FORCE)

set(MODULE_PLD                          ON           CACHE BOOL         "build detection vision pld"                            FORCE)
set(MODULE_SEGPARSE                     ON           CACHE BOOL         "build detection vision segparse"                       FORCE)
set(MODULE_SPACE_TRACKING               ON           CACHE BOOL         "build detection vision space_tracking"                 FORCE)
set(MODULE_LANE_ON_BEV                  ON           CACHE BOOL         "build detection vision lane_on_bev"                    FORCE)
set(MODULE_SNAVI_LANE_ANALYSIS          ON           CACHE BOOL         "build detection vision snavi lane analysis"            FORCE)
set(MODULE_SNAVI_LANE_FUSION            ON           CACHE BOOL         "build detection vision snavi lane fusion"              FORCE)
set(MODULE_LIDAR_DETECT                 OFF          CACHE BOOL         "build detection lidar lidar_detect"                    FORCE)
set(MODULE_LIDARFREESPACE               ON           CACHE BOOL         "build detection lidar LidarFreespace"                  FORCE)
set(MODULE_LIDARNET                     ON           CACHE BOOL         "build detection lidar LidarNet"                        FORCE)
set(MODULE_LIDAROBJ                     ON           CACHE BOOL         "build detection lidar LidarObj"                        FORCE)
set(MODULE_LIDAROBSTACLE                ON           CACHE BOOL         "build detection lidar LidarObstacle"                   FORCE)
set(MODULE_LIDARPROC                    ON           CACHE BOOL         "build detection lidar LidarProc"                       FORCE)
set(MODULE_LIDARSLAM                    ON          CACHE BOOL         "build detection lidar LidarSLAM"                       FORCE)
set(MODULE_LOCALIZATION                 ON           CACHE BOOL         "build localization localization"                       FORCE)
set(MODULE_SLAM                         ON           CACHE BOOL         "build localization slam"                               FORCE)
set(MODULE_TSML                         ON           CACHE BOOL         "build localization tsml"                               FORCE)

set(MODULE_GNSSER_SAVER                 ON           CACHE BOOL         "build localization gnsser_saver"                       FORCE)
set(MODULE_COMDR                        ON           CACHE BOOL         "build localization odom comdr"                         FORCE)
set(MODULE_COMM_VRU_WE_ODOM             ON           CACHE BOOL         "build localization odom comm_vru_we_odom"              FORCE)
set(MODULE_VRU_PRODUCER                 ON           CACHE BOOL         "build localization odom vru_producer"                  FORCE)
set(MODULE_VRU_WE_SAVER                 ON           CACHE BOOL         "build localization odom vru_we_saver"                  FORCE)
set(MODULE_VRU_WHEELENCODER_PACKER      ON           CACHE BOOL         "build localization odom vru_wheelencoder_packer"       FORCE)
set(MODULE_YAWRATER_PRODUCER            ON           CACHE BOOL         "build localization odom yawrater_producer"             FORCE)
set(MODULE_REVERSING_ASSISTANT            ON           CACHE BOOL         "build localization odom reversing_assistant"             FORCE)
set(MODULE_SPACE_HAVPMAP                ON           CACHE BOOL         "build map maplibs space_havpmap"                       FORCE)
set(MODULE_HDMAP_WRAPPER                ON           CACHE BOOL         "build map maplibs hdmap_wrapper"                       FORCE)
set(MODULE_SPACEMAP                     ON           CACHE BOOL         "build map spacemap"                                    FORCE)
set(MODULE_MAPSERVICE                   ON           CACHE BOOL         "build map mapservice"                                  FORCE)
set(MODULE_MAPTEST                      OFF          CACHE BOOL         "build map maptest"                                     FORCE)

##############################   decision   ##############################
set(MODULE_AVP_BEHAVIORDECISION         ON           CACHE BOOL         "build avp_behaviorDecision"                            FORCE)
set(MODULE_SP_PK_OBJAVOID               ON           CACHE BOOL         "build SP_PK_ObjAvoid"                                  FORCE)
set(MODULE_SP_PK_PAS                    ON           CACHE BOOL         "build SP_PK_Pas"                                       FORCE)
set(MODULE_SP_PK_STATEMANAGER           OFF          CACHE BOOL         "build SP_PK_StateManager"                              FORCE)
set(MODULE_SP_PK_STATEMANAGER_ALL       ON           CACHE BOOL         "build SP_PK_StateManager_all"                          FORCE)
set(MODULE_SP_PK_MEB                    ON          CACHE BOOL         "build sp_pk_meb"                                       FORCE)


##############################   planning   ##############################
set(MODULE_AVP_PATHFOLLOW               ON           CACHE BOOL         "build avp_pathfollow"                                  FORCE)
set(MODULE_AVP_PATHPLAN                 OFF          CACHE BOOL         "build avp_pathplan"                                    FORCE)
set(MODULE_PATHFOLLOW                   OFF          CACHE BOOL         "build planning pathfollow"                             FORCE)
set(MODULE_PATHPLAN                     OFF          CACHE BOOL         "build planning pathplan"                               FORCE)
set(MODULE_PLANNING                     ON           CACHE BOOL         "build planning"                                        FORCE)
set(MODULE_ROUTING                      ON           CACHE BOOL         "build routing"                                         FORCE)
set(MODULE_SP_PK_PATHFOLLOW             ON           CACHE BOOL         "build SP_PK_PathFollow"                                FORCE)
set(MODULE_SP_PK_PATHPLAN               OFF          CACHE BOOL         "build SP_PK_PathPlan"                                  FORCE)
set(MODULE_AVP_LOCALPLANNER             ON           CACHE BOOL         "build avp_localplanner"                                FORCE)
set(MODULE_SP_PK_HASTAR                 ON           CACHE BOOL         "build planning sp_pk_hastar"                           FORCE)

##############################   v2x   ##############################
set(MODULE_NETWORK_CONNECTOR            ON           CACHE BOOL         "build network_connector"                               FORCE)

##############################   hmi   ##############################
set(MODULE_APA_DEBUG_MONITOR            ON           CACHE BOOL         "build DebugMonitor"                               FORCE)
set(MODULE_HMIHUB                       ON           CACHE BOOL         "build hmihub"                                          FORCE)
set(MODULE_DATA_VISUALIZATION           OFF           CACHE BOOL         "build data_visualization"                              FORCE)
set(MODULE_HMI_P7                       ON           CACHE BOOL         "build hmi_p7"                                          FORCE)
set(MODULE_HMI_IC321                    OFF          CACHE BOOL         "build hmi_ic321"                                       FORCE)
set(MODULE_HMI_ICU3                     ON          CACHE BOOL         "build hmi_icu3"                                        FORCE)
set(MODULE_HMI_SPACEVIEW                OFF           CACHE BOOL         "build hmi_SPACEVIEW"                                        FORCE)
set(MODULE_DISPLAY                      ON          CACHE BOOL         "build display"                                         FORCE)
set(MODULE_QT_WINDOW                    OFF          CACHE BOOL         "build qt_window vs2013!"                                       FORCE)
set(MODULE_WEB_HMI_SERVER               ON          CACHE BOOL         "build web_hmi_server"                                  FORCE)
set(MODULE_LIDAR_HMI                    ON           CACHE BOOL         "build Lidar_HMI"                                       FORCE)
set(MODULE_LIDAR_VISUALIZER             ON           CACHE BOOL         "build lidar_visualizer"                                FORCE)

##############################   control   ##############################
set(MODULE_VEHICLECONTROL_ES6           ON           CACHE BOOL         "build vehiclecontrol_es6"                             FORCE)

##############################   tools   ##############################
set(MODULE_WEBOTS_CONNECTOR           ON           CACHE BOOL         "build webots_connector"                             FORCE)

##############################   app   ##############################
set(MODULE_GWM_V71_ICU3_AVM             OFF          CACHE BOOL         "build avm"                                             FORCE)
set(MODULE_GWM_V71_ICU3_STITCH          OFF          CACHE BOOL         "build stitch"                                          FORCE)
set(MODULE_GWM_V71_ICU3_EOL             OFF          CACHE BOOL         "build eol"                                             FORCE)
set(MODULE_EOL_IMAGELOADER              ON           CACHE BOOL         "build eol_imageloader"                                 FORCE)

##############################   other   ##############################
set(MODULE_G2O                          OFF           CACHE BOOL        "build g2o"                                             FORCE)


##############################   launcher   ##############################
set(MODULE_LAUNCHER_WIN_MSVC               ON           CACHE BOOL        "build launcher on windows"                      FORCE)
