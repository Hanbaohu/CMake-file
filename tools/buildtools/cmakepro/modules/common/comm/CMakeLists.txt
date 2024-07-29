project(sp_comm)

################################################################################
# Source groups
################################################################################
set(XT_synchronize
    "${COMM_PATH}/source/utility/synchronizer/Synchronizer.cpp"
    "${COMM_PATH}/source/utility/synchronizer/Synchronizer.h"
)
source_group("XT_synchronize" FILES ${XT_synchronize})

set(algo
    "${COMM_PATH}/source/interface/algo/apa_embed_interface.h"
    "${COMM_PATH}/source/interface/algo/apa_logic_interface.h"
    "${COMM_PATH}/source/interface/algo/apa_modules_if.h"
    "${COMM_PATH}/source/interface/algo/apa_vc_interface.h"
    "${COMM_PATH}/source/interface/algo/pld_embed_interface.h"
    "${COMM_PATH}/source/interface/algo/scenemanager_embed_interface.h"
    "${COMM_PATH}/source/interface/algo/sp_pk_statemanager_all_interface.h"
    "${COMM_PATH}/source/interface/algo/spacemap_embed_real_time_map_interface.h"
    "${COMM_PATH}/source/interface/algo/tsml_embed_interface.h"
)
source_group("algo" FILES ${algo})

set(avm
    "${COMM_PATH}/source/interface/avm/bev_data_type.h"
    "${COMM_PATH}/source/interface/avm/camera_model.h"
    "${COMM_PATH}/source/interface/avm/camera_model_double_ex.h"
    "${COMM_PATH}/source/interface/avm/intrinsic_model.h"
    "${COMM_PATH}/source/utility/avm/cam_lut_data_4051A.cpp"
    "${COMM_PATH}/source/utility/avm/cam_lut_data_4121B.cpp"
    "${COMM_PATH}/source/utility/avm/cam_lut_data_4121B.h"
    "${COMM_PATH}/source/utility/avm/cam_lut_data_4N321.cpp"
    "${COMM_PATH}/source/utility/avm/cam_lut_data_linear.cpp"
    "${COMM_PATH}/source/utility/avm/cam_lut_data_linear.h"
    "${COMM_PATH}/source/utility/avm/camera_model.c"
    "${COMM_PATH}/source/utility/avm/camera_model_double_ex.cpp"
    "${COMM_PATH}/source/utility/avm/intrinsic_model.h"
)
source_group("avm" FILES ${avm})

set(avmimage
    "${COMM_PATH}/source/interface/avm/avmimage_typedef.h"
    "${COMM_PATH}/source/utility/avmimage/avmimage.cpp"
    "${COMM_PATH}/source/utility/avmimage/avmimage.h"
)
source_group("avmimage" FILES ${avmimage})

set(bev
    "${COMM_PATH}/source/utility/bev/bev_base.cpp"
    "${COMM_PATH}/source/utility/bev/bev_base.h"
    "${COMM_PATH}/source/utility/bev/bev_fusionweight.cpp"
    "${COMM_PATH}/source/utility/bev/bev_fusionweight.h"
    "${COMM_PATH}/source/utility/bev/bev_lut.cpp"
    "${COMM_PATH}/source/utility/bev/bev_lut.h"
    "${COMM_PATH}/source/utility/bev/bev_maker.cpp"
    "${COMM_PATH}/source/utility/bev/bev_maker.h"
    "${COMM_PATH}/source/utility/bev/bev_map_neon.cpp"
    "${COMM_PATH}/source/utility/bev/bev_map_neon.h"
    "${COMM_PATH}/source/utility/bev/bgr2y.cpp"
    "${COMM_PATH}/source/utility/bev/bgr2y.h"
    "${COMM_PATH}/source/utility/bev/linear_image_maker.cpp"
    "${COMM_PATH}/source/utility/bev/linear_image_maker.h"
    "${COMM_PATH}/source/utility/bev/pyramid_integral.cpp"
    "${COMM_PATH}/source/utility/bev/pyramid_integral.h"
    "${COMM_PATH}/source/utility/bev/topview_base.cpp"
    "${COMM_PATH}/source/utility/bev/topview_base.h"
    "${COMM_PATH}/source/utility/bev/topview_maker.cpp"
    "${COMM_PATH}/source/utility/bev/topview_maker.h"
    "${COMM_PATH}/source/utility/bev/topview_map_neon.cpp"
    "${COMM_PATH}/source/utility/bev/topview_map_neon.h"
    "${COMM_PATH}/source/utility/bev/u16_sqrt_table.cpp"
    "${COMM_PATH}/source/utility/bev/u16_sqrt_table.h"
)
source_group("bev" FILES ${bev})

