
###############################################################################
# 差异的链接库路径,命令方式固定：模块名字_link_directories,多个话之间用分号;隔开，不能用空格，
# 如：set(comm_link_directories ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################

###############################################################################
# 不同平台使用的第三方库链接路径
###############################################################################
if (WIN32)
    set(zmq_link_directories ${THIRD_PARTY_LIB_PATH}/zmq/lib/x86_64)
    #set(protobuf_link_directories ${THIRD_PARTY_LIB_PATH}/protobuf/lib/x86_64)
    set(protobuf_link_directories ${THIRD_PARTY_LIB_PATH}/protobuf-3.11.4/lib/x64)
    set(mqtt_link_directories ${THIRD_PARTY_LIB_PATH}/mqtt/win/lib)
    set(easy_profiler_link_directories ${THIRD_PARTY_LIB_PATH}/easy_profiler/x64/lib)
    set(ffmpeg_link_directories ${THIRD_PARTY_LIB_PATH}/ffmpeg/lib/x64)
    set(opencv_link_directories ${THIRD_PARTY_LIB_PATH}/opencv/windows/x64/lib/x64/vc16/lib)
    set(gles_link_directories ${THIRD_PARTY_LIB_PATH}/GLES/lib) #TBD why gles not opengl
    set(opengv_link_directories ${THIRD_PARTY_LIB_PATH}/OpenGV/libs)
    set(g2o_link_directories ${THIRD_PARTY_LIB_PATH}/g2o/lib)
    set(pcl_link_directories ${THIRD_PARTY_LIB_PATH}/pcl-1.8.1/lib)
    set(vtk_link_directories ${THIRD_PARTY_LIB_PATH}/vtk-7.1.1/lib)
    set(boost_link_directories ${THIRD_PARTY_LIB_PATH}/boost_1_73_0/x64lib)
    set(hastar_link_directories  ${COMM_PATH}/thirdparty/hastar/library)
elseif (UNIX)
    set(opencv_link_directories ${THIRD_PARTY_LIB_PATH}/opencv/lib)
    set(protobuf_link_directories ${THIRD_PARTY_LIB_PATH}/protobuf/lib)
    set(ffmpeg_link_directories ${THIRD_PARTY_LIB_PATH}/ffmpeg/lib)
    set(zmq_link_directories ${THIRD_PARTY_LIB_PATH}/zmq/lib)
    set(opengv_link_directories ${THIRD_PARTY_LIB_PATH}/opengv/lib)
    set(hastar_link_directories  ${COMM_PATH}/thirdparty/hastar/library/orin/release)
    set(pcl_link_directories ${THIRD_PARTY_LIB_PATH}/pcl/lib)
    set(vtk_link_directories ${THIRD_PARTY_LIB_PATH}/vtk/lib)
    set(boost_link_directories ${THIRD_PARTY_LIB_PATH}/boost/lib)
    set(flann_link_directories ${THIRD_PARTY_LIB_PATH}/flann/lib)
    set(geographiclib_link_directories ${THIRD_PARTY_LIB_PATH}/geographiclib/lib)
    set(g2o_link_directories ${THIRD_PARTY_LIB_PATH}/g2o/lib)
    set(stlplus3_link_directories ${THIRD_PARTY_LIB_PATH}/stlplus3/lib)
    set(openssl_link_directories ${THIRD_PARTY_LIB_PATH}/openssl/lib)
    set(zlib_link_directories ${THIRD_PARTY_LIB_PATH}/zlib/lib)

endif()

