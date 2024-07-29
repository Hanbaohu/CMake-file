
###############################################################################
# 项目特殊全局的c flags在这里配置，不然统一放到projects/common/cflags.cmake里面
###############################################################################
SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS_DEBUG} -D_QNX_SOURCE -D_ON_QNX_ -D_tda4_qnx_ -D_ON_TDA4_ -D_ON_TDA4_OPENCV_ -DSPOS_QNX_ARM_QUALCOMM_SA9000 -DSPOS_QNX_ARM_QULACOMM_8540 -DSPOS_QNX_ARM_QUALCOMM_8540 -D_ON_QUALCOMM_8540_ -DSPOS_LINUX -fpermissive -fPIC")

###############################################################################
# 特殊的指定模块宏定义，模块名字_include_directories，如：set(SP_PK_SlotDetect_CXX_FLAGS "-D_DEBUG_DISPLAY_  -Dxxxxxxx -Xyyyyyyyyy")
#   像测试用的宏，不是全部平台都要打开的宏、放这里
###############################################################################
set(SP_PK_SlotDetect_CXX_FLAGS "-D_DEBUG_DISPLAY_")
#spacenet宏参考：https://dylny39pmo.feishu.cn/wiki/wikcnsQuL1wum6fafghIs00ZcdS
set(spacenet_CXX_FLAGS "-Dx_SPACENET_DEBUG_ -DxDETECT_LINEOD -Dx_DEBUG_NO_CONTROL_ -DxDETECT_PLDSOLE -DxDETECT_OBJECT -DxDETECT_SEG12M -DDETECT_PILLAR -DxDETECT_LANE -DDETECT_SLOTENTRY -DDETECT_PLDANDSEG -DDETECT_PLD2STAGE -D__EXT -D__USESRCVERSION -D__EXT_POSIX1_198808 -D__FILENAME__ -D_UINIT_64_T_")
set(slam_CXX_FLAGS "-D_TP_")
set(mp4_playback_CXX_FLAGS "-DSPOS_QNX_ARM_QUALCOMM_8540 -DOPENCV=1 -D_ON_TDA4_OPENCV_ -D_UINIT_64_T_")
set(avm_CXX_FLAGS "-Dqnx -D_TDA4_QNX")
set(can_adaptor_CXX_FLAGS " -DSP_VENUS  -D_ON_ME5_ -D_ON_V71_ -D_CAN_ADAPTER_ -D_tda4_qnx_ -DOPENCV -O3 -DNDEBUG -fPIC  -frecord-gcc-switches -fstack-protector -Wl,--no-undefined -Wall  -Wno-deprecated-declarations -march=armv8-a -std=gnu++1z")
