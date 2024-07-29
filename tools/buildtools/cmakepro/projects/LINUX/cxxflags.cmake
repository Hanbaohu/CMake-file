###############################################################################
# 项目特殊全局的c flags在这里配置，不然统一放到projects/common/cflags.cmake里面
###############################################################################
if (WIN32)
    SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS_RELEASE} -DSPOS_WIN -D_UINT64_DEFINED -DNOMINMAX ")
    SET(CMAKE_C_FLAGS    "${CMAKE_C_FLAGS_RELEASE}   -DSPOS_WIN")
    SET(DEFAULT_CXX_EXCEPTION_HANDLING "/EHsc")
elseif (UNIX)
    SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS_DEBUG} -DSPOS_LINUX")
    SET(CMAKE_C_FLAGS    "${CMAKE_C_FLAGS_DEBUG}   -DSPOS_LINUX")
endif()

###############################################################################
# 特殊的指定模块宏定义，模块名字_include_directories，如：set(SP_PK_SlotDetect_CXX_FLAGS "-D_DEBUG_DISPLAY_  -Dxxxxxxx -Xyyyyyyyyy")
#   像测试用的宏，不是全部平台都要打开的宏、放这里
###############################################################################
#spacenet宏参考：https://dylny39pmo.feishu.cn/wiki/wikcnsQuL1wum6fafghIs00ZcdS

if (WIN32)
    #no flags
elseif (UNIX)
    set(spacenet_CXX_FLAGS "-DSPOS_LINUX -Dx_SPACENET_DEBUG_ -DDETECT_LINEOD -Dx_DEBUG_NO_CONTROL_ -DxDETECT_PLDSOLE -DxDETECT_OBJECT -DxDETECT_SEG12M -DxDETECT_PILLAR -DxDETECT_LANE -DDETECT_SLOTENTRY -DDETECT_PLDANDSEG -DxDETECT_PLD2STAGE -DDETECT_LINEOD -DETECT_LINEODS -DLINEOD_ANCHOR_FREE")
    set(space_tracking_CXX_FLAGS "-Dx_DEBUG_NO_CONTROL_ -D_xSPACE_TRACKING_DEBUG_ -DTRACK_SEG -DTRACK_LINEOD  -DTRACK_LD -Dx_TRACK_SEG_DEBUG_")
    set(slam_CXX_FLAGS "-D_TP_ -D__ANDROID__ ")
    set(apa_debug_monitor_CXX_FLAGS " -DCV__ENABLE_C_API_CTORS")
    set(can_master_CXX_FLAGS " -D_CAN_MASTER_")
    set(can_peripheral_CXX_FLAGS " -D_CAN_PERIPHERAL_")
    set(zmq_service_CXX_FLAGS "-std=c++11  -fvisibility=hidden  -fpermissive -Wdeprecated-declarations -Wconversion-null")
endif()
# set(fw_bev_CXX_FLAGS "OPENCV=1;_UINT64_DEFINED;_tda4_qnx_")
# set(pld_CXX_FLAGS "_ON_TDA4_OPENCV_;_ON_TDA4_;_UINIT_64_T_")
# set(avp_behaviorDecision_CXX_FLAGS "OPENCV=1;_ON_TDA4_OPENCV_;_UINIT_64_T_")
# set(SP_PK_ObjAvoid_CXX_FLAGS "ES6=1;_UINT64_DEFINED;")
# set(DebugMonitor_CXX_FLAGS "OPENCV=1;_ON_TDA4_OPENCV_;_UINIT_64_T_")
# set(mp4_playback_CXX_FLAGS "OPENCV=1;_ON_TDA4_OPENCV_;_UINIT_64_T_")
# set(fw_sdk_CXX_FLAGS "")