################################################################################
# 不同平台使用的第三方的名字
################################################################################
if (WIN32)
    set(opencv_link_libraries opencv_world460)
    set(hastar_link_libraries libhastar)
    set(protobuf_link_libraries libprotobuf libprotoc libprotobuf-lite)
    set(pcl_link_libraries pcl_common_release pcl_features_release pcl_filters_release
        pcl_io_ply_release pcl_io_release pcl_kdtree_release pcl_keypoints_release pcl_ml_release
        pcl_octree_release pcl_outofcore_release pcl_people_release pcl_recognition_release pcl_registration_release
        pcl_sample_consensus_release pcl_search_release pcl_segmentation_release pcl_stereo_release pcl_surface_release
        pcl_tracking_release pcl_visualization_release)
    set(vtk_link_libraries
        vtkalglib-7.1.lib
        vtkChartsCore-7.1.lib
        vtkCommonColor-7.1.lib
        vtkCommonComputationalGeometry-7.1.lib
        vtkCommonCore-7.1.lib
        vtkCommonDataModel-7.1.lib
        vtkCommonExecutionModel-7.1.lib
        vtkCommonMath-7.1.lib
        vtkCommonMisc-7.1.lib
        vtkCommonSystem-7.1.lib
        vtkCommonTransforms-7.1.lib
        vtkDICOMParser-7.1.lib
        vtkDomainsChemistry-7.1.lib
        vtkDomainsChemistryOpenGL2-7.1.lib
        vtkexoIIc-7.1.lib
        vtkexpat-7.1.lib
        vtkFiltersAMR-7.1.lib
        vtkFiltersCore-7.1.lib
        vtkFiltersExtraction-7.1.lib
        vtkFiltersFlowPaths-7.1.lib
        vtkFiltersGeneral-7.1.lib
        vtkFiltersGeneric-7.1.lib
        vtkFiltersGeometry-7.1.lib
        vtkFiltersHybrid-7.1.lib
        vtkFiltersHyperTree-7.1.lib
        vtkFiltersImaging-7.1.lib
        vtkFiltersModeling-7.1.lib
        vtkFiltersParallel-7.1.lib
        vtkFiltersParallelImaging-7.1.lib
        vtkFiltersPoints-7.1.lib
        vtkFiltersProgrammable-7.1.lib
        vtkFiltersSelection-7.1.lib
        vtkFiltersSMP-7.1.lib
        vtkFiltersSources-7.1.lib
        vtkFiltersStatistics-7.1.lib
        vtkFiltersTexture-7.1.lib
        vtkFiltersVerdict-7.1.lib
        vtkfreetype-7.1.lib
        vtkGeovisCore-7.1.lib
        vtkgl2ps-7.1.lib
        vtkglew-7.1.lib
        vtkhdf5-7.1.lib
        vtkhdf5_hl-7.1.lib
        vtkImagingColor-7.1.lib
        vtkImagingCore-7.1.lib
        vtkImagingFourier-7.1.lib
        vtkImagingGeneral-7.1.lib
        vtkImagingHybrid-7.1.lib
        vtkImagingMath-7.1.lib
        vtkImagingMorphological-7.1.lib
        vtkImagingSources-7.1.lib
        vtkImagingStatistics-7.1.lib
        vtkImagingStencil-7.1.lib
        vtkInfovisCore-7.1.lib
        vtkInfovisLayout-7.1.lib
        vtkInteractionImage-7.1.lib
        vtkInteractionStyle-7.1.lib
        vtkInteractionWidgets-7.1.lib
        vtkIOAMR-7.1.lib
        vtkIOCore-7.1.lib
        vtkIOEnSight-7.1.lib
        vtkIOExodus-7.1.lib
        vtkIOExport-7.1.lib
        vtkIOGeometry-7.1.lib
        vtkIOImage-7.1.lib
        vtkIOImport-7.1.lib
        vtkIOInfovis-7.1.lib
        vtkIOLegacy-7.1.lib
        vtkIOLSDyna-7.1.lib
        vtkIOMINC-7.1.lib
        vtkIOMovie-7.1.lib
        vtkIONetCDF-7.1.lib
        vtkIOParallel-7.1.lib
        vtkIOParallelXML-7.1.lib
        vtkIOPLY-7.1.lib
        vtkIOSQL-7.1.lib
        vtkIOTecplotTable-7.1.lib
        vtkIOVideo-7.1.lib
        vtkIOXML-7.1.lib
        vtkIOXMLParser-7.1.lib
        vtkjpeg-7.1.lib
        vtkjsoncpp-7.1.lib
        vtklibxml2-7.1.lib
        vtkmetaio-7.1.lib
        vtkNetCDF-7.1.lib
        vtkNetCDF_cxx-7.1.lib
        vtkoggtheora-7.1.lib
        vtkParallelCore-7.1.lib
        vtkpng-7.1.lib
        vtkproj4-7.1.lib
        vtkRenderingAnnotation-7.1.lib
        vtkRenderingContext2D-7.1.lib
        vtkRenderingContextOpenGL2-7.1.lib
        vtkRenderingCore-7.1.lib
        vtkRenderingFreeType-7.1.lib
        vtkRenderingGL2PSOpenGL2-7.1.lib
        vtkRenderingImage-7.1.lib
        vtkRenderingLabel-7.1.lib
        vtkRenderingLOD-7.1.lib
        vtkRenderingOpenGL2-7.1.lib
        vtkRenderingVolume-7.1.lib
        vtkRenderingVolumeOpenGL2-7.1.lib
        vtksqlite-7.1.lib
        vtksys-7.1.lib
        vtktiff-7.1.lib
        vtkverdict-7.1.lib
        vtkViewsContext2D-7.1.lib
        vtkViewsCore-7.1.lib
        vtkViewsInfovis-7.1.lib
        vtkzlib-7.1.lib
    )
    set(boost_link_libraries
        libboost_thread-vc142-mt-x64-1_73.lib
    )
