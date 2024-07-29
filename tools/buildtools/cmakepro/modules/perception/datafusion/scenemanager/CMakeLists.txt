project(scenemanager)

################################################################################
# Source groups
################################################################################
set(algo_core
    "${SCENEMANAGER_PATH}/source/algo_core/scenemanager_algocore.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/scenemanager_algocore.h"
)
source_group("algo_core" FILES ${algo_core})

set(algo_core__boundary_manager
    "${SCENEMANAGER_PATH}/source/algo_core/boundary_manager/scenemanager_boundary_manager.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/boundary_manager/scenemanager_boundary_manager.h"
    "${SCENEMANAGER_PATH}/source/algo_core/boundary_manager/scenemanager_boundary_typedef.h"
)
source_group("algo_core\\boundary_manager" FILES ${algo_core__boundary_manager})

set(algo_core__boundary_manager__fusion_boundary
    "${SCENEMANAGER_PATH}/source/algo_core/boundary_manager/fusion_boundary/fusion_boundary_builder.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/boundary_manager/fusion_boundary/fusion_boundary_builder.h"
)
source_group("algo_core\\boundary_manager\\fusion_boundary" FILES ${algo_core__boundary_manager__fusion_boundary})

set(algo_core__boundary_manager__locmap_boundary
    "${SCENEMANAGER_PATH}/source/algo_core/boundary_manager/locmap_boundary/locmap_boundary_builder.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/boundary_manager/locmap_boundary/locmap_boundary_builder.h"
)
source_group("algo_core\\boundary_manager\\locmap_boundary" FILES ${algo_core__boundary_manager__locmap_boundary})

set(algo_core__dataforward
    "${SCENEMANAGER_PATH}/source/algo_core/dataforward/scenemanager_dataforward.h"
)
source_group("algo_core\\dataforward" FILES ${algo_core__dataforward})

set(algo_core__datainput_manager
    "${SCENEMANAGER_PATH}/source/algo_core/datainput_manager/scenemanager_datainput_manager.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/datainput_manager/scenemanager_datainput_manager.h"
)
source_group("algo_core\\datainput_manager" FILES ${algo_core__datainput_manager})

set(algo_core__datainput_manager__data_adaptor
    "${SCENEMANAGER_PATH}/source/algo_core/datainput_manager/scenemanager_datainput_bev_adaptor.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/datainput_manager/scenemanager_datainput_Ins_adaptor.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/datainput_manager/scenemanager_datainput_od_adaptor.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/datainput_manager/scenemanager_datainput_pld_adaptor.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/datainput_manager/scenemanager_datainput_seg_adaptor.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/datainput_manager/scenemanager_datainput_slotdetect_adaptor.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/datainput_manager/scenemanager_datainput_sonar_adaptor.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/datainput_manager/scenemanager_datainput_statemanager_adaptor.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/datainput_manager/scenemanager_datainput_timstamp_comdr_adaptor.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/datainput_manager/scenemanager_datainput_tsml_adaptor.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/datainput_manager/scenemanager_datainput_webots_adaptor.cpp"
)
source_group("algo_core\\datainput_manager\\data_adaptor" FILES ${algo_core__datainput_manager__data_adaptor})

set(algo_core__dataoutput_manager
    "${SCENEMANAGER_PATH}/source/algo_core/dataoutput_manager/scenemanager_dataoutput_manager.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/dataoutput_manager/scenemanager_dataoutput_manager.h"
    "${SCENEMANAGER_PATH}/source/algo_core/dataoutput_manager/scenemanager_output_localmap.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/dataoutput_manager/scenemanager_output_parkway.cpp"
)
source_group("algo_core\\dataoutput_manager" FILES ${algo_core__dataoutput_manager})

set(algo_core__dataoutput_manager__attribute_layer
    "${SCENEMANAGER_PATH}/source/algo_core/dataoutput_manager/attribute_layer/scenemanager_attribute_layer.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/dataoutput_manager/attribute_layer/scenemanager_attribute_layer.h"
)
source_group("algo_core\\dataoutput_manager\\attribute_layer" FILES ${algo_core__dataoutput_manager__attribute_layer})