set(cnn
    "${COMM_PATH}/source/interface/cnn/sdk_intf_pldnet.h"
)
source_group("cnn" FILES ${cnn})

set(comm_config
    "${COMM_PATH}/source/interface/common/spaceos_comm_config_apa.h"
)
source_group("comm_config" FILES ${comm_config})

set(common
    "${COMM_PATH}/source/interface/common/commondef.h"
    "${COMM_PATH}/source/interface/common/commonmacro.h"
    "${COMM_PATH}/source/interface/common/frameworkbase.h"
    "${COMM_PATH}/source/interface/common/ibasemodule.h"
    "${COMM_PATH}/source/interface/common/reuse.h"
    "${COMM_PATH}/source/interface/common/sdk_intf.h"
)
source_group("common" FILES ${common})

set(cv
    "${COMM_PATH}/source/interface/cv/opencv_adapter.h"
    "${COMM_PATH}/source/utility/cv/CvLog.h"
    "${COMM_PATH}/source/utility/cv/dyn_memory.c"
    "${COMM_PATH}/source/utility/cv/dyn_memory.h"
    "${COMM_PATH}/source/utility/cv/opencv_adapter.cpp"
)
source_group("cv" FILES ${cv})

set(dim3
    "${COMM_PATH}/source/utility/dim3/dim3.h"
    "${COMM_PATH}/source/utility/dim3/dim3_cast.cpp"
    "${COMM_PATH}/source/utility/dim3/dim3_frame.cpp"
    "${COMM_PATH}/source/utility/dim3/dim3_isInside.cpp"
    "${COMM_PATH}/source/utility/dim3/dim3_mathdef.h"
    "${COMM_PATH}/source/utility/dim3/dim3_metric.cpp"
    "${COMM_PATH}/source/utility/dim3/dim3_opera.cpp"
    "${COMM_PATH}/source/utility/dim3/dim3_tdf.h"
)
source_group("dim3" FILES ${dim3})

set(display
    "${COMM_PATH}/source/interface/display/display_if.h"
)
source_group("display" FILES ${display})

set(drsync
    "${COMM_PATH}/source/utility/drsync/drsync.cpp"
    "${COMM_PATH}/source/utility/drsync/drsync.h"
)
source_group("drsync" FILES ${drsync})

set(feature
    "${COMM_PATH}/source/interface/feature/feat_hog.h"
    "${COMM_PATH}/source/interface/feature/feat_lbp.h"
    "${COMM_PATH}/source/utility/feature/feat_hog.cpp"
    "${COMM_PATH}/source/utility/feature/feat_lbp.cpp"
)
source_group("feature" FILES ${feature})

set(gnss_converter
    "${COMM_PATH}/source/utility/gnss_converter/GeoConvert.cpp"
    "${COMM_PATH}/source/utility/gnss_converter/GeoConvert.h"
    "${COMM_PATH}/source/utility/gnss_converter/LatLon_UTM_Converter.cpp"
    "${COMM_PATH}/source/utility/gnss_converter/LatLon_UTM_Converter.h"
    "${COMM_PATH}/source/utility/gnss_converter/MadgwickAHRS.cpp"
    "${COMM_PATH}/source/utility/gnss_converter/MadgwickAHRS.h"
)
source_group("gnss_converter" FILES ${gnss_converter})

