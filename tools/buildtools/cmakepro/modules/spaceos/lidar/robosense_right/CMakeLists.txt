project(rs_right_driver)

################################################################################
# Source groups
################################################################################

set(spaceos_interface
    "${LIDAR_PATH}/robosense_right/source/spaceos_interface/rs_right_driver.cpp"
    "${LIDAR_PATH}/robosense_right/source/spaceos_interface/rs_right_driver.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${spaceos_interface}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${SP_PK_SONARDETECT_PATH}/source/algo_interface;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/utility/recorder;"
    "${FW_SDK_PATH}/fw_sdk/src;"
    "${FW_SDK_PATH}/service/opencv/include;"
    "${FW_SDK_PATH}/adaptor/os/API/include;"
    "${SP_INTERFACE_PATH}/include;"
    "${COMM_PATH}/source/interface;"
    "${LIDAR_PATH}/robosense_right/source/spaceos_interface/"
    "${COMM_PATH}/thirdparty/pcl-1.8.1/include/pcl-1.8;"
    "${COMM_PATH}/thirdparty/boost_1_73_0;"
    "${COMM_PATH}/thirdparty/Eigen;"
    "${COMM_PATH}/thirdparty/vtk-7.1.1/include/vtk-7.1;"
    "${COMM_PATH}/source/utility/lidar_common"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)