set(algo_core__dataoutput_manager__boundary_layer
    "${SCENEMANAGER_PATH}/source/algo_core/dataoutput_manager/boundary_layer/scenemanager_output_boudarylayer.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/dataoutput_manager/boundary_layer/scenemanager_output_boudarylayer.h"
)
source_group("algo_core\\dataoutput_manager\\boundary_layer" FILES ${algo_core__dataoutput_manager__boundary_layer})

set(algo_core__dataoutput_manager__debugshow_layer
    "${SCENEMANAGER_PATH}/source/algo_core/dataoutput_manager/debugshow_layer/scenemanager_output_debugshowlayer.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/dataoutput_manager/debugshow_layer/scenemanager_output_debugshowlayer.h"
)
source_group("algo_core\\dataoutput_manager\\debugshow_layer" FILES ${algo_core__dataoutput_manager__debugshow_layer})

set(algo_core__dataoutput_manager__gridmap_layer
    "${SCENEMANAGER_PATH}/source/algo_core/dataoutput_manager/gridmap_layer/scenemanager_output_gridmaplayer.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/dataoutput_manager/gridmap_layer/scenemanager_output_gridmaplayer.h"
)
source_group("algo_core\\dataoutput_manager\\gridmap_layer" FILES ${algo_core__dataoutput_manager__gridmap_layer})

set(algo_core__dataoutput_manager__od_layer
    "${SCENEMANAGER_PATH}/source/algo_core/dataoutput_manager/od_layer/scenemanager_od_layer.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/dataoutput_manager/od_layer/scenemanager_od_layer.h"
)
source_group("algo_core\\dataoutput_manager\\od_layer" FILES ${algo_core__dataoutput_manager__od_layer})

set(algo_core__gridmap_manager
    "${SCENEMANAGER_PATH}/source/algo_core/gridmap_manager/scenemanager_gridmap_manager.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/gridmap_manager/scenemanager_gridmap_manager.h"
)
source_group("algo_core\\gridmap_manager" FILES ${algo_core__gridmap_manager})

set(algo_core__gridmap_manager__fusion_gridmap
    "${SCENEMANAGER_PATH}/source/algo_core/gridmap_manager/fusion_gridmap/fusion_gridmap.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/gridmap_manager/fusion_gridmap/fusion_gridmap.h"
)
source_group("algo_core\\gridmap_manager\\fusion_gridmap" FILES ${algo_core__gridmap_manager__fusion_gridmap})

set(algo_core__gridmap_manager__gridmap_utils
    "${SCENEMANAGER_PATH}/source/algo_core/gridmap_manager/gridmap_utils/gridmap_utils.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/gridmap_manager/gridmap_utils/gridmap_utils.h"
    "${SCENEMANAGER_PATH}/source/algo_core/gridmap_manager/gridmap_utils/segfs_builder.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/gridmap_manager/gridmap_utils/segfs_builder.h"
)
source_group("algo_core\\gridmap_manager\\gridmap_utils" FILES ${algo_core__gridmap_manager__gridmap_utils})

set(algo_core__gridmap_manager__stitcher_bevmap
    "${SCENEMANAGER_PATH}/source/algo_core/gridmap_manager/stitcher_bevmap/stitcher_bevmap.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/gridmap_manager/stitcher_bevmap/stitcher_bevmap.h"
)
source_group("algo_core\\gridmap_manager\\stitcher_bevmap" FILES ${algo_core__gridmap_manager__stitcher_bevmap})

set(algo_core__gridmap_manager__tracking_gridmap
    "${SCENEMANAGER_PATH}/source/algo_core/gridmap_manager/tracking_gridmap/tracking_gridmap.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/gridmap_manager/tracking_gridmap/tracking_gridmap.h"
)
source_group("algo_core\\gridmap_manager\\tracking_gridmap" FILES ${algo_core__gridmap_manager__tracking_gridmap})