elseif (UNIX)
    set(pcl_link_libraries pcl_common pcl_features pcl_filters
        pcl_io_ply pcl_io pcl_kdtree pcl_keypoints pcl_ml
        pcl_octree pcl_outofcore pcl_people pcl_recognition pcl_registration
        pcl_sample_consensus pcl_search pcl_segmentation pcl_stereo pcl_surface
        pcl_tracking pcl_visualization)
    set(vtk_link_libraries
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
    )
    set(opencv_link_libraries opencv_world)
    set(hastar_link_libraries libhastar)
    set(protobuf_link_libraries libprotobuf.so)
    set(g2o_link_libraries
        libg2o.so
        # libg2o_core.so
        # libg2o_cli.so
        # libg2o_hierarchical.so
        # libg2o_interface.so
        # libg2o_parser.so
        # libg2o_simulator.so
        # libg2o_solver_dense.so
        # libg2o_solver_eigen.so
        # libg2o_solver_pcg.so
        # libg2o_solver_slam2d_linear.so
        # libg2o_solver_structure_only.so
        # libg2o_stuff.so
        # libg2o_types_data.so
        # libg2o_types_icp.so
        # libg2o_types_sba.so
        # libg2o_types_sclam2d.so
        # libg2o_types_sim3.so
        # libg2o_types_slam2d.so
        # libg2o_types_slam2d_addons.so
        # libg2o_types_slam3d.so
        # libg2o_types_slam3d_addons.so
    )
    set(stlplus3_link_libraries libstlplus3.so)
    set(geographiclib_link_libraries libGeographicLib.so)
    set(openssl_link_libraries libcrypto.so libssl.so)
    set(zlib_link_libraries libz.so)
endif()

set(mp4_playback_link_directories
    #"${THIRD_PARTY_LIB_PATH}/ffmpeg-4.4.1/lib/"
    #"${THIRD_PARTY_LIB_PATH}/x264-1.6.4/lib"
    #"/home/test/workspace/workspace/spaceos_linux/thirdparty/FFmpeg/build/lib"
    #"/home/test/workspace/workspace/spaceos_linux/thirdparty/x264/build/lib"
    #"/home/cff/develop/orin/modules/third_parties/ffmpeg/lib"
    ${ffmpeg_link_directories}
)
set(slam_link_directories
    ${opencv_link_directories}
    ${opengv_link_directories}
    ${g2o_link_directories}
    "${OUTPUT_PATH}"
)

set(can_adaptor_link_directories
    ${COMM_PATH}/thirdparty/spi_mcu/lib
    ${APP_MODULE_DIR}/spi_test_src/lib
)
    
set(can_link_directories
    ${APP_MODULE_DIR}/spi_test_src/lib
)

if (WIN32)
    set(zmq_service_link_directories
        ${THIRD_PARTY_LIB_PATH}/protobuf/lib/x86_64
        ${THIRD_PARTY_LIB_PATH}/zmq/lib/x86_64
    )
elseif (UNIX)
    set(zmq_service_link_directories
        ${THIRD_PARTY_LIB_PATH}/protobuf/lib
        ${THIRD_PARTY_LIB_PATH}/zmq/lib
    )
endif()

if (WIN32)
    set(network_service_link_directories
        ${mqtt_link_directories}
        ${zmq_link_directories}
    )
    set(network_service_link_libraries
        libzmq-mt-4_3_4
        paho-mqtt3a.lib
        paho-mqtt3c.lib
        paho-mqttpp3.lib
        paho-mqttpp3-static.lib
    )
elseif (UNIX)
    set(network_service_link_directories
        ${zmq_link_directories}
    )
    set(network_service_link_libraries
        zmq
    )
endif()

