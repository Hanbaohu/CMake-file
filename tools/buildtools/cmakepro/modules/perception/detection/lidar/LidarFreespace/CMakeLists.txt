project(LidarFreespace)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${LidarFreeSpace_PATH}/source/spaceos_interface/lidar_freespace_stdafx.cpp"
    "${LidarFreeSpace_PATH}/source/spaceos_interface/lidar_freespace_stdafx.h"
)
source_group("" FILES ${no_group_source_files})

set(algo_core
    "${LidarFreeSpace_PATH}/source/algo_core/lidar_cluster.h"
    "${LidarFreeSpace_PATH}/source/algo_core/lidar_freespace.cpp"
    "${LidarFreeSpace_PATH}/source/algo_core/lidar_freespace.h"
)
source_group("algo_core" FILES ${algo_core})

set(algo_core__include
    "${LidarFreeSpace_PATH}/source/algo_core/include/bin.h"
    "${LidarFreeSpace_PATH}/source/algo_core/include/ground_segmentation.h"
    "${LidarFreeSpace_PATH}/source/algo_core/include/segment.h"
    "${LidarFreeSpace_PATH}/source/algo_core/include/typedefs.h"
    "${LidarFreeSpace_PATH}/source/algo_core/include/viewer.h"
)
source_group("algo_core\\include" FILES ${algo_core__include})

set(algo_core__segment
    "${LidarFreeSpace_PATH}/source/algo_core/src/bin.cc"
    "${LidarFreeSpace_PATH}/source/algo_core/src/ground_segmentation.cc"
    "${LidarFreeSpace_PATH}/source/algo_core/src/segment.cc"
    "${LidarFreeSpace_PATH}/source/algo_core/src/viewer.cc"
)
source_group("algo_core\\segment" FILES ${algo_core__segment})

set(algo_interface
    "${LidarFreeSpace_PATH}/source/algo_interface/lidar_freespace_algo_interface.cpp"
    "${LidarFreeSpace_PATH}/source/algo_interface/lidar_freespace_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(algo_spaceos_interface
    "${LidarFreeSpace_PATH}/source/spaceos_interface/lidar_freespace_spaceos_interface.cpp"
    "${LidarFreeSpace_PATH}/source/spaceos_interface/lidar_freespace_spaceos_interface.h"
)
source_group("algo_spaceos_interface" FILES ${algo_spaceos_interface})

set(ALL_FILES
    ${no_group_source_files}
    ${algo_core}
    ${algo_core__include}
    ${algo_core__segment}
    ${algo_interface}
    ${algo_spaceos_interface}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${LidarFreeSpace_PATH}/source/spaceos_interface;"
    "${LidarFreeSpace_PATH}/source/algo_core;"
    "${LidarFreeSpace_PATH}/source/algo_core/include;"
    "${LidarFreeSpace_PATH}/source/algo_interface;"
    "${LidarFreeSpace_PATH}/source/spaceos_interface;"
    "${LidarFreeSpace_PATH}/../../thirdParty;"
    "${LidarFreeSpace_PATH}/../../thirdParty/OpenGV/include;"

    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/thirdparty/opencv410/include;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/debug;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/avm;"
    # "${COMM_PATH}/thirdparty/pcl-1.8.1/include/pcl-1.8;"
    # "${COMM_PATH}/thirdparty/flann-1.9.1/include;"
    # "${COMM_PATH}/thirdparty/Eigen;"
    # "${COMM_PATH}/thirdparty/boost_1_73_0;"
    "${COMM_PATH}/thirdparty/pcap-1.10.1/include;"
    #"${COMM_PATH}/thirdparty/vtk-7.1.1/include/vtk-7.1;"
    "${COMM_PATH}/source/utility/lidar_common;"
    ${vtk_include_directories}
    ${pcl_include_directories}
    ${flann_include_directories}
    ${eigen_include_directories}
    ${boost_include_directories}
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}
    ${platform_launcher_include_directories}
)

