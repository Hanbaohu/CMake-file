
###############################################################################
# Options:模块开关
###############################################################################
set(MODULE_SP_COMM                      ON           CACHE BOOL         "build sp_comm"                                         FORCE)
set(MODULE_APA_COMM_MATH                ON           CACHE BOOL         "build apa_comm_math"                                   FORCE)
set(MODULE_FRAMEWORKBASE                ON           CACHE BOOL         "build frameworkbase"                                   FORCE)
set(MODULE_SERVICE_FW_SDK               ON           CACHE BOOL         "build framework service fw_sdk"                        FORCE)
set(MODULE_SERVICE_FW_BEV               ON           CACHE BOOL         "build framework service fw_bev"                        FORCE)
set(MODULE_SERVICE_CONFIG               ON           CACHE BOOL         "build framework service config"                        FORCE)
set(MODULE_SERVICE_MEMORY               ON           CACHE BOOL         "build framework service memory"                        FORCE)
set(MODULE_SERVICE_OPENCV               ON           CACHE BOOL         "build framework service opencv"                        FORCE)
set(MODULE_SERVICE_COMMUNICATION        OFF          CACHE BOOL         "build framework service communication"                 FORCE)
set(MODULE_SERVICE_ZMQ                  ON           CACHE BOOL         "build framework service zmq"                           FORCE)
set(MODULE_SERVICE_LIDAR                OFF          CACHE BOOL         "build framework service lidar"                         FORCE)
set(MODULE_SERVICE_CAN                  ON           CACHE BOOL         "build framework service communication can"             FORCE)
set(MODULE_SERVICE_NETWORK              ON           CACHE BOOL         "build framework service ntwork"                        FORCE)
set(MODULE_ADAPTOR                      ON           CACHE BOOL         "build framework adaptor os API"                        FORCE)
set(MODULE_ADAPTOR_CAN                  ON           CACHE BOOL         "build framework can adapter"                           FORCE)
set(MODULE_J6_DEMUX                     ON           CACHE BOOL         "build framework j6_demux API"                          FORCE)
set(MODULE_MP4_PLAYBACK                 ON           CACHE BOOL         "build framework mp4_playback API"                      FORCE)
set(MODULE_CAN                          ON           CACHE BOOL         "build spaceos can "                                    FORCE)
set(MODULE_CAN_MASTER                   ON           CACHE BOOL         "build spaceos can 3j3 master"                          FORCE)
set(MODULE_CAN_PERIPHERAL               ON           CACHE BOOL         "build spaceos can 3j3 peripheral"                      FORCE)
##############################   perception   ##############################
set(MODULE_PARKOCCUPY                   ON           CACHE BOOL         "build perception datafusion parkoccupy"                FORCE)
set(MODULE_SENSORFUSION_FREESPACE       OFF          CACHE BOOL         "build perception datafusion sensorfusion_freespace"    FORCE)
set(MODULE_SP_PK_SENSORFUSION           ON           CACHE BOOL         "build perception datafusion SP_PK_SensorFusion"        FORCE)
set(MODULE_SP_PK_SLOTDETECT             ON           CACHE BOOL         "build perception datafusion SP_PK_SlotDetect"          FORCE)
set(MODULE_SENSORFUSION_OD              OFF          CACHE BOOL         "build perception datafusion sensorfusion_od"           FORCE)
set(MODULE_SPACENET                     ON           CACHE BOOL         "build deeplearning spacenet"                           FORCE)
set(MODULE_VISION_PERCEPTION            ON           CACHE BOOL         "build deeplearning vision_perception"                  FORCE)
set(MODULE_SONAR                        ON           CACHE BOOL         "build detection sonar"                                 FORCE)
set(MODULE_PLD                          ON           CACHE BOOL         "build detection vision pld"                            FORCE)
set(MODULE_SEGPARSE                     ON           CACHE BOOL         "build detection vision segparse"                       FORCE)
set(MODULE_SPACE_TRACKING               ON           CACHE BOOL         "build detection vision space_tracking"                 FORCE)