set(gridmap_coordinate
    "${COMM_PATH}/source/utility/gridmap_coordinate/gridmap_coordinate.cpp"
    "${COMM_PATH}/source/utility/gridmap_coordinate/gridmap_coordinate.h"
)
source_group("gridmap_coordinate" FILES ${gridmap_coordinate})

set(helper
    "${COMM_PATH}/source/utility/helper/jrhelper.cpp"
    "${COMM_PATH}/source/utility/helper/jrhelper.h"
    "${COMM_PATH}/source/utility/helper/scenemanager_helper.cpp"
    "${COMM_PATH}/source/utility/helper/scenemanager_helper.h"
)
source_group("helper" FILES ${helper})

set(lidar_common
    "${COMM_PATH}/source/utility/lidar_common/lidar_common.h"
    "${COMM_PATH}/source/utility/lidar_common/lidar_interface.h"
    "${COMM_PATH}/source/utility/lidar_common/lidar_slam_embed_interface.h"
    "${COMM_PATH}/source/utility/lidar_common/ros_msg_inherited.h"
    "${COMM_PATH}/source/utility/lidar_common/slam_common.cpp"
    "${COMM_PATH}/source/utility/lidar_common/slam_common.h"
)
source_group("lidar_common" FILES ${lidar_common})

set(lidar_pointcloud_viewer
    "${COMM_PATH}/source/interface/lidar_pointcloud_viewer/lidar_pointcloud_viewer_interface.h"
)
source_group("lidar_pointcloud_viewer" FILES ${lidar_pointcloud_viewer})

set(lidardriver
    "${COMM_PATH}/source/interface/lidardriver/lidar_left_driver_interface.h"
    "${COMM_PATH}/source/interface/lidardriver/lidar_rear_driver_interface.h"
    "${COMM_PATH}/source/interface/lidardriver/lidar_right_driver_interface.h"
)
source_group("lidardriver" FILES ${lidardriver})

set(log
    "${COMM_PATH}/source/interface/common/log.h"
    "${COMM_PATH}/source/interface/common/log4c.h"
    "${COMM_PATH}/source/utility/log/log.cpp"
    "${COMM_PATH}/source/utility/log/logc.cpp"
)
source_group("log" FILES ${log})

set(logparser
    "${COMM_PATH}/source/utility/logparser/log_parser.cpp"
    "${COMM_PATH}/source/utility/logparser/log_parser.h"
    "${COMM_PATH}/source/utility/logparser/pystr.cpp"
    "${COMM_PATH}/source/utility/logparser/pystr.h"
    "${COMM_PATH}/source/utility/logparser/textparser.cpp"
    "${COMM_PATH}/source/utility/logparser/textparser.h"
)
source_group("logparser" FILES ${logparser})

set(maptransfer
    "${COMM_PATH}/source/interface/hmi/hmi_map_interface.h"
    "${COMM_PATH}/source/utility/hmi/hmi_map_interface.cpp"
)
source_group("maptransfer" FILES ${maptransfer})

set(math
    "${COMM_PATH}/source/interface/math/levmarqt_minimizer.h"
    "${COMM_PATH}/source/interface/math/math_common.h"
    "${COMM_PATH}/source/utility/math/First_Order_Lag_filter.cpp"
    "${COMM_PATH}/source/utility/math/First_Order_Lag_filter.h"
    "${COMM_PATH}/source/utility/math/levmarqt_minimizer.cpp"
    "${COMM_PATH}/source/utility/math/math_common.cpp"
    "${COMM_PATH}/source/utility/math/math_matrix.cpp"
    "${COMM_PATH}/source/utility/math/math_matrix.h"
)
source_group("math" FILES ${math})

set(memory
    "${COMM_PATH}/source/utility/memory/queue.hpp"
)
source_group("memory" FILES ${memory})

