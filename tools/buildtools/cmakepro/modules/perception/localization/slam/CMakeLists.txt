project(slam)

################################################################################
# Source groups
################################################################################
set(src
    "${SLAM_PATH}/3rdparty/fbow/fbow.cpp"
    "${SLAM_PATH}/3rdparty/fbow/vocabulary_creator.cpp"
    "${SLAM_PATH}/src/common/comm_kalman.cpp"
    "${SLAM_PATH}/src/common/dllmain.cpp"
    "${SLAM_PATH}/src/common/file_operation.cpp"
    "${SLAM_PATH}/src/common/fused_vehicle_motion.cpp"
    "${SLAM_PATH}/src/common/log_reader.cpp"
    "${SLAM_PATH}/src/common/math_matrix.cpp"
    # "${SLAM_PATH}/src/common/stdafx.cpp"
    "${SLAM_PATH}/src/common/vehicle_motion.cpp"
    "${SLAM_PATH}/src/interface/algo_interface.cpp"
    "${SLAM_PATH}/src/interface/algo_process.cpp"
    "${SLAM_PATH}/src/interface/ArmMapping.cpp"
    "${SLAM_PATH}/src/interface/dsp_interface.cpp"
    "${SLAM_PATH}/src/interface/evaluator.cpp"
    "${SLAM_PATH}/src/interface/loc_interface.cpp"
    "${SLAM_PATH}/src/interface/MapDataProcess.cpp"
    "${SLAM_PATH}/src/interface/p2p_interface.cpp"
    "${SLAM_PATH}/src/interface/path_plan_interface.cpp"
    "${SLAM_PATH}/src/interface/slam_stdafx.cpp"
    "${SLAM_PATH}/src//interface/TrainedParkingInfo.cpp"
    "${SLAM_PATH}/src//interface/trainedparking_fw_interface.cpp"
    "${SLAM_PATH}/src//interface/VocCreation.cpp"
    "${SLAM_PATH}/src/slam/cam_model_omni.cpp"
    "${SLAM_PATH}/src/slam/cam_system_omni.cpp"
    "${SLAM_PATH}/src/slam/cConverter.cpp"
    "${SLAM_PATH}/src/slam/cLinearImage.cpp"
    "${SLAM_PATH}/src/slam/cLocalizer.cpp"
    "${SLAM_PATH}/src/slam/cLocalMapping.cpp"
    "${SLAM_PATH}/src/slam/cMap.cpp"
    "${SLAM_PATH}/src/slam/cMapManager.cpp"
    "${SLAM_PATH}/src/slam/cMapPoint.cpp"
    "${SLAM_PATH}/src/slam/cMapPublisher.cpp"
    "${SLAM_PATH}/src/slam/cMultiFrame.cpp"
    "${SLAM_PATH}/src/slam/cMultiFramePublisher.cpp"
    "${SLAM_PATH}/src/slam/cMultiInitializer.cpp"
    "${SLAM_PATH}/src/slam/cMultiKeyFrame.cpp"
    "${SLAM_PATH}/src/slam/cMultiKeyFrameDatabase.cpp"
    "${SLAM_PATH}/src/slam/cOptimizer.cpp"
    "${SLAM_PATH}/src/slam/cORBmatcher.cpp"
    "${SLAM_PATH}/src/slam/cSystem.cpp"
    "${SLAM_PATH}/src/slam/cTracking.cpp"
    "${SLAM_PATH}/src/slam/cTriangular.cpp"
    "${SLAM_PATH}/src/slam/cubicspline.cpp"
    "${SLAM_PATH}/src/slam/cViewer.cpp"
    "${SLAM_PATH}/src/slam/g2o_MultiCol_vertices_edges.cpp"
    "${SLAM_PATH}/src/slam/mdBRIEFextractorOct.cpp"
    "${SLAM_PATH}/src/slam/misc.cpp"
    "${SLAM_PATH}/src/spline/alglibinternal.cpp"
    "${SLAM_PATH}/src/spline/alglibmisc.cpp"
    "${SLAM_PATH}/src/spline/ap.cpp"
    "${SLAM_PATH}/src/spline/dataanalysis.cpp"
    "${SLAM_PATH}/src/spline/diffequations.cpp"
    "${SLAM_PATH}/src/spline/fasttransforms.cpp"
    "${SLAM_PATH}/src/spline/integration.cpp"
    "${SLAM_PATH}/src/spline/interpolation.cpp"
    "${SLAM_PATH}/src/spline/linalg.cpp"
    "${SLAM_PATH}/src/spline/optimization.cpp"
    "${SLAM_PATH}/src/spline/solvers.cpp"
    "${SLAM_PATH}/src/spline/specialfunctions.cpp"
    "${SLAM_PATH}/src/spline/statistics.cpp"
)