###############################################################################
# 差异的链接库,命令方式固定：模块名字_link_libraries,多个话之间用分号;隔开，不能用空格，
# 如：set(comm_link_libraries ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################

set(mp4_playback_link_libraries
    # "avcodec"
    # "avdevice"
    # "avfilter"
    # "avformat"
    # "postproc"
    # "avutil"
    # "swresample"
    # "swscale"
    # # "bz2"
    # "x264"
    # "j6_demux"
)

set(slam_link_libraries  
    libopengv.a
    g2o
    ${opencv_link_libraries}
)

set(can_adaptor_link_libraries
        #spi_j3
)

set( scenemanager_link_directories
    ${opencv_link_directories}
    "/home/test/workspace/workspace/spaceos_linux/thirdparty/x264/build/lib"
)

set( scenemanager_link_libraries
    ${opencv_link_libraries}
)

set( SP_PK_PathFollow_link_directories
    ${opencv_link_directories}
)
set( SP_PK_PathFollow_link_libraries
    ${opencv_link_libraries}
)

set( SP_PK_SensorFusion_link_directories
    ${opencv_link_directories}
)

set( SP_PK_SensorFusion_link_libraries
    ${opencv_link_libraries}
)

set( SP_PK_SlotDetect_link_directories
    ${opencv_link_directories}
)

set( SP_PK_SlotDetect_link_libraries
    ${opencv_link_libraries}
)

set( spacemap_link_directories
    ${opencv_link_directories}
    ${hastar_link_directories}
)
set( spacemap_link_libraries
    ${hastar_link_libraries}
    ${opencv_link_libraries}
)


set( SP_PK_SlotDetect_link_directories
    ${opencv_link_directories}
)

set( SP_PK_SlotDetect_link_libraries
    ${opencv_link_libraries}
)

set( avp_behaviorDecision_link_directories
    ${opencv_link_directories}
)

set( avp_behaviorDecision_link_libraries
    ${opencv_link_libraries}
)

set( fw_bev_link_directories
    ${opencv_link_directories}
)
set( fw_bev_link_libraries
    ${opencv_link_libraries}
)

set( fw_sdk_link_directories
    ${opencv_link_directories}
)
set( fw_sdk_link_libraries
    ${opencv_link_libraries}
)

set( space_tracking_link_directories
    ${opencv_link_directories}
)

set( space_tracking_link_libraries
    ${opencv_link_libraries}
)

set( spacenet_link_directories
   ${opencv_link_directories}
)

set( spacenet_link_libraries
    ${opencv_link_libraries}
)

set( pld_link_directories
   ${opencv_link_directories}
)

set( pld_link_libraries
    ${opencv_link_libraries}
)

set( hmihub_link_directories
    ${opencv_link_directories}
)

set( hmihub_link_libraries
    #${opencv_link_libraries}
)

set( segparse_link_directories
   ${opencv_link_directories}
)

set( segparse_link_libraries
    ${opencv_link_libraries}
)

set( io_gateway_link_directories
    #"/home/test/workspace/workspace/spaceos_linux/thirdparty/protobuf/build311/lib"
    #{THIRD_PARTY_LIB_PATH}/protobuf/lib
    "/home/cff/develop/orin/modules/third_parties/protobuf/lib"
    ${protobuf_link_directories}
    ${opencv_link_directories}
)

set( io_gateway_link_libraries
    ${protobuf_link_libraries}
    ${opencv_link_libraries}
)

set( tsml_link_directories
   ${opencv_link_directories}
)

set( tsml_link_libraries
    ${opencv_link_libraries}
)

set( avp_localplanner_link_directories
   ${opencv_link_directories}
)

set( avp_localplanner_link_libraries
    ${opencv_link_libraries}
)

set( sp_pk_hastar_link_directories
    ${hastar_link_directories}
    ${opencv_link_directories}
)
set( sp_pk_hastar_link_libraries
    ${hastar_link_libraries}
    ${opencv_link_libraries}
)


set( SP_PK_SonarProc_link_directories
   ${opencv_link_directories}
)

set( SP_PK_SonarProc_link_libraries
    ${opencv_link_libraries}
)

set( SP_PK_VehicleControl_link_directories
   ${opencv_link_directories}
)

set( SP_PK_VehicleControl_link_libraries
    ${opencv_link_libraries}
)

set( DebugMonitor_link_directories
   ${opencv_link_directories}
)

set( DebugMonitor_link_libraries
    ${opencv_link_libraries}
)