set(ml
    "${COMM_PATH}/source/interface/ml/cla_adaboost.h"
    "${COMM_PATH}/source/utility/ml/classifier/cla_adaboost.cpp"
    "${COMM_PATH}/source/utility/ml/classifier/LightCNN/archit/cnn_archit.h"
    "${COMM_PATH}/source/utility/ml/classifier/LightCNN/archit/cnn_base_layer.cpp"
    "${COMM_PATH}/source/utility/ml/classifier/LightCNN/archit/cnn_base_layer.h"
    "${COMM_PATH}/source/utility/ml/classifier/LightCNN/archit/cnn_conv_layer.cpp"
    "${COMM_PATH}/source/utility/ml/classifier/LightCNN/archit/cnn_conv_layer.h"
    "${COMM_PATH}/source/utility/ml/classifier/LightCNN/archit/cnn_fc_layer.cpp"
    "${COMM_PATH}/source/utility/ml/classifier/LightCNN/archit/cnn_fc_layer.h"
    "${COMM_PATH}/source/utility/ml/classifier/LightCNN/archit/cnn_pool_layer.cpp"
    "${COMM_PATH}/source/utility/ml/classifier/LightCNN/archit/cnn_pool_layer.h"
    "${COMM_PATH}/source/utility/ml/classifier/LightCNN/archit/cnn_tensor.cpp"
    "${COMM_PATH}/source/utility/ml/classifier/LightCNN/archit/cnn_tensor.h"
    "${COMM_PATH}/source/utility/ml/classifier/LightCNN/tools/ncv_imtools.cpp"
    "${COMM_PATH}/source/utility/ml/classifier/LightCNN/tools/ncv_imtools.h"
)
source_group("ml" FILES ${ml})

set(pk_common__include
    "${COMM_PATH}/source/utility/pk_common/include/collision_check.h"
    "${COMM_PATH}/source/utility/pk_common/include/MathFunc.h"
    "${COMM_PATH}/source/utility/pk_common/include/Mirror_Collision_check.h"
    "${COMM_PATH}/source/utility/pk_common/include/PathPlan_Func.h"
    "${COMM_PATH}/source/utility/pk_common/include/PK_Calibration.h"
    "${COMM_PATH}/source/utility/pk_common/include/PK_Plan.h"
    "${COMM_PATH}/source/utility/pk_common/include/PK_SensorPreproc.h"
    "${COMM_PATH}/source/utility/pk_common/include/SP_PK_Types.h"
    "${COMM_PATH}/source/utility/pk_common/include/USP_UniComp.h"
    "${COMM_PATH}/source/utility/pk_common/PK_Common.h"
)
source_group("pk_common\\include" FILES ${pk_common__include})

set(pk_common__source
    "${COMM_PATH}/source/utility/pk_common/source/Collision_check.c"
    "${COMM_PATH}/source/utility/pk_common/source/MathFunc.c"
    "${COMM_PATH}/source/utility/pk_common/source/Mirror_Collision_check.c"
    "${COMM_PATH}/source/utility/pk_common/source/PathPlan_Func.c"
    "${COMM_PATH}/source/utility/pk_common/source/PK_Calibration.c"
    "${COMM_PATH}/source/utility/pk_common/source/PK_Plan_Utility.c"
    "${COMM_PATH}/source/utility/pk_common/source/PK_Utility.c"
    "${COMM_PATH}/source/utility/pk_common/source/USP_UniComp.c"
)
source_group("pk_common\\source" FILES ${pk_common__source})

set(recorder
    "${COMM_PATH}/source/utility/recorder/DataRecorder.cpp"
    "${COMM_PATH}/source/utility/recorder/DataRecorder.h"
)
source_group("recorder" FILES ${recorder})

set(robotic
    "${COMM_PATH}/source/utility/robotic/robotic_commtypedf.h"
)
source_group("robotic" FILES ${robotic})

set(robotic__path_planning__cublic_spline_planner
    "${COMM_PATH}/source/utility/robotic/path_planning/cublic_spline_planner/cublic_spline_planner.cpp"
    "${COMM_PATH}/source/utility/robotic/path_planning/cublic_spline_planner/cublic_spline_planner.h"
    "${COMM_PATH}/source/utility/robotic/path_planning/cublic_spline_planner/spline_3rd.h"
)
source_group("robotic\\path_planning\\cublic_spline_planner" FILES ${robotic__path_planning__cublic_spline_planner})

