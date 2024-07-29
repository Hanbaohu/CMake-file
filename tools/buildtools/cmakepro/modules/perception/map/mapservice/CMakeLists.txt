project(mapservice)

################################################################################
# Source groups
################################################################################
set(algo_core__primitives
    "${MAPSERVICE_PATH}/source/algo_core/primitives/mapservice_algo_comm.h"
    "${MAPSERVICE_PATH}/source/algo_core/primitives/mapservice_attributes.cpp"
    "${MAPSERVICE_PATH}/source/algo_core/primitives/mapservice_attributes.h"
)
source_group("algo_core\\primitives" FILES ${algo_core__primitives})

set(algo_core__scheduler
    "${MAPSERVICE_PATH}/source/algo_core/scheduler/mapservice_main_scheduler.cpp"
    "${MAPSERVICE_PATH}/source/algo_core/scheduler/mapservice_main_scheduler.h"
)
source_group("algo_core\\scheduler" FILES ${algo_core__scheduler})

set(algo_core__scheduler__mapdesc_manager
    "${MAPSERVICE_PATH}/source/algo_core/scheduler/mapfile_manager/mapservice_mapdesc_manager.cpp"
    "${MAPSERVICE_PATH}/source/algo_core/scheduler/mapfile_manager/mapservice_mapdesc_manager.h"
)
source_group("algo_core\\scheduler\\mapdesc_manager" FILES ${algo_core__scheduler__mapdesc_manager})

set(algo_core__scheduler__maperror_manager
    "${MAPSERVICE_PATH}/source/algo_core/scheduler/maperror_manager/mapservice_maperror_manager.cpp"
    "${MAPSERVICE_PATH}/source/algo_core/scheduler/maperror_manager/mapservice_maperror_manager.h"
)
source_group("algo_core\\scheduler\\maperror_manager" FILES ${algo_core__scheduler__maperror_manager})

set(algo_core__scheduler__mapevent_havpmap
    "${MAPSERVICE_PATH}/source/algo_core/scheduler/mapevent_havpmap/mapservice_mapevent_havpmap.cpp"
    "${MAPSERVICE_PATH}/source/algo_core/scheduler/mapevent_havpmap/mapservice_mapevent_havpmap.h"
)
source_group("algo_core\\scheduler\\mapevent_havpmap" FILES ${algo_core__scheduler__mapevent_havpmap})

set(algo_core__scheduler__mapevent_havpmap__submap
    "${MAPSERVICE_PATH}/source/algo_core/scheduler/mapevent_havpmap/submap/mapservice_havp_submap_slam.cpp"
    "${MAPSERVICE_PATH}/source/algo_core/scheduler/mapevent_havpmap/submap/mapservice_havp_submap_slam.h"
    "${MAPSERVICE_PATH}/source/algo_core/scheduler/mapevent_havpmap/submap/mapservice_havp_submap_spm.cpp"
    "${MAPSERVICE_PATH}/source/algo_core/scheduler/mapevent_havpmap/submap/mapservice_havp_submap_spm.h"
)
source_group("algo_core\\scheduler\\mapevent_havpmap\\submap" FILES ${algo_core__scheduler__mapevent_havpmap__submap})

set(algo_core__scheduler__maprec_manager
    "${MAPSERVICE_PATH}/source/algo_core/scheduler/maprec_manager/mapservice_maprec_manager.cpp"
    "${MAPSERVICE_PATH}/source/algo_core/scheduler/maprec_manager/mapservice_maprec_manager.h"
)
source_group("algo_core\\scheduler\\maprec_manager" FILES ${algo_core__scheduler__maprec_manager})

set(algo_core__utils__mapfileop
    "${MAPSERVICE_PATH}/source/algo_core/utils/mapfileop/mapservice_fileop.cpp"
    "${MAPSERVICE_PATH}/source/algo_core/utils/mapfileop/mapservice_fileop.h"
)
source_group("algo_core\\utils\\mapfileop" FILES ${algo_core__utils__mapfileop})

set(algo_interface
    "${MAPSERVICE_PATH}/source/algo_interface/mapservice_algo_interface.cpp"
    "${MAPSERVICE_PATH}/source/algo_interface/mapservice_algo_interface.h"
    "${MAPSERVICE_PATH}/source/algo_interface/mapservice_config.h"
    "${MAPSERVICE_PATH}/source/algo_interface/mapservice_embed_input.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(comm_interface
    "${MAPSERVICE_PATH}/source/comm_interface/avpmap_service_intf.cpp"
)
source_group("comm_interface" FILES ${comm_interface})

set(spaceos_interface
    "${MAPSERVICE_PATH}/source/spaceos_interface/mapservice_spaceos_interface.cpp"
    "${MAPSERVICE_PATH}/source/spaceos_interface/mapservice_spaceos_interface.h"
    "${MAPSERVICE_PATH}/source/spaceos_interface/mapservice_spaceos_interface_keyboardtest.cpp"
    "${MAPSERVICE_PATH}/source/spaceos_interface/mapservice_spaceos_interface_webots.cpp"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(spaceos_interface__data_recorder
    "${MAPSERVICE_PATH}/source/spaceos_interface/data_record/mapservice_datarecord.cpp"
    "${MAPSERVICE_PATH}/source/spaceos_interface/data_record/mapservice_datarecord.h"
)
source_group("spaceos_interface\\data_recorder" FILES ${spaceos_interface__data_recorder})

set(ALL_FILES
    ${algo_core__primitives}
    ${algo_core__scheduler}
    ${algo_core__scheduler__mapdesc_manager}
    ${algo_core__scheduler__maperror_manager}
    ${algo_core__scheduler__mapevent_havpmap}
    ${algo_core__scheduler__mapevent_havpmap__submap}
    ${algo_core__scheduler__maprec_manager}
    ${algo_core__utils__mapfileop}
    ${algo_interface}
    ${comm_interface}
    ${spaceos_interface}
    ${spaceos_interface__data_recorder}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${MAPSERVICE_PATH}/source;"
        "${COMM_PATH}/source/interface;"
        "${COMM_PATH}/source/utility;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/utility/pk_common;"
	"${COMM_PATH}/source/utility/recorder"
        "${MAPLIBS_PATH}"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
	"${MAPLIBS_PATH}/space_havpmap/source/spaceos_interface"
	"${MAPLIBS_PATH}/space_havpmap/source"
	${SPACE_HAVPMAP_PATH}/source/algo_core/utils/tinyxml2/
	${IOGATEWAY_PATH}/source/CommunicationManager/CommonComm
	${COMM_PATH}/source/interface/iogateway

)

################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
	${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/map")

set(LIBRARIES
    sp_comm
    frameworkbase
    "hdmap_wrapper"
    "space_havpmap"
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE  "-D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -D_USRDLL -DVIDEOCAPTURE_EXPORTS -D_MBCS")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE  "-D_MAPSERVICE_")
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
    frameworkbase
    hdmap_wrapper
    space_havpmap
)
