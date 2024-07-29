
###############################################################################
# 项目特殊全局的c flags在这里配置，不然统一放到projects/common/cflags.cmake里面
###############################################################################
SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS_DEBUG} -D_ON_J3_ -DSPOS_LINUX_ARM_HORIZON_J3 -DSPOS_LINUX -D_UINT64_DEFINED")


###############################################################################
# 特殊的指定模块宏定义，模块名字_include_directories，如：set(SP_PK_SlotDetect_CXX_FLAGS "-D_DEBUG_DISPLAY_  -Dxxxxxxx -Xyyyyyyyyy")
#   像测试用的宏，不是全部平台都要打开的宏、放这里
###############################################################################
#spacenet宏参考：https://dylny39pmo.feishu.cn/wiki/wikcnsQuL1wum6fafghIs00ZcdS
set(spacenet_CXX_FLAGS "-Dx_SPACENET_DEBUG_ -DxDETECT_LINEOD -Dx_DEBUG_NO_CONTROL_ -DxDETECT_PLDSOLE -DxDETECT_OBJECT -DxDETECT_SEG12M -DxDETECT_PILLAR -DxDETECT_LANE -DDETECT_SLOTENTRY -DDETECT_PLDANDSEG -DxDETECT_PLD2STAGE")
set(space_tracking_CXX_FLAGS "-Dx_DEBUG_NO_CONTROL_ -D_xSPACE_TRACKING_DEBUG_ -DTRACK_SEG -DTRACK_LINEOD  -DTRACK_LD -Dx_TRACK_SEG_DEBUG_")
set(slam_CXX_FLAGS "-D_TP_ -D__ANDROID__ ")
set(apa_debug_monitor_CXX_FLAGS " -DCV__ENABLE_C_API_CTORS")
set(can_master_CXX_FLAGS " -D_CAN_MASTER_")
set(can_peripheral_CXX_FLAGS " -D_CAN_PERIPHERAL_")
set(zmq_service_CXX_FLAGS "-std=gnu++11 -std=c++11  -fvisibility=hidden  -fpermissive -Wdeprecated-declarations -Wconversion-null -DLITE_MODE=1")
