project(sensorfusion_freespace)

################################################################################
# Source groups
################################################################################
set(algo_core__main
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/main/freespace_mainctrl.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/main/freespace_mainctrl.h"
)
source_group("algo_core\\main" FILES ${algo_core__main})

set(algo_core__main__workmode__parking
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/main/workmode/freespace_parking_mode.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/main/workmode/freespace_parking_mode.h"
)
source_group("algo_core\\main\\workmode\\parking" FILES ${algo_core__main__workmode__parking})

set(algo_core__main__workmode__routing
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/main/workmode/freespace_routing_mode.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/main/workmode/freespace_routing_mode.h"
)
source_group("algo_core\\main\\workmode\\routing" FILES ${algo_core__main__workmode__routing})

set(algo_core__primitives
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/freespace_commtypedef.h"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/freespace_dataforward.h"
)
source_group("algo_core\\primitives" FILES ${algo_core__primitives})

set(algo_core__primitives__coordinate
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/coordinate/freespace_coordinate.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/coordinate/freespace_coordinate.h"
)
source_group("algo_core\\primitives\\coordinate" FILES ${algo_core__primitives__coordinate})

set(algo_core__primitives__coordinate__slotmodel
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/slotmodel/fs_slotmodel.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/slotmodel/fs_slotmodel.h"
)
source_group("algo_core\\primitives\\coordinate\\slotmodel" FILES ${algo_core__primitives__coordinate__slotmodel})

set(algo_core__primitives__cvprocmap
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/cvprocmap/cvprocmap.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/cvprocmap/cvprocmap.h"
)
source_group("algo_core\\primitives\\cvprocmap" FILES ${algo_core__primitives__cvprocmap})

set(algo_core__primitives__cvprocmap__boundary
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/cvprocmap/boundary.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/cvprocmap/boundary.h"
)
source_group("algo_core\\primitives\\cvprocmap\\boundary" FILES ${algo_core__primitives__cvprocmap__boundary})

set(algo_core__primitives__cvprocmap__sparser
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/cvprocmap/fs_dpsparser.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/cvprocmap/fs_dpsparser.h"
)
source_group("algo_core\\primitives\\cvprocmap\\sparser" FILES ${algo_core__primitives__cvprocmap__sparser})

set(algo_core__primitives__dataconfig
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/dataconfig/freespace_dataconfig.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/dataconfig/freespace_dataconfig.h"
)
source_group("algo_core\\primitives\\dataconfig" FILES ${algo_core__primitives__dataconfig})

set(algo_core__primitives__girdmap
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/girdmap/fs_girdmap.h"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/girdmap/fs_girdmap_base.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/girdmap/fs_girdmap_coordinate.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/girdmap/fs_girdmap_dataio.cpp"
)
source_group("algo_core\\primitives\\girdmap" FILES ${algo_core__primitives__girdmap})

set(algo_core__primitives__histgridmap
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/histgridmap/fs_histgridmap.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/histgridmap/fs_histgridmap.h"
)
source_group("algo_core\\primitives\\histgridmap" FILES ${algo_core__primitives__histgridmap})

set(algo_core__primitives__obstracker
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/obstracker/fs_obstracker.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/primitives/obstracker/fs_obstracker.h"
)
source_group("algo_core\\primitives\\obstracker" FILES ${algo_core__primitives__obstracker})

set(algo_core__scenemap__parking
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/scenemap/freespace_scenemap_parking.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/scenemap/freespace_scenemap_parking.h"
)
source_group("algo_core\\scenemap\\parking" FILES ${algo_core__scenemap__parking})

set(algo_core__scenemap__routing
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/scenemap/freespace_scenemap_routing.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/scenemap/freespace_scenemap_routing.h"
)
source_group("algo_core\\scenemap\\routing" FILES ${algo_core__scenemap__routing})

set(algo_core__sensorlayer__fusionlayer__routing
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/fusionlayer/fusionlayer_routing.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/fusionlayer/fusionlayer_routing.h"
)
source_group("algo_core\\sensorlayer\\fusionlayer\\routing" FILES ${algo_core__sensorlayer__fusionlayer__routing})

set(algo_core__sensorlayer__landmarklayer__parking
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/landmarklayer/landmark_parking.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/landmarklayer/landmark_parking.h"
)
source_group("algo_core\\sensorlayer\\landmarklayer\\parking" FILES ${algo_core__sensorlayer__landmarklayer__parking})

