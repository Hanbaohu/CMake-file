project(hdmap_wrapper)

################################################################################
# Source groups
################################################################################
set(algo_core__configloader
    "${HDMAP_WRAPPER_PATH}/source/algo_core/configloader/pavp_configloader.cpp"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/configloader/pavp_configloader.h"
)
source_group("algo_core\\configloader" FILES ${algo_core__configloader})

set(algo_core__datamanager
    "${HDMAP_WRAPPER_PATH}/source/algo_core/datamanager/pavp_datamanager.cpp"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/datamanager/pavp_datamanager.h"
)
source_group("algo_core\\datamanager" FILES ${algo_core__datamanager})

set(algo_core__datamanager__engine
    "${HDMAP_WRAPPER_PATH}/source/algo_core/datamanager/pavp_datacore.cpp"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/datamanager/pavp_datacore.h"
)
source_group("algo_core\\datamanager\\engine" FILES ${algo_core__datamanager__engine})

set(algo_core__pathmanager
    "${HDMAP_WRAPPER_PATH}/source/algo_core/pathmanager/pavp_pathmanager.cpp"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/pathmanager/pavp_pathmanager.h"
)
source_group("algo_core\\pathmanager" FILES ${algo_core__pathmanager})

set(algo_core__primitives
    "${HDMAP_WRAPPER_PATH}/source/algo_core/primitives/pavp_attribute.cpp"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/primitives/pavp_attribute.h"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/primitives/pavp_boundingbox.cpp"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/primitives/pavp_boundingbox.h"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/primitives/pavp_dataforward.h"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/primitives/pavp_element.h"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/primitives/pavp_geometry.h"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/primitives/pavp_gpspoint.h"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/primitives/pavp_lmob.h"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/primitives/pavp_mapinfo.h"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/primitives/pavp_primitivelayer.cpp"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/primitives/pavp_primitivelayer.h"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/primitives/pavp_waypoint.h"
)
source_group("algo_core\\primitives" FILES ${algo_core__primitives})

set(algo_core__utils__LatLon_UTM_Converter
    "${HDMAP_WRAPPER_PATH}/source/algo_core/utils/LatLon_UTM_Converter/LatLon_UTM_Converter.cpp"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/utils/LatLon_UTM_Converter/LatLon_UTM_Converter.h"
)
source_group("algo_core\\utils\\LatLon_UTM_Converter" FILES ${algo_core__utils__LatLon_UTM_Converter})

set(algo_core__utils__PathParser
    "${HDMAP_WRAPPER_PATH}/source/algo_core/utils/PathParser/pavp_pathparser.cpp"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/utils/PathParser/pavp_pathparser.h"
)
source_group("algo_core\\utils\\PathParser" FILES ${algo_core__utils__PathParser})

set(algo_core__utils__tinyosm
    "${HDMAP_WRAPPER_PATH}/source/algo_core/utils/tinyosm/pavp_tinyosm.cpp"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/utils/tinyosm/pavp_tinyosm.h"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/utils/tinyosm/pavp_tinyosm_creater.cpp"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/utils/tinyosm/pavp_tinyosm_creater.h"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/utils/tinyosm/pavp_tinyosmhelper.cpp"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/utils/tinyosm/pavp_tinyosmhelper.h"
)
source_group("algo_core\\utils\\tinyosm" FILES ${algo_core__utils__tinyosm})

set(algo_core__utils__tinyxml2
    "${COMM_PATH}/thirdparty/tinyosm/tinyxml2.cpp"
    "${COMM_PATH}/thirdparty/tinyosm/tinyxml2.h"
)
source_group("algo_core\\utils\\tinyxml2" FILES ${algo_core__utils__tinyxml2})

set(algo_core__utils__tree
    "${HDMAP_WRAPPER_PATH}/source/algo_core/utils/tree/pavp_rtree.h"
)
source_group("algo_core\\utils\\tree" FILES ${algo_core__utils__tree})

set(algo_core__utils__xform
    "${HDMAP_WRAPPER_PATH}/source/algo_core/utils/xform/pavp_xform.cpp"
    "${HDMAP_WRAPPER_PATH}/source/algo_core/utils/xform/pavp_xform.h"
)
source_group("algo_core\\utils\\xform" FILES ${algo_core__utils__xform})

set(algo_interface
    "${HDMAP_WRAPPER_PATH}/source/algo_interface/hdmap_intf.cpp"
    "${HDMAP_WRAPPER_PATH}/source/algo_interface/hdmap_intf.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${HDMAP_WRAPPER_PATH}/source/spaceos_interface/pavpmap_spaceos_interface.cpp"
    "${HDMAP_WRAPPER_PATH}/source/spaceos_interface/pavpmap_spaceos_interface.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${algo_core__configloader}
    ${algo_core__datamanager}
    ${algo_core__datamanager__engine}
    ${algo_core__pathmanager}
    ${algo_core__primitives}
    ${algo_core__utils__LatLon_UTM_Converter}
    ${algo_core__utils__PathParser}
    ${algo_core__utils__tinyosm}
    ${algo_core__utils__tinyxml2}
    ${algo_core__utils__tree}
    ${algo_core__utils__xform}
    ${algo_interface}
    ${spaceos_interface}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${HDMAP_WRAPPER_PATH}/source;"
        "${HDMAP_WRAPPER_PATH}/source/algo_core;"
        "${COMM_PATH}/source/interface;"
        "${COMM_PATH}/source/utility;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/utility/dim3"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
	${COMM_PATH}/thirdparty/tinyosm/

)

################################################################################
# Target
################################################################################
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/map/maplibs")
set(LIBRARIES
    sp_comm
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
################################################################################
# Compile definitions
################################################################################

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE -DOPENCV=1 -DUSE_JZLIB=0)
target_compile_definitions(${PROJECT_NAME} PRIVATE "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -D_USRDLL  -DVIDEOCAPTURE_EXPORTS -D_MBCS")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE -DOPENCV=1 )
target_compile_definitions(${PROJECT_NAME} PRIVATE "${${PROJECT_NAME}_CXX_FLAGS}")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Od;
                        /Oi;
                        /sdl;
                        /Gy;
                        /W3;
                        /MD;
                        /wd4819;
                        /wd4099;
                        /wd4267;
                        /wd4244;
                        /wd4251;
                        /wd4005;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                        /SUBSYSTEM:CONSOLE;
                        /OPT:REF;
                        /OPT:ICF;
                    /DEBUG;
                    /SUBSYSTEM:WINDOWS
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
)