if(ARM64)
    set(platform_files
        "${SLAM_PATH}/src/slam/cTriangular.cpp"
        "${SLAM_PATH}/src/interface/dsp_interface.cpp"
        "${SLAM_PATH}/include/neon/HammingMatch.cpp"
        "${SLAM_PATH}/src/slam/cORBmatcherOnNeon.cpp"
    )
else()
    set(platform_files
        "${SLAM_PATH}/src/slam/cTriangular.cpp"
        "${SLAM_PATH}/src/interface/dsp_interface.cpp"
    )
endif()

# if(MSVC)
#     set(platform_files
#         "${SLAM_PATH}/src/slam/cTriangular.cpp"
#         "${SLAM_PATH}/src/interface/dsp_interface.cpp"
#     )
# else()
#     set(platform_files
#         "${SLAM_PATH}/src/slam/cTriangular.cpp"
#         "${SLAM_PATH}/src/interface/dsp_interface.cpp"
#         "${SLAM_PATH}/include/neon/HammingMatch.cpp"
#         "${SLAM_PATH}/src/slam/cORBmatcherOnNeon.cpp"
#     )
# endif()

set(ALL_FILES
    ${src}
    ${platform_files}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${SLAM_PATH}/include;"
    "${SLAM_PATH}/include/common;"
    "${SLAM_PATH}/include/interface;"
    "${SLAM_PATH}/include/SLAM;"
    "${SLAM_PATH}/include/spline;"
    "${SLAM_PATH}/include/test/debug;"
    "${SLAM_PATH}/include/test/dsp/dsp_cv;"
    "${SLAM_PATH}/include/test/dsp/dsp_slam;"
    "${SLAM_PATH}/include/test/regression_test;"
    "${SLAM_PATH}/3rdparty/;"
    "${SLAM_PATH}/3rdparty/Eigen;"
    "${SLAM_PATH}/3rdparty/Pangolin/build/src/include;"
    "${SLAM_PATH}/3rdparty/Pangolin/build/external/glew/include;"
    "${SLAM_PATH}/3rdparty/OpenGV/include;"
    "${SLAM_PATH}/3rdparty/g2o;"
    "${SLAM_PATH}/source/utility/common;"
    "${SLAM_PATH}/3rdparty/Pangolin/include;"
    "${COMM_PATH}/source/interface;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/utility/dim3;"
    "${FW_SDK_PATH}/service/opencv/include;"
    "${COMM_PATH}/source/utility/maptool;"
    "${COMM_PATH}/source/utility;"
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}
    ${platform_rootfs_usr_include}
    ${COMM_PATH}/source/interface/iogateway
    ${COMM_PATH}/source/CommunicationManager/CommonComm
    ${SPACE_HAVPMAP_PATH}/../
    ${MAPSERVICE_PATH}/source
 
)



################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    ${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/localization/")

set(LIBRARIES
    frameworkbase
    sp_comm
    opencv_service
    mapservice
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fpermissive")
if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE
    _CRT_SECURE_NO_WARNINGS;SPOS_WIN;MODULER_EXPORTS;WIN32;_WINDOWS;NDEBUG;_TP_;OPENCV=1;OPENCV300=1;ARMMAPPING2_ON;ARMMAPPING3_ON;_SIMULTANEOUSLY_CAPTURING_AND_MAPPING_;
)
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE "OPENCV=1;")
    target_compile_definitions(${PROJECT_NAME} PRIVATE "_ON_TDA4_OPENCV_;BEV_VER;_UINIT_64_T_;_SIMULTANEOUSLY_CAPTURING_AND_MAPPING_;ARMMAPPING2_ON;ARMMAPPING3_ON")
endif()


################################################################################
# Compile and link options
################################################################################
if(MSVC)
    target_compile_options(${PROJECT_NAME} PRIVATE
                            /wd4091;
                            /MD
                            /Od;
                            /Oi;
                            /sdl;
                            /Gy;
                            /W3;
                            /wd4819;
                            /wd4005;
                            /wd4996;
                            /wd4703;
                            ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                            ${DEFAULT_CXX_EXCEPTION_HANDLING};
    )

    target_link_options(${PROJECT_NAME} PRIVATE
                        /OPT:REF;
                        /OPT:ICF;
                        /INCREMENTAL:NO;
                        /DEBUG;
                        /SUBSYSTEM:WINDOWS
    )
endif()



# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    frameworkbase
    sp_comm
    opencv_service
    mapservice
)