set(algo_core__localmap_manager
    "${SCENEMANAGER_PATH}/source/algo_core/localmap_manager/scenemanager_apalocmap_manager.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/localmap_manager/scenemanager_apalocmap_manager.h"
    "${SCENEMANAGER_PATH}/source/algo_core/localmap_manager/scenemanager_submapnode.h"
)
source_group("algo_core\\localmap_manager" FILES ${algo_core__localmap_manager})

set(algo_core__localmap_manager__localmap
    "${SCENEMANAGER_PATH}/source/algo_core/localmap_manager/scenemanager_apalocmap.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/localmap_manager/scenemanager_apalocmap.h"
    "${SCENEMANAGER_PATH}/source/algo_core/localmap_manager/scenemanager_apalocmap_conetypemap_proc.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/localmap_manager/scenemanager_apalocmap_freespacemap_proc.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/localmap_manager/scenemanager_apalocmap_pillarmap_proc.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/localmap_manager/scenemanager_apalocmap_slotmap_proc.cpp"
)
source_group("algo_core\\localmap_manager\\localmap" FILES ${algo_core__localmap_manager__localmap})

set(algo_core__localmap_manager__submapnode
    "${SCENEMANAGER_PATH}/source/algo_core/localmap_manager/scenemanager_apalocmap_nodemanager.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/localmap_manager/scenemanager_apalocmap_nodemanager.h"
)
source_group("algo_core\\localmap_manager\\submapnode" FILES ${algo_core__localmap_manager__submapnode})

set(algo_core__objdetect_manager
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/scenemanager_object_manager.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/scenemanager_object_manager.h"
)
source_group("algo_core\\objdetect_manager" FILES ${algo_core__objdetect_manager})

set(algo_core__objdetect_manager__multi_objlayer
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/multi_objlayer/multi_objlayer.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/multi_objlayer/multi_objlayer.h"
)
source_group("algo_core\\objdetect_manager\\multi_objlayer" FILES ${algo_core__objdetect_manager__multi_objlayer})

set(algo_core__objdetect_manager__objdet_utils
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/objdet_utils/objdet_utils.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/objdet_utils/objdet_utils.h"
)
source_group("algo_core\\objdetect_manager\\objdet_utils" FILES ${algo_core__objdetect_manager__objdet_utils})

set(algo_core__objdetect_manager__pdru_objlayer
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/pdru_objlayer/pdru_objlayer.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/pdru_objlayer/pdru_objlayer.h"
)
source_group("algo_core\\objdetect_manager\\pdru_objlayer" FILES ${algo_core__objdetect_manager__pdru_objlayer})

set(algo_core__objdetect_manager__pld_objlayer
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/pld_objlayer/pld_localmap.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/pld_objlayer/pld_localmap.h"
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/pld_objlayer/pld_objlayer.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/pld_objlayer/pld_objlayer.h"
)
source_group("algo_core\\objdetect_manager\\pld_objlayer" FILES ${algo_core__objdetect_manager__pld_objlayer})

set(algo_core__objdetect_manager__scene_corrector
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/scene_corrector/car_scene_corrector.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/scene_corrector/car_scene_corrector.h"
)
source_group("algo_core\\objdetect_manager\\scene_corrector" FILES ${algo_core__objdetect_manager__scene_corrector})

set(algo_core__parkway_manager
    "${SCENEMANAGER_PATH}/source/algo_core/parkway_manager/scenemanager_parkway_manager.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/parkway_manager/scenemanager_parkway_manager.h"
)
source_group("algo_core\\parkway_manager" FILES ${algo_core__parkway_manager})

set(algo_core__primitives
    "${SCENEMANAGER_PATH}/source/algo_core/primitives/scenemanager_commtypedef.h"
)
source_group("algo_core\\primitives" FILES ${algo_core__primitives})

set(algo_core__primitives__cellmap
    "${SCENEMANAGER_PATH}/source/algo_core/primitives/cellmap/fs_cellmap.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/primitives/cellmap/fs_cellmap.h"
)
source_group("algo_core\\primitives\\cellmap" FILES ${algo_core__primitives__cellmap})