set(MODULE_LIDAR_DETECT                 OFF          CACHE BOOL         "build detection lidar lidar_detect"                    FORCE)
set(MODULE_LIDARFREESPACE               OFF          CACHE BOOL         "build detection lidar LidarFreespace"                  FORCE)
set(MODULE_LIDARNET                     OFF          CACHE BOOL         "build detection lidar LidarNet"                        FORCE)
set(MODULE_LIDAROBJ                     OFF          CACHE BOOL         "build detection lidar LidarObj"                        FORCE)
set(MODULE_LIDARPROC                    OFF          CACHE BOOL         "build detection lidar LidarProc"                       FORCE)
set(MODULE_LIDARSLAM                    OFF          CACHE BOOL         "build detection lidar LidarSLAM"                       FORCE)
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
set(MODULE_SP_PK_MEB                    OFF          CACHE BOOL         "build sp_pk_meb"                                       FORCE)


##############################   planning   ##############################
set(MODULE_AVP_PATHFOLLOW               ON           CACHE BOOL         "build avp_pathfollow"                                  FORCE)
set(MODULE_AVP_PATHPLAN                 ON           CACHE BOOL         "build avp_pathplan"                                    FORCE)
set(MODULE_PATHFOLLOW                   OFF          CACHE BOOL         "build planning pathfollow"                             FORCE)
set(MODULE_PATHPLAN                     OFF          CACHE BOOL         "build planning pathplan"                               FORCE)
set(MODULE_PLANNING                     ON           CACHE BOOL         "build planning"                                        FORCE)
set(MODULE_ROUTING                      ON           CACHE BOOL         "build routing"                                         FORCE)
set(MODULE_SP_PK_PATHFOLLOW             ON           CACHE BOOL         "build SP_PK_PathFollow"                                FORCE)
set(MODULE_SP_PK_PATHPLAN               ON           CACHE BOOL         "build SP_PK_PathPlan"                                  FORCE)

##############################   v2x   ##############################
set(MODULE_NETWORK_CONNECTOR            ON           CACHE BOOL         "build network_connector"                               FORCE)

##############################   hmi   ##############################
set(MODULE_APA_DEBUG_MONITOR            ON           CACHE BOOL         "build apa_debug_monitor"                               FORCE)
set(MODULE_HMIHUB                       ON           CACHE BOOL         "build hmihub"                                          FORCE)
set(MODULE_DATA_VISUALIZATION           ON           CACHE BOOL         "build data_visualization"                              FORCE)
set(MODULE_HMI_P7                       ON           CACHE BOOL         "build hmi_p7"                                          FORCE)
set(MODULE_HMI_IC321                    OFF          CACHE BOOL         "build hmi_ic321"                                       FORCE)
set(MODULE_HMI_ICU3                     OFF          CACHE BOOL         "build hmi_icu3"                                        FORCE)
set(MODULE_DISPLAY                      OFF          CACHE BOOL         "build display"                                         FORCE)
set(MODULE_QT_WINDOW                    OFF          CACHE BOOL         "build qt_window"                                       FORCE)
set(MODULE_WEB_HMI_SERVER               OFF          CACHE BOOL         "build web_hmi_server"                                  FORCE)

##############################   control   ##############################
set(MODULE_VEHICLECONTROL_ES6           ON           CACHE BOOL         "build vehiclecontrol_es6"                             FORCE)

##############################   app   ##############################
set(MODULE_GWM_V71_ICU3_AVM             OFF          CACHE BOOL         "build avm"                                             FORCE)
set(MODULE_GWM_V71_ICU3_STITCH          OFF          CACHE BOOL         "build stitch"                                          FORCE)
set(MODULE_GWM_V71_ICU3_EOL             OFF          CACHE BOOL         "build eol"                                             FORCE)
set(MODULE_GWM_V71_ICU3_EOL_IMAGELOADER OFF          CACHE BOOL         "build eol_imageloader"                                 FORCE)

##############################   other   ##############################
set(MODULE_G2O                          ON           CACHE BOOL        "build g2o"                                             FORCE)