set(algo_core__sensorlayer__landmarklayer__routing
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/landmarklayer/landmark_routing.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/landmarklayer/landmark_routing.h"
)
source_group("algo_core\\sensorlayer\\landmarklayer\\routing" FILES ${algo_core__sensorlayer__landmarklayer__routing})

set(algo_core__sensorlayer__movpasslayer__parking
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/movpasslayer/movpasslayer_parking.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/movpasslayer/movpasslayer_parking.h"
)
source_group("algo_core\\sensorlayer\\movpasslayer\\parking" FILES ${algo_core__sensorlayer__movpasslayer__parking})

set(algo_core__sensorlayer__movpasslayer__routing
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/movpasslayer/movpasslayer_routing.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/movpasslayer/movpasslayer_routing.h"
)
source_group("algo_core\\sensorlayer\\movpasslayer\\routing" FILES ${algo_core__sensorlayer__movpasslayer__routing})

set(algo_core__sensorlayer__objectdetectlayer__routing
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/objectdetectlayer/objectdetectlayer_routing.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/objectdetectlayer/objectdetectlayer_routing.h"
)
source_group("algo_core\\sensorlayer\\objectdetectlayer\\routing" FILES ${algo_core__sensorlayer__objectdetectlayer__routing})

set(algo_core__sensorlayer__parkinglotlayer
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/parkinglotayer/parkinglotlayer_routing.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/parkinglotayer/parkinglotlayer_routing.h"
)
source_group("algo_core\\sensorlayer\\parkinglotlayer" FILES ${algo_core__sensorlayer__parkinglotlayer})

set(algo_core__sensorlayer__segmentlayer__parking
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/segmentlayer/segmentlayer_parking.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/segmentlayer/segmentlayer_parking.h"
)
source_group("algo_core\\sensorlayer\\segmentlayer\\parking" FILES ${algo_core__sensorlayer__segmentlayer__parking})

set(algo_core__sensorlayer__segmentlayer__routing
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/segmentlayer/segmentlayer_routing.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/segmentlayer/segmentlayer_routing.h"
)
source_group("algo_core\\sensorlayer\\segmentlayer\\routing" FILES ${algo_core__sensorlayer__segmentlayer__routing})

set(algo_core__sensorlayer__sonarobjlayer
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/sonarobjlayer/sonar_perception.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/sonarobjlayer/sonar_perception.h"
)
source_group("algo_core\\sensorlayer\\sonarobjlayer" FILES ${algo_core__sensorlayer__sonarobjlayer})

set(algo_core__sensorlayer__sonarobjlayer__parking
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/sonarobjlayer/sonar_obslayer_parking.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/sonarobjlayer/sonar_obslayer_parking.h"
)
source_group("algo_core\\sensorlayer\\sonarobjlayer\\parking" FILES ${algo_core__sensorlayer__sonarobjlayer__parking})

set(algo_core__sensorlayer__sonarobjlayer__routing
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/sonarobjlayer/sonar_obslayer_routing.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/sonarobjlayer/sonar_obslayer_routing.h"
)
source_group("algo_core\\sensorlayer\\sonarobjlayer\\routing" FILES ${algo_core__sensorlayer__sonarobjlayer__routing})

set(algo_core__sensorlayer__sonarobjlayer__uss
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/sonarobjlayer/ussperception/ultraperception.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/sonarobjlayer/ussperception/ultraperception.h"
)
source_group("algo_core\\sensorlayer\\sonarobjlayer\\uss" FILES ${algo_core__sensorlayer__sonarobjlayer__uss})

set(algo_core__sensorlayer__trackslotlayer
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/trackslotlayer/trackslotlayer.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/sensorlayer/trackslotlayer/trackslotlayer.h"
)
source_group("algo_core\\sensorlayer\\trackslotlayer" FILES ${algo_core__sensorlayer__trackslotlayer})

set(algo_core__utils__debug
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/utils/debug/fs_debug.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/utils/debug/fs_debug.h"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/utils/debug/fs_debug_avm.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/utils/debug/fs_debug_avm.h"
)
source_group("algo_core\\utils\\debug" FILES ${algo_core__utils__debug})

set(algo_core__utils__graphiclogic
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/utils/graphiclogic/fs_graphiclogic.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/utils/graphiclogic/fs_graphiclogic.h"
)
source_group("algo_core\\utils\\graphiclogic" FILES ${algo_core__utils__graphiclogic})