set(algo_core__primitives__dataconfig
    "${SCENEMANAGER_PATH}/source/algo_core/primitives/dataconfig/scenemanager_dataconfig.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/primitives/dataconfig/scenemanager_dataconfig.h"
)
source_group("algo_core\\primitives\\dataconfig" FILES ${algo_core__primitives__dataconfig})

set(algo_core__primitives__girdmap
    "${SCENEMANAGER_PATH}/source/algo_core/primitives/girdmap/fs_girdmap.h"
    "${SCENEMANAGER_PATH}/source/algo_core/primitives/girdmap/fs_girdmap_base.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/primitives/girdmap/fs_girdmap_coordinate.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/primitives/girdmap/fs_girdmap_dataio.cpp"
)
source_group("algo_core\\primitives\\girdmap" FILES ${algo_core__primitives__girdmap})

set(algo_core__primitives__histgridmap
    "${SCENEMANAGER_PATH}/source/algo_core/primitives/histgridmap/fs_histgridmap.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/primitives/histgridmap/fs_histgridmap.h"
)
source_group("algo_core\\primitives\\histgridmap" FILES ${algo_core__primitives__histgridmap})

set(algo_core__primitives__stitchmap
    "${SCENEMANAGER_PATH}/source/algo_core/primitives/stitchmap/scm_stitchmap.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/primitives/stitchmap/scm_stitchmap.h"
)
source_group("algo_core\\primitives\\stitchmap" FILES ${algo_core__primitives__stitchmap})

set(algo_core__scenceattrib_manager
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/scenemanager_scenceattrib_manager.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/scenemanager_scenceattrib_manager.h"
)
source_group("algo_core\\scenceattrib_manager" FILES ${algo_core__scenceattrib_manager})

set(algo_core__scenceattrib_manager__avp_slot_matcher
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/avp_slot_matcher/avp_slot_matcher.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/avp_slot_matcher/avp_slot_matcher.h"
)
source_group("algo_core\\scenceattrib_manager\\avp_slot_matcher" FILES ${algo_core__scenceattrib_manager__avp_slot_matcher})

set(algo_core__scenceattrib_manager__garage_io_status
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/garage_io_status/garage_io_status.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/garage_io_status/garage_io_status.h"
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/garage_io_status/slope_recog.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/garage_io_status/slope_recog.h"
)
source_group("algo_core\\scenceattrib_manager\\garage_io_status" FILES ${algo_core__scenceattrib_manager__garage_io_status})


set(algo_core__scenceattrib_manager__park_risk_scene
"${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/park_risk_scene/park_risk_scene.cpp"
"${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/park_risk_scene/park_risk_scene.h"
)
source_group("algo_core\\scenceattrib_manager\\park_risk_scene" FILES ${algo_core__scenceattrib_manager__park_risk_scene})

set(algo_core__scenceattrib_manager__parkout_side_detect
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/parkout_side_detect/parkout_side_detect.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/parkout_side_detect/parkout_side_detect.h"
)
source_group("algo_core\\scenceattrib_manager\\parkout_side_detect" FILES ${algo_core__scenceattrib_manager__parkout_side_detect})

set(algo_core__scenceattrib_manager__road_heading
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/road_heading/road_heading_detect.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/road_heading/road_heading_detect.h"
)
source_group("algo_core\\scenceattrib_manager\\road_heading" FILES ${algo_core__scenceattrib_manager__road_heading})

set(algo_core__scenceattrib_manager__veh_inside_slot
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/veh_inside_slot/point_in_polygon.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/veh_inside_slot/point_in_polygon.h"
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/veh_inside_slot/veh_inside_slot.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/veh_inside_slot/veh_inside_slot.h"
)
source_group("algo_core\\scenceattrib_manager\\veh_inside_slot" FILES ${algo_core__scenceattrib_manager__veh_inside_slot})

set(algo_core__utils__debug
    "${SCENEMANAGER_PATH}/source/algo_core/utils/debug/fs_debug.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/utils/debug/fs_debug.h"
)
source_group("algo_core\\utils\\debug" FILES ${algo_core__utils__debug})