################################################################################
# Target
################################################################################
set(LIBRARIES
    sp_comm
    frameworkbase
    ceres
    glog
    gflags
    opengl32
    opengv
    kernel32
    user32
    gdi32
    winspool
    comdlg32
    advapi32
    shell32
    ole32
    oleaut32
    uuid
    odbc32
    odbccp32
    #multiProcessTransport
    pcl_common_release
    pcl_features_release
    pcl_filters_release
    pcl_io_ply_release
    pcl_io_release
    pcl_kdtree_release
    pcl_keypoints_release
    pcl_ml_release
    pcl_octree_release
    pcl_outofcore_release
    pcl_people_release
    pcl_recognition_release
    pcl_registration_release
    pcl_sample_consensus_release
    pcl_search_release
    pcl_segmentation_release
    pcl_stereo_release
    pcl_surface_release
    pcl_tracking_release
    pcl_visualization_release
    vtkalglib-7.1
    vtkChartsCore-7.1
    vtkCommonColor-7.1
    vtkCommonComputationalGeometry-7.1
    vtkCommonCore-7.1
    vtkCommonDataModel-7.1
    vtkCommonExecutionModel-7.1
    vtkCommonMath-7.1
    vtkCommonMisc-7.1
    vtkCommonSystem-7.1
    vtkCommonTransforms-7.1
    vtkDICOMParser-7.1
    vtkDomainsChemistry-7.1
    vtkDomainsChemistryOpenGL2-7.1
    vtkexoIIc-7.1
    vtkexpat-7.1
    vtkFiltersAMR-7.1
    vtkFiltersCore-7.1
    vtkFiltersExtraction-7.1
    vtkFiltersFlowPaths-7.1
    vtkFiltersGeneral-7.1
    vtkFiltersGeneric-7.1
    vtkFiltersGeometry-7.1
    vtkFiltersHybrid-7.1
    vtkFiltersHyperTree-7.1
    vtkFiltersImaging-7.1
    vtkFiltersModeling-7.1
    vtkFiltersParallel-7.1
    vtkFiltersParallelImaging-7.1
    vtkFiltersPoints-7.1
    vtkFiltersProgrammable-7.1
    vtkFiltersSelection-7.1
    vtkFiltersSMP-7.1
    vtkFiltersSources-7.1
    vtkFiltersStatistics-7.1
    vtkFiltersTexture-7.1
    vtkFiltersVerdict-7.1
    vtkfreetype-7.1
    vtkGeovisCore-7.1
    vtkgl2ps-7.1
    vtkglew-7.1
    vtkhdf5-7.1
    vtkhdf5_hl-7.1
    vtkImagingColor-7.1
    vtkImagingCore-7.1
    vtkImagingFourier-7.1
    vtkImagingGeneral-7.1
    vtkImagingHybrid-7.1
    vtkImagingMath-7.1
    vtkImagingMorphological-7.1
    vtkImagingSources-7.1
    vtkImagingStatistics-7.1
    vtkImagingStencil-7.1
    vtkInfovisCore-7.1
    vtkInfovisLayout-7.1
    vtkInteractionImage-7.1
    vtkInteractionStyle-7.1
    vtkInteractionWidgets-7.1
    vtkIOAMR-7.1
    vtkIOCore-7.1
    vtkIOEnSight-7.1
    vtkIOExodus-7.1
    vtkIOExport-7.1
    vtkIOGeometry-7.1
    vtkIOImage-7.1
    vtkIOImport-7.1
    vtkIOInfovis-7.1
    vtkIOLegacy-7.1
    vtkIOLSDyna-7.1
    vtkIOMINC-7.1
    vtkIOMovie-7.1
    vtkIONetCDF-7.1
    vtkIOParallel-7.1
    vtkIOParallelXML-7.1
    vtkIOPLY-7.1
    vtkIOSQL-7.1
    vtkIOTecplotTable-7.1
    vtkIOVideo-7.1
    vtkIOXML-7.1
    vtkIOXMLParser-7.1
    vtkjpeg-7.1
    vtkjsoncpp-7.1
    vtklibxml2-7.1
    vtkmetaio-7.1
    vtkNetCDF-7.1
    vtkNetCDF_cxx-7.1
    vtkoggtheora-7.1
    vtkParallelCore-7.1
    vtkpng-7.1
    vtkproj4-7.1
    vtkRenderingAnnotation-7.1
    vtkRenderingContext2D-7.1
    vtkRenderingContextOpenGL2-7.1
    vtkRenderingCore-7.1
    vtkRenderingFreeType-7.1
    vtkRenderingGL2PSOpenGL2-7.1
    vtkRenderingImage-7.1
    vtkRenderingLabel-7.1
    vtkRenderingLOD-7.1
    vtkRenderingOpenGL2-7.1
    vtkRenderingVolume-7.1
    vtkRenderingVolumeOpenGL2-7.1
    vtksqlite-7.1
    vtksys-7.1
    vtktiff-7.1
    vtkverdict-7.1
    vtkViewsContext2D-7.1
    vtkViewsCore-7.1
    vtkViewsInfovis-7.1
    vtkzlib-7.1
    ${${PROJECT_NAME}_link_libraries}
    ${opencv_link_libraries}
)

link_directories(
    "${LidarFreeSpace_PATH}/thirdParty/OpenGV/libs;"
    "${LidarFreeSpace_PATH}/port/vc2019/lib/;"
    "${COMM_PATH}/thirdparty/multiprocess;"
    #"${COMM_PATH}/thirdparty/pcl-1.8.1/lib;"
    "${COMM_PATH}/thirdparty/vtk-7.1.1/lib;"
    ${pcl_link_directories}
    ${vtk_link_directories}
    ${opencv_link_directories}
    ${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/detection/lidar")

################################################################################
# Compile definitions
################################################################################

target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE "OPENCV_DISABLE_EIGEN_TENSOR_SUPPORT;xPROC_REMOVE_FLOOR;_DEBUG_DISPLAY_;_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_WINDOWS;_USRDLL;SPOS_WIN;NOMINMAX;BOOST_ALL_NO_LIB;BOOST_USE_WINDOWS_H;_CONSOLE;GLOG_NO_ABBREVIATED_SEVERITIES;_LOG_LIDARFREESPACE_")
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE "")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /MP;
                        /GL-;
                        /Od;
                        /Oi;
                        /sdl-;
                        /Gy
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        /Y-
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                        /STACK:1000000000;
                        /OPT:REF;
                        /OPT:ICF;
                        /INCREMENTAL:NO
                        )
endif()

################################################################################
# Dependencies
################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
    frameworkbase
)