################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    "${COMM_PATH}/thirdparty/pcl-1.8.1/lib;"
    "${COMM_PATH}/thirdparty/vtk-7.1.1/lib;"
	${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/lidar")

set(LIBRARIES
    frameworkbase
    comm
    "pcl_common_release;"
    "pcl_features_release;"
    "pcl_filters_release;"
    "pcl_io_ply_release;"
    "pcl_io_release;"
    "pcl_kdtree_release;"
    "pcl_keypoints_release;"
    "pcl_ml_release;"
    "pcl_octree_release;"
    "pcl_outofcore_release;"
    "pcl_people_release;"
    "pcl_recognition_release;"
    "pcl_registration_release;"
    "pcl_sample_consensus_release;"
    "pcl_search_release;"
    "pcl_segmentation_release;"
    "pcl_stereo_release;"
    "pcl_surface_release;"
    "pcl_tracking_release;"
    "pcl_visualization_release;"
    "vtkalglib-7.1;"
    "vtkChartsCore-7.1;"
    "vtkCommonColor-7.1;"
    "vtkCommonComputationalGeometry-7.1;"
    "vtkCommonCore-7.1;"
    "vtkCommonDataModel-7.1;"
    "vtkCommonExecutionModel-7.1;"
    "vtkCommonMath-7.1;"
    "vtkCommonMisc-7.1;"
    "vtkCommonSystem-7.1;"
    "vtkCommonTransforms-7.1;"
    "vtkDICOMParser-7.1;"
    "vtkDomainsChemistry-7.1;"
    "vtkDomainsChemistryOpenGL2-7.1;"
    "vtkexoIIc-7.1;"
    "vtkexpat-7.1;"
    "vtkFiltersAMR-7.1;"
    "vtkFiltersCore-7.1;"
    "vtkFiltersExtraction-7.1;"
    "vtkFiltersFlowPaths-7.1;"
    "vtkFiltersGeneral-7.1;"
    "vtkFiltersGeneric-7.1;"
    "vtkFiltersGeometry-7.1;"
    "vtkFiltersHybrid-7.1;"
    "vtkFiltersHyperTree-7.1;"
    "vtkFiltersImaging-7.1;"
    "vtkFiltersModeling-7.1;"
    "vtkFiltersParallel-7.1;"
    "vtkFiltersParallelImaging-7.1;"
    "vtkFiltersPoints-7.1;"
    "vtkFiltersProgrammable-7.1;"
    "vtkFiltersSelection-7.1;"
    "vtkFiltersSMP-7.1;"
    "vtkFiltersSources-7.1;"
    "vtkFiltersStatistics-7.1;"
    "vtkFiltersTexture-7.1;"
    "vtkFiltersVerdict-7.1;"
    "vtkfreetype-7.1;"
    "vtkGeovisCore-7.1;"
    "vtkgl2ps-7.1;"
    "vtkglew-7.1;"
    "vtkhdf5-7.1;"
    "vtkhdf5_hl-7.1;"
    "vtkImagingColor-7.1;"
    "vtkImagingCore-7.1;"
    "vtkImagingFourier-7.1;"
    "vtkImagingGeneral-7.1;"
    "vtkImagingHybrid-7.1;"
    "vtkImagingMath-7.1;"
    "vtkImagingMorphological-7.1;"
    "vtkImagingSources-7.1;"
    "vtkImagingStatistics-7.1;"
    "vtkImagingStencil-7.1;"
    "vtkInfovisCore-7.1;"
    "vtkInfovisLayout-7.1;"
    "vtkInteractionImage-7.1;"
    "vtkInteractionStyle-7.1;"
    "vtkInteractionWidgets-7.1;"
    "vtkIOAMR-7.1;"
    "vtkIOCore-7.1;"
    "vtkIOEnSight-7.1;"
    "vtkIOExodus-7.1;"
    "vtkIOExport-7.1;"
    "vtkIOGeometry-7.1;"
    "vtkIOImage-7.1;"
    "vtkIOImport-7.1;"
    "vtkIOInfovis-7.1;"
    "vtkIOLegacy-7.1;"
    "vtkIOLSDyna-7.1;"
    "vtkIOMINC-7.1;"
    "vtkIOMovie-7.1;"
    "vtkIONetCDF-7.1;"
    "vtkIOParallel-7.1;"
    "vtkIOParallelXML-7.1;"
    "vtkIOPLY-7.1;"
    "vtkIOSQL-7.1;"
    "vtkIOTecplotTable-7.1;"
    "vtkIOVideo-7.1;"
    "vtkIOXML-7.1;"
    "vtkIOXMLParser-7.1;"
    "vtkjpeg-7.1;"
    "vtkjsoncpp-7.1;"
    "vtklibxml2-7.1;"
    "vtkmetaio-7.1;"
    "vtkNetCDF-7.1;"
    "vtkNetCDF_cxx-7.1;"
    "vtkoggtheora-7.1;"
    "vtkParallelCore-7.1;"
    "vtkpng-7.1;"
    "vtkproj4-7.1;"
    "vtkRenderingAnnotation-7.1;"
    "vtkRenderingContext2D-7.1;"
    "vtkRenderingContextOpenGL2-7.1;"
    "vtkRenderingCore-7.1;"
    "vtkRenderingFreeType-7.1;"
    "vtkRenderingGL2PSOpenGL2-7.1;"
    "vtkRenderingImage-7.1;"
    "vtkRenderingLabel-7.1;"
    "vtkRenderingLOD-7.1;"
    "vtkRenderingOpenGL2-7.1;"
    "vtkRenderingVolume-7.1;"
    "vtkRenderingVolumeOpenGL2-7.1;"
    "vtksqlite-7.1;"
    "vtksys-7.1;"
    "vtktiff-7.1;"
    "vtkverdict-7.1;"
    "vtkViewsContext2D-7.1;"
    "vtkViewsCore-7.1;"
    "vtkViewsInfovis-7.1;"
    "vtkzlib-7.1"
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE  "_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_WINDOWS;_USRDLL;SPOS_WIN;NOMINMAX;BOOST_ALL_NO_LIB;BOOST_USE_WINDOWS_H;_CONSOLE;GLOG_NO_ABBREVIATED_SEVERITIES")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE  "")

endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                /GL-;
                /Od;
                /Oi;
                /sdl-;
                /Gy;
                /permissive-;
                /W3;
                /MD
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
    comm
    frameworkbase
)