set(algo_core__utils__graphiclogic
    "${SCENEMANAGER_PATH}/source/algo_core/utils/graphiclogic/fs_graphiclogic.cpp"
    "${SCENEMANAGER_PATH}/source/algo_core/utils/graphiclogic/fs_graphiclogic.h"
)
source_group("algo_core\\utils\\graphiclogic" FILES ${algo_core__utils__graphiclogic})

set(algo_interface
    "${SCENEMANAGER_PATH}/source/algo_interface/scenemanager_algo_inputdata.h"
    "${SCENEMANAGER_PATH}/source/algo_interface/scenemanager_algo_interface.cpp"
    "${SCENEMANAGER_PATH}/source/algo_interface/scenemanager_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${SCENEMANAGER_PATH}/source/spaceos_interface/scenemanager_spaceos_interface.cpp"
    "${SCENEMANAGER_PATH}/source/spaceos_interface/scenemanager_spaceos_interface.h"
    "${SCENEMANAGER_PATH}/source/spaceos_interface/scenemanager_spaceos_stdafx.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(spaceos_interface__data_connect
    "${SCENEMANAGER_PATH}/source/spaceos_interface/data_connect/scenemanager_dataconnect.cpp"
    "${SCENEMANAGER_PATH}/source/spaceos_interface/data_connect/scenemanager_dataconnect.h"
)
source_group("spaceos_interface\\data_connect" FILES ${spaceos_interface__data_connect})

set(spaceos_interface__data_record
    "${SCENEMANAGER_PATH}/source/spaceos_interface/data_record/scenemanager_datarecord.cpp"
    "${SCENEMANAGER_PATH}/source/spaceos_interface/data_record/scenemanager_datarecord.h"
)
source_group("spaceos_interface\\data_record" FILES ${spaceos_interface__data_record})

