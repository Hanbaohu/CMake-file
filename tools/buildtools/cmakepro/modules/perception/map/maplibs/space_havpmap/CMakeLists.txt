project(space_havpmap)

################################################################################
# Source groups
################################################################################
set(algo_core__datamanager
    "${SPACE_HAVPMAP_PATH}/source/algo_core/datamanager/havp_datamanager.cpp"
    "${SPACE_HAVPMAP_PATH}/source/algo_core/datamanager/havp_datamanager.h"
    "${SPACE_HAVPMAP_PATH}/source/algo_core/datamanager/havp_datamath.cpp"
    "${SPACE_HAVPMAP_PATH}/source/algo_core/datamanager/havp_datamath.h"
    "${SPACE_HAVPMAP_PATH}/source/algo_core/datamanager/havp_dataparser.cpp"
    "${SPACE_HAVPMAP_PATH}/source/algo_core/datamanager/havp_dataparser.h"
)
source_group("algo_core\\datamanager" FILES ${algo_core__datamanager})

set(algo_core__gnssmanager
    "${SPACE_HAVPMAP_PATH}/source/algo_core/gnssmanager/havp_gnssmanager.cpp"
    "${SPACE_HAVPMAP_PATH}/source/algo_core/gnssmanager/havp_gnssmanager.h"
)
source_group("algo_core\\gnssmanager" FILES ${algo_core__gnssmanager})

set(algo_core__pathmanager
    "${SPACE_HAVPMAP_PATH}/source/algo_core/pathmanager/havp_pathmanager.cpp"
    "${SPACE_HAVPMAP_PATH}/source/algo_core/pathmanager/havp_pathmanager.h"
    "${SPACE_HAVPMAP_PATH}/source/algo_core/pathmanager/havp_pathsparse.cpp"
    "${SPACE_HAVPMAP_PATH}/source/algo_core/pathmanager/havp_pathsparse.h"
)
source_group("algo_core\\pathmanager" FILES ${algo_core__pathmanager})

set(algo_core__primitives
    "${SPACE_HAVPMAP_PATH}/source/algo_core/primitives/havpmap_common.h"
    "${SPACE_HAVPMAP_PATH}/source/algo_core/primitives/havpmap_landmark.h"
    "${SPACE_HAVPMAP_PATH}/source/algo_core/primitives/havpmap_mapinfo.h"
    "${SPACE_HAVPMAP_PATH}/source/algo_core/primitives/havpmap_waypoint.h"
)
source_group("algo_core\\primitives" FILES ${algo_core__primitives})

set(algo_core__spminfomanager
    "${SPACE_HAVPMAP_PATH}/source/algo_core/spminfomanager/havp_spminfomanager.h"
    "${SPACE_HAVPMAP_PATH}/source/algo_core/spminfomanager/havp_spminfomanager.cpp"
)
source_group("algo_core\\spminfomanager" FILES ${algo_core__spminfomanager})

set(algo_core__utils__tinyosm
    "${SPACE_HAVPMAP_PATH}/source/algo_core/utils/tinyosm/tinyosm.cpp"
    "${SPACE_HAVPMAP_PATH}/source/algo_core/utils/tinyosm/tinyosm.h"
)
source_group("algo_core\\utils\\tinyosm" FILES ${algo_core__utils__tinyosm})

set(algo_core__utils__tinyxml2
    "${SPACE_HAVPMAP_PATH}/source/algo_core/utils/tinyxml2/tinyxml2.cpp"
    "${SPACE_HAVPMAP_PATH}/source/algo_core/utils/tinyxml2/tinyxml2.h"
)
source_group("algo_core\\utils\\tinyxml2" FILES ${algo_core__utils__tinyxml2})

set(algo_interface
    "${SPACE_HAVPMAP_PATH}/source/algo_interface/havpmap_intf.cpp"
    "${SPACE_HAVPMAP_PATH}/source/algo_interface/havpmap_intf.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${SPACE_HAVPMAP_PATH}/source/spaceos_interface/havpmap_spaceos_interface.cpp"
    "${SPACE_HAVPMAP_PATH}/source/spaceos_interface/havpmap_spaceos_interface.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${algo_core__datamanager}
    ${algo_core__gnssmanager}
    ${algo_core__pathmanager}
    ${algo_core__primitives}
    ${algo_core__spminfomanager}
    ${algo_core__utils__tinyosm}
    ${algo_core__utils__tinyxml2}
    ${algo_interface}
    ${spaceos_interface}
)


################################################################################
# Include directories
################################################################################
include_directories(
        "${SPACE_HAVPMAP_PATH}/source;"
        "${COMM_PATH}/source/interface;"
        "${COMM_PATH}/source/utility;"
        "${COMM_PATH}/source/interface/common"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
	${SPACE_HAVPMAP_PATH}/source/algo_core/utils/tinyxml2/

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
target_compile_definitions(${PROJECT_NAME} PRIVATE "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -D_USRDLL"
                                " -D_TARGET_OS_WIN_ -DVIDEOCAPTURE_EXPORTS -D_MBCS -D_MAPSERVICE_ -D_AVPMAP_ -DTSML_WINDOWS -D_SCL_SECURE_NO_WARNINGS -DSPOS_WIN")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE -DOPENCV=1 )
target_compile_definitions(${PROJECT_NAME} PRIVATE "") # ${CMAKE_CXX_FLAGS} ${${PROJECT_NAME}_CXX_FLAGS}  -D_AVPMAP_ _MAPSERVICE_ -DTSML_WINDOWS -D_TARGET_OS_WIN_
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
    sp_comm
)
