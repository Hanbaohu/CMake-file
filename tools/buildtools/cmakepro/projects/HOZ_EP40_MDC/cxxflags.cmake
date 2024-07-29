
###############################################################################
# 项目特殊全局的c flags在这里配置，不然统一放到projects/common/cflags.cmake里面
###############################################################################
SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS_DEBUG} -DSPOS_LINUX_ARM_HW_MDC -DSPOS_LINUX -D_UINT64_DEFINED")


###############################################################################
# 特殊的指定模块宏定义，模块名字_include_directories，如：set(SP_PK_SlotDetect_CXX_FLAGS "-D_DEBUG_DISPLAY_  -Dxxxxxxx -Xyyyyyyyyy")
#   像测试用的宏，不是全部平台都要打开的宏、放这里
###############################################################################
#spacenet宏参考：https://dylny39pmo.feishu.cn/wiki/wikcnsQuL1wum6fafghIs00ZcdS
set(spacenet_CXX_FLAGS "-Dx_SPACENET_DEBUG_ -DDETECT_LINEOD -Dx_DEBUG_NO_CONTROL_ -DDETECT_PLDSOLE -DDETECT_SEG12M -DDETECT_PILLAR -DDETECT_LANE -DDETECT_SLOTENTRY -DDETECT_PLDANDSEG -DDETECT_PLD2STAGE -DPLD2STAGE_WITH_TYPECLS")
set(space_tracking_CXX_FLAGS "-Dx_DEBUG_NO_CONTROL_ -D_xSPACE_TRACKING_DEBUG_ -DTRACK_SEG -DTRACK_LINEOD  -DTRACK_LD -Dx_TRACK_SEG_DEBUG_")
set(slam_CXX_FLAGS "-D_TP_ -D__ANDROID__ -DCV__ENABLE_C_API_CTORS")
set(apa_debug_monitor_CXX_FLAGS " -DCV__ENABLE_C_API_CTORS")

