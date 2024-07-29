
###############################################################################
# 项目特殊全局的c flags在这里配置，不然统一放到projects/common/cflags.cmake里面
###############################################################################

SET(CMAKE_CXX_FLAGS  "-Wall  -DSPOS_WIN  -D_UINT64_DEFINED -DNOMINMAX ")
SET(CMAKE_C_FLAGS  "-Wall -DSPOS_WIN   -D_UINT64_DEFINED  -DNOMINMAX ")

SET(DEFAULT_CXX_EXCEPTION_HANDLING "/EHsc")

###############################################################################
# 特殊的指定模块宏定义，模块名字_include_directories，如：set(SP_PK_SlotDetect_CXX_FLAGS "-D_DEBUG_DISPLAY_  -Dxxxxxxx -Xyyyyyyyyy")
#   像测试用的宏，不是全部平台都要打开的宏、放这里
###############################################################################
#spacenet宏参考：https://dylny39pmo.feishu.cn/wiki/wikcnsQuL1wum6fafghIs00ZcdS
# set(spacenet_CXX_FLAGS "-Dx_OD_SHOW_ -DxDEBUG_OD_COPY_DATA -DxDEBUG_SAVE_PIC -Dx_SPACENET_DEBUG_ -DDETECT_LINEOD -Dx_DEBUG_NO_CONTROL_ -DDETECT_PLDSOLE -DxDETECT_OBJECT -DxDETECT_SEG12M -DxDETECT_PILLAR -DxDETECT_LANE -DDETECT_SLOTENTRY -DDETECT_PLDANDSEG -DDETECT_PLD2STAGE -DxDETECT_LINEODS -DDETECT_LINEOD -DLINEOD_ANCHOR_FREE")
# set(space_tracking_CXX_FLAGS "-Dx_SPACE_TRACKING_DEBUG_ -Dx_DEBUG_NO_CONTROL_ -D_xSPACE_TRACKING_DEBUG_ -DxTRACK_SEG -DxTRACK_LINEOD  -DxTRACK_LD -Dx_TRACK_SEG_DEBUG_")
# set(slam_CXX_FLAGS "-Dx_SLAM_ORI_LOC_PIC_DEBUG_ -D_TP_ -D__ANDROID__ -std=gnu++11 -std=c++11")
# set(apa_debug_monitor_CXX_FLAGS " -DCV__ENABLE_C_API_CTORS")
# set(can_master_CXX_FLAGS " -D_CAN_MASTER_")
# set(can_peripheral_CXX_FLAGS " -D_CAN_PERIPHERAL_")
# set(sp_autopilot_CXX_FLAGS   "-DxDEBUG_OD_COPY_DATA")
# set(ip42_CXX_FLAGS   "-DxSLAM_FS_OD_DEBUG  -DxJSON_OD_TEST")
# set(fw_bev_CXX_FLAGS   "-DxSPOS_QNX_ARM_TI_TDA4_DEBUG")
# set(fw_sdk_CXX_FLAGS   "-DxDEBUG_OD_COPY_DATA")
# set(SP_PK_SlotDetect_CXX_FLAGS   "-DxSPOS_QNX_ARM_TI_TDA4_DEBUG")
# set(scenemanager_CXX_FLAGS   "-DxLOAD_PIC_FS_TEST")