set(robotic__path_planning__dijkstra_graph_planner
    "${COMM_PATH}/source/utility/robotic/path_planning/dijkstra_graph_planner/dijkstra_graph_planner.cpp"
    "${COMM_PATH}/source/utility/robotic/path_planning/dijkstra_graph_planner/dijkstra_graph_planner.h"
    "${COMM_PATH}/source/utility/robotic/path_planning/dijkstra_graph_planner/general_dijkstra.cpp"
    "${COMM_PATH}/source/utility/robotic/path_planning/dijkstra_graph_planner/general_dijkstra.h"
)
source_group("robotic\\path_planning\\dijkstra_graph_planner" FILES ${robotic__path_planning__dijkstra_graph_planner})

set(robotic__path_tracking__lqr_steer_control
    "${COMM_PATH}/source/utility/robotic/path_tracking/lqr_steer_control/lqr_steer_control.cpp"
    "${COMM_PATH}/source/utility/robotic/path_tracking/lqr_steer_control/lqr_steer_control.h"
)
source_group("robotic\\path_tracking\\lqr_steer_control" FILES ${robotic__path_tracking__lqr_steer_control})

set(sched
    "${COMM_PATH}/source/interface/schedule/scheduler_if.h"
)
source_group("sched" FILES ${sched})

set(smc
    "${COMM_PATH}/source/interface/smc/smc.h"
    "${COMM_PATH}/source/utility/smc/smc.cpp"
)
source_group("smc" FILES ${smc})

set(sobject
    "${COMM_PATH}/source/utility/sobject/sobject.h"
    "${COMM_PATH}/source/utility/sobject/sobject_base.h"
    "${COMM_PATH}/source/utility/sobject/sobject_enum.h"
    "${COMM_PATH}/source/utility/sobject/sobject_hmi.h"
    "${COMM_PATH}/source/utility/sobject/sobject_map.h"
)
source_group("sobject" FILES ${sobject})

set(state_machine__hsm
    "${COMM_PATH}/source/utility/state_machine/hsm/HSM.cpp"
    "${COMM_PATH}/source/utility/state_machine/hsm/HSM.h"
)
source_group("state_machine\\hsm" FILES ${state_machine__hsm})

set(tracker
    "${COMM_PATH}/source/utility/tracker/kalman1D.cpp"
    "${COMM_PATH}/source/utility/tracker/kalman1D.h"
)
source_group("tracker" FILES ${tracker})

set(vm
    "${COMM_PATH}/source/utility/vehmdl/vm_cfgloader.cpp"
    "${COMM_PATH}/source/utility/vehmdl/vm_cfgloader.h"
    "${COMM_PATH}/source/utility/vehmdl/vm_config.h"
    "${COMM_PATH}/source/utility/vehmdl/vm_motion.cpp"
    "${COMM_PATH}/source/utility/vehmdl/vm_motion.h"
)
source_group("vm" FILES ${vm})

set(xml
    "${COMM_PATH}/thirdparty/tinyxml2/tinyxml2.cpp"
    "${COMM_PATH}/thirdparty/tinyxml2/tinyxml2.h"
)
source_group("xml" FILES ${xml})