set(ALL_FILES
    ${algo_core}
    ${algo_core__boundary_manager}
    ${algo_core__boundary_manager__fusion_boundary}
    ${algo_core__boundary_manager__locmap_boundary}
    ${algo_core__dataforward}
    ${algo_core__datainput_manager}
    ${algo_core__datainput_manager__data_adaptor}
    ${algo_core__dataoutput_manager}
    ${algo_core__dataoutput_manager__attribute_layer}
    ${algo_core__dataoutput_manager__boundary_layer}
    ${algo_core__dataoutput_manager__debugshow_layer}
    ${algo_core__dataoutput_manager__gridmap_layer}
    ${algo_core__dataoutput_manager__od_layer}
    ${algo_core__gridmap_manager}
    ${algo_core__gridmap_manager__fusion_gridmap}
    ${algo_core__gridmap_manager__gridmap_utils}
    ${algo_core__gridmap_manager__stitcher_bevmap}
    ${algo_core__gridmap_manager__tracking_gridmap}
    ${algo_core__localmap_manager}
    ${algo_core__localmap_manager__localmap}
    ${algo_core__localmap_manager__submapnode}
    ${algo_core__objdetect_manager}
    ${algo_core__objdetect_manager__multi_objlayer}
    ${algo_core__objdetect_manager__objdet_utils}
    ${algo_core__objdetect_manager__pdru_objlayer}
    ${algo_core__objdetect_manager__pld_objlayer}
    ${algo_core__objdetect_manager__scene_corrector}
    ${algo_core__parkway_manager}
    ${algo_core__primitives}
    ${algo_core__primitives__cellmap}
    ${algo_core__primitives__dataconfig}
    ${algo_core__primitives__girdmap}
    ${algo_core__primitives__histgridmap}
    ${algo_core__primitives__stitchmap}
    ${algo_core__scenceattrib_manager}
    ${algo_core__scenceattrib_manager__avp_slot_matcher}
    ${algo_core__scenceattrib_manager__garage_io_status}
    ${algo_core__scenceattrib_manager__parkout_side_detect}
    ${algo_core__scenceattrib_manager__road_heading}
    ${algo_core__scenceattrib_manager__veh_inside_slot}
    ${algo_core__scenceattrib_manager__park_risk_scene}
    ${algo_core__utils__debug}
    ${algo_core__utils__graphiclogic}
    ${algo_interface}
    ${spaceos_interface}
    ${spaceos_interface__data_connect}
    ${spaceos_interface__data_record}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${SCENEMANAGER_PATH}/source/algo_interface;"
    "${SCENEMANAGER_PATH}/source/algo_interface"
    "${SCENEMANAGER_PATH}/source/algo_core"
    ${APA_COMM_MATH_PATH}/include
    ${COMM_PATH}/source/interface/common
    ${COMM_PATH}/source/utility/pk_common
    ${COMM_PATH}/source/interface/avm
    ${COMM_PATH}/source/interface/algo
    ${COMM_PATH}/source/interface/smc
    ${COMM_PATH}/source/interface/cv
    ${COMM_PATH}/source/interface/schedule
    ${COMM_PATH}/source/interface/math
    ${COMM_PATH}/source/interface/gpu3d
    ${COMM_PATH}/source/interface/ml
    ${COMM_PATH}/source/utility
    ${COMM_PATH}/source/utility/avm
    ${COMM_PATH}/source/utility/dim3
    ${COMM_PATH}/source/utility/vehmdl
    ${COMM_PATH}/source/utility/kalman
    ${COMM_PATH}/source/utility/math
    ${COMM_PATH}/source/utility/data_association
    ${COMM_PATH}/source/utility/mmr
    ${COMM_PATH}/source/utility/imgmorph	
    ${COMM_PATH}/source/interface
    ${COMM_PATH}/source/utility/pk_common	
    ${FW_SDK_PATH}/fw_sdk/src
    ${FW_SDK_PATH}/service/opencv/include
    ${platform_launcher_include_directories}
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}

    "${SCENEMANAGER_PATH}/source/algo_core/primitives/cellmap"
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/multi_objlayer"
    "${SCENEMANAGER_PATH}/source/algo_core/objdetect_manager/boundary_objlayer"
    "${SCENEMANAGER_PATH}/source/algo_core/gridmap_manager/tracking_gridmap"
    "${SCENEMANAGER_PATH}/source/algo_core/freespace_manager"
    "${SCENEMANAGER_PATH}/source/algo_core/freespace_manager/segparse_fresspace"
    "${SCENEMANAGER_PATH}/source/algo_core/freespace_manager/freespace_utils"
    "${SCENEMANAGER_PATH}/source/algo_core/scenceattrib_manager/veh_inside_slot"
    "${SCENEMANAGER_PATH}/source/algo_core/dataoutput_manager/od_layer"
    "${SCENEMANAGER_PATH}/source/algo_core/datainput_manager/"

        
)

################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    ${${PROJECT_NAME}_link_directories}
)


add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/datafusion")

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES}
    frameworkbase
    sp_comm
    mapservice
    opencv_service
    ${${PROJECT_NAME}_link_libraries}
)

################################################################################
# Compile definitions
################################################################################

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE OPENCV=1 OPENCV300=1 DEBUG_SHOW=1)
    target_compile_definitions(${PROJECT_NAME} PRIVATE  ${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -DVIDEOCAPTURE_EXPORTS -D_USRDLL -DVIDEOCAPTURE_EXPORTS
                -DAVPSCHEDULER_EXPORTS -D_SENSORFUSION_FREESPACE_ -D_COMM_ -D_MBCS -D_WINDOWS -DUNICODE -D_UNICODE)
else()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}  ${${PROJECT_NAME}_CXX_FLAGS} -DFS_CV_DEBUG_ON -DOPENCV=1 -D_ON_TDA4_OPENCV_  -fpermissive -D_SCENEMANAGER_ ") 
endif()


################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Oi;
                        /Gy;
                        /wd4819;
                        /wd4005;
                        /Y-;
                        /permissive-;
                        /Od;
                        /sdl;
                        /W3;
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
    mapservice
    opencv_service
)