
###############################################################################
# 差异的链接库路径,命令方式固定：模块名字_link_directories,多个话之间用分号;隔开，不能用空格，
# 如：set(sp_comm_link_directories ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################
set(SP_PK_SonarDetect_link_directories
    "${SP_PK_SONARDETECT_PATH}/source/algo_interface"
)

###############################################################################
# 差异的链接库,命令方式固定：模块名字_link_libraries,多个话之间用分号;隔开，不能用空格，
# 如：set(sp_comm_link_libraries ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################
set(slam_link_libraries  
    "opencv_service"
    "g2o"
)

set(SP_PK_SonarDetect_link_libraries  
    "usfunctionlib"
)