set(ALL_FILES
    ${LidarObstacle}
    ${XT_synchronize}
    ${algo}
    ${avm}
    ${avmimage}
    ${bev}
    ${cnn}
    ${comm_config}
    ${common}
    ${cv}
    ${dim3}
    ${display}
    ${drsync}
    ${feature}
    ${gnss_converter}
    ${gridmap_coordinate}
    ${helper}
    # ${lidar_common}
    # ${lidar_pointcloud_viewer}
    # ${lidardriver}
    ${log}
    ${logparser}
    ${maptransfer}
    ${math}
    ${memory}
    ${ml}
    ${pk_common__include}
    ${pk_common__source}
    ${recorder}
    ${robotic}
    ${robotic__path_planning__cublic_spline_planner}
    ${robotic__path_planning__dijkstra_graph_planner}
    ${robotic__path_tracking__lqr_steer_control}
    ${sched}
    ${smc}
    ${sobject}
    ${state_machine__hsm}
    ${tracker}
    ${vm}
    ${xml}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${COMM_PATH}/thirdparty/avpmap/interface;"
    "${COMM_PATH}/thirdparty/avpmap/source;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/schedule;"
    "${SLAM_PATH}/3rdparty/Eigen;"
    "${COMM_PATH}/thirdparty/tinyxml2;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/utility/logparser;"
    "${COMM_PATH}/source/utility/sobject;"
    "${COMM_PATH}/source/interface/hmi;"
    "${COMM_PATH}/source/utility/helper;"
    "${COMM_PATH}/source/utility/avm;"
    "${COMM_PATH}/source/utility/pk_common;"
    "${COMM_PATH}/source/utility/tracker;"
    "${COMM_PATH}/source/interface/tracker;"
    "${COMM_PATH}/thirdparty/pcl-1.8.1/include/pcl-1.8;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/utils;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/ml;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/math;"
    "${COMM_PATH}/source/interface/gpu3d;"
    "${COMM_PATH}/source/interface/feature;"
    "${COMM_PATH}/thirdparty/lcm/include"
    "${COMM_PATH}/source/utility"
    "${COMM_PATH}/source/interface"
    "${COMM_PATH}/source/interface/utility"
    "${COMM_PATH}/source/utility/kalman"
    "${COMM_PATH}/source/utility/math"
    "${TSML_PATH}/source"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
	${COMM_PATH}/thirdparty/tinyxml2/
)


################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
	${${PROJECT_NAME}_link_directories}
    ${opencv_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "common")

set(LIBRARIES
    ${${PROJECT_NAME}_link_libraries}
    ${opencv_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
################################################################################
# Compile definitions
################################################################################

if (MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE -DWIN32 -DSPOS_OPTIMIZE -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -DNODEBUG -D_USRDLL -D_COMM_ -DNOMINMAX)
    #SPOS_OPTIMIZE WIN32 _CRT_SECURE_NO_WARNINGS MODULER_EXPORTS _USRDLL _COMM_ _MBCS -D_MBCS  -DNOMINMAX
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE "SIM_VS")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
    target_compile_options(${PROJECT_NAME} PRIVATE
        /O2;
        /Oi;
        /Gy;
        /wd4819;
        /wd4068;
        /wd4244;
        /wd4101;
        /wd4554;
        /wd4005;
        /wd4577;
        /wd4711;
        /sdl;
        /W3;
        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
        ${DEFAULT_CXX_EXCEPTION_HANDLING};
        /Zc:wchar_t;
        /Y-
    )

    target_link_options(${PROJECT_NAME} PRIVATE
        /OPT:REF;
        /OPT:ICF;
        /PROFILE;
        /INCREMENTAL:NO;
        #/DEBUG;
        /SUBSYSTEM:WINDOWS
        #/NODEFAULTLIB:msvcrt.lib
    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################
if(MSVC)
    set(ADDITIONAL_LIBRARY_DEPENDENCIES
        #"lcm;"
        "kernel32;"
        "user32;"
        "gdi32;"
        "winspool;"
        "comdlg32;"
        "advapi32;"
        "shell32;"
        "ole32;"
        "oleaut32;"
        "uuid;"
        "odbc32;"
        "odbccp32"
        "opencv_world460"
    )

    target_link_directories(${PROJECT_NAME} PRIVATE
            "${platform_opencv_link_directories}"
    )
    target_link_libraries(${PROJECT_NAME} PRIVATE "${ADDITIONAL_LIBRARY_DEPENDENCIES}")
endif()

# add this when building libhastar
# add_dependencies(${PROJECT_NAME}
#     libhastar
# )