set(algo_core__utils__occupylogic
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/utils/occupylogic/fs_occupylogic.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/utils/occupylogic/fs_occupylogic.h"
)
source_group("algo_core\\utils\\occupylogic" FILES ${algo_core__utils__occupylogic})

set(algo_core__utils__segment
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/utils/segment/segment_helper.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_core/utils/segment/segment_helper.h"
)
source_group("algo_core\\utils\\segment" FILES ${algo_core__utils__segment})

set(algo_interface
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_interface/freespace_algo_inputdata.h"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_interface/freespace_algo_interface.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/algo_interface/freespace_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${SENSORFUSION_FREESPACE_PATH}/source/spaceos_interface/freespace_spaceos_interface.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/spaceos_interface/freespace_spaceos_interface.h"
    "${SENSORFUSION_FREESPACE_PATH}/source/spaceos_interface/freespace_spaceos_stdafx.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(spaceos_interface__data_connect
    "${SENSORFUSION_FREESPACE_PATH}/source/spaceos_interface/data_connect/freespace_dataconnect.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/spaceos_interface/data_connect/freespace_dataconnect.h"
)
source_group("spaceos_interface\\data_connect" FILES ${spaceos_interface__data_connect})

set(spaceos_interface__data_record
    "${COMM_PATH}/source/utility/recorder/DataRecorder.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/spaceos_interface/data_record/freespace_datarecord.cpp"
    "${SENSORFUSION_FREESPACE_PATH}/source/spaceos_interface/data_record/freespace_datarecord.h"
)
source_group("spaceos_interface\\data_record" FILES ${spaceos_interface__data_record})

set(ALL_FILES
    ${algo_core__main}
    ${algo_core__main__workmode__parking}
    ${algo_core__main__workmode__routing}
    ${algo_core__primitives}
    ${algo_core__primitives__coordinate}
    ${algo_core__primitives__coordinate__slotmodel}
    ${algo_core__primitives__cvprocmap}
    ${algo_core__primitives__cvprocmap__boundary}
    ${algo_core__primitives__cvprocmap__sparser}
    ${algo_core__primitives__dataconfig}
    ${algo_core__primitives__girdmap}
    ${algo_core__primitives__histgridmap}
    ${algo_core__primitives__obstracker}
    ${algo_core__scenemap__parking}
    ${algo_core__scenemap__routing}
    ${algo_core__sensorlayer__fusionlayer__routing}
    ${algo_core__sensorlayer__landmarklayer__parking}
    ${algo_core__sensorlayer__landmarklayer__routing}
    ${algo_core__sensorlayer__movpasslayer__parking}
    ${algo_core__sensorlayer__movpasslayer__routing}
    ${algo_core__sensorlayer__objectdetectlayer__routing}
    ${algo_core__sensorlayer__parkinglotlayer}
    ${algo_core__sensorlayer__segmentlayer__parking}
    ${algo_core__sensorlayer__segmentlayer__routing}
    ${algo_core__sensorlayer__sonarobjlayer}
    ${algo_core__sensorlayer__sonarobjlayer__parking}
    ${algo_core__sensorlayer__sonarobjlayer__routing}
    ${algo_core__sensorlayer__sonarobjlayer__uss}
    ${algo_core__sensorlayer__trackslotlayer}
    ${algo_core__utils__debug}
    ${algo_core__utils__graphiclogic}
    ${algo_core__utils__occupylogic}
    ${algo_core__utils__segment}
    ${algo_interface}
    ${spaceos_interface}
    ${spaceos_interface__data_connect}
    ${spaceos_interface__data_record}
)


################################################################################
# Include directories
################################################################################
include_directories(
        "${SENSORFUSION_FREESPACE_PATH}/source/algo_interface;"
        "${SENSORFUSION_FREESPACE_PATH}/source/algo_core;"
        "${SENSORFUSION_FREESPACE_PATH}/spaceos_interface;"
        "${COMM_PATH}/source/interface;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/utility;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/utility/pk_common;"
        "${COMM_PATH}/source/interface/cv;"
        "${FW_SDK_PATH}/service/opencv/include;"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}  ${${PROJECT_NAME}_CXX_FLAGS} -DOPENCV=1 -D_UINIT_64_T_") 

if(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -DOPENCV300=1 -DVIDEOCAPTURE_EXPORTS -D_USRDLL -D_COMM_ -D_MBCS")
endif()


################################################################################
# Target
################################################################################
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/datafusion")

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





#target_link_libraries(comm PRIVATE ${LIBRARIES})
