project(hmihub)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${HMIHUB_PATH}/source/spaceos_interface/hmihub_stdafx.cpp"
    "${HMIHUB_PATH}/source/spaceos_interface/hmihub_stdafx.h"
)
source_group("" FILES ${no_group_source_files})

set(algo_core
    "${HMIHUB_PATH}/source/algo_core/stdimport.h"
)
source_group("algo_core" FILES ${algo_core})

set(algo_core__algo_proc
    "${HMIHUB_PATH}/source/algo_core/algo_proc/hmihub_algo_proc_main.cpp"
    "${HMIHUB_PATH}/source/algo_core/algo_proc/hmihub_algo_proc_main.h"
    "${HMIHUB_PATH}/source/algo_core/algo_proc/hmihub_attribute_logic.cpp"
    "${HMIHUB_PATH}/source/algo_core/algo_proc/hmihub_attribute_logic.h"
)
source_group("algo_core\\algo_proc" FILES ${algo_core__algo_proc})

set(algo_core__apahub
    "${HMIHUB_PATH}/source/algo_core/apahub/hmihub_apahub.cpp"
    "${HMIHUB_PATH}/source/algo_core/apahub/hmihub_apahub.h"
)
source_group("algo_core\\apahub" FILES ${algo_core__apahub})

set(algo_core__post_map
    "${HMIHUB_PATH}/source/algo_core/post_map/hmihub_post_map.cpp"
    "${HMIHUB_PATH}/source/algo_core/post_map/hmihub_post_map.h"
)
source_group("algo_core\\post_map" FILES ${algo_core__post_map})

set(algo_core__post_scene
    "${HMIHUB_PATH}/source/algo_core/post_scene/hmihub_post_scene.cpp"
    "${HMIHUB_PATH}/source/algo_core/post_scene/hmihub_post_scene.h"
)
source_group("algo_core\\post_scene" FILES ${algo_core__post_scene})

set(algo_core__post_scene__subpost
    "${HMIHUB_PATH}/source/algo_core/post_scene/hmihub_subpost_car.cpp"
    "${HMIHUB_PATH}/source/algo_core/post_scene/hmihub_subpost_car.h"
    "${HMIHUB_PATH}/source/algo_core/post_scene/hmihub_subpost_comm.cpp"
    "${HMIHUB_PATH}/source/algo_core/post_scene/hmihub_subpost_comm.h"
    "${HMIHUB_PATH}/source/algo_core/post_scene/hmihub_subpost_pillar.cpp"
    "${HMIHUB_PATH}/source/algo_core/post_scene/hmihub_subpost_pillar.h"
    "${HMIHUB_PATH}/source/algo_core/post_scene/hmihub_subpost_slot.cpp"
    "${HMIHUB_PATH}/source/algo_core/post_scene/hmihub_subpost_slot.h"
)
source_group("algo_core\\post_scene\\subpost" FILES ${algo_core__post_scene__subpost})

set(algo_core__primitives
    "${HMIHUB_PATH}/source/algo_core/primitives/dataforward.h"
)
source_group("algo_core\\primitives" FILES ${algo_core__primitives})

set(algo_core__subtasks
    "${HMIHUB_PATH}/source/algo_core/subtasks/subtsk_slotdetect_proc.cpp"
    "${HMIHUB_PATH}/source/algo_core/subtasks/subtsk_slotdetect_proc.h"
)
source_group("algo_core\\subtasks" FILES ${algo_core__subtasks})

set(algo_core__subtasks__apa2hmi
    "${HMIHUB_PATH}/source/algo_core/subtasks/apa2hmi/tsk_apa2hmi.cpp"
    "${HMIHUB_PATH}/source/algo_core/subtasks/apa2hmi/tsk_apa2hmi.h"
)
source_group("algo_core\\subtasks\\apa2hmi" FILES ${algo_core__subtasks__apa2hmi})

set(algo_core__subtasks__hmi2apa
    "${HMIHUB_PATH}/source/algo_core/subtasks/hmi2apa/tsk_hmi2apa.cpp"
    "${HMIHUB_PATH}/source/algo_core/subtasks/hmi2apa/tsk_hmi2apa.h"
)
source_group("algo_core\\subtasks\\hmi2apa" FILES ${algo_core__subtasks__hmi2apa})

set(algo_core__subtasks__hmi_desicion
    "${HMIHUB_PATH}/source/algo_core/subtasks/hmi_desicion/tsk_hmi_desicion.cpp"
    "${HMIHUB_PATH}/source/algo_core/subtasks/hmi_desicion/tsk_hmi_desicion.h"
)
source_group("algo_core\\subtasks\\hmi_desicion" FILES ${algo_core__subtasks__hmi_desicion})

set(algo_core__subtasks__loc2hmi_locpos
    "${HMIHUB_PATH}/source/algo_core/subtasks/loc2hmi_locpos/tsk_loc2hmi_locpos.cpp"
    "${HMIHUB_PATH}/source/algo_core/subtasks/loc2hmi_locpos/tsk_loc2hmi_locpos.h"
)
source_group("algo_core\\subtasks\\loc2hmi_locpos" FILES ${algo_core__subtasks__loc2hmi_locpos})

set(algo_core__subtasks__map2hmi_capture
    "${HMIHUB_PATH}/source/algo_core/subtasks/map2hmi_capture/tsk_map2hmi_capture.cpp"
    "${HMIHUB_PATH}/source/algo_core/subtasks/map2hmi_capture/tsk_map2hmi_capture.h"
)
source_group("algo_core\\subtasks\\map2hmi_capture" FILES ${algo_core__subtasks__map2hmi_capture})

set(algo_core__subtasks__map2hmi_globalmap
    "${HMIHUB_PATH}/source/algo_core/subtasks/map2hmi_globalmap/tsk_map2hmi_globalmap.cpp"
    "${HMIHUB_PATH}/source/algo_core/subtasks/map2hmi_globalmap/tsk_map2hmi_globalmap.h"
)
source_group("algo_core\\subtasks\\map2hmi_globalmap" FILES ${algo_core__subtasks__map2hmi_globalmap})

set(algo_core__subtasks__map2hmi_localmap
    "${HMIHUB_PATH}/source/algo_core/subtasks/map2hmi_localmap/tsk_map2hmi_localmap.cpp"
    "${HMIHUB_PATH}/source/algo_core/subtasks/map2hmi_localmap/tsk_map2hmi_localmap.h"
)
source_group("algo_core\\subtasks\\map2hmi_localmap" FILES ${algo_core__subtasks__map2hmi_localmap})

set(algo_core__subtasks__map2hmi_routepath
    "${HMIHUB_PATH}/source/algo_core/subtasks/map2hmi_routepath/tsk_map2hmi_routepath.cpp"
    "${HMIHUB_PATH}/source/algo_core/subtasks/map2hmi_routepath/tsk_map2hmi_routepath.h"
)
source_group("algo_core\\subtasks\\map2hmi_routepath" FILES ${algo_core__subtasks__map2hmi_routepath})

set(algo_core__utils__apalogic
    "${HMIHUB_PATH}/source/algo_core/utils/apalogic/apalogic_filter.cpp"
    "${HMIHUB_PATH}/source/algo_core/utils/apalogic/apalogic_filter.h"
)
source_group("algo_core\\utils\\apalogic" FILES ${algo_core__utils__apalogic})

set(algo_core__utils__helper
    "${HMIHUB_PATH}/source/algo_core/utils/hmihub_helper.cpp"
    "${HMIHUB_PATH}/source/algo_core/utils/hmihub_helper.h"
)
source_group("algo_core\\utils\\helper" FILES ${algo_core__utils__helper})

set(algo_core__utils__maprefine
    "${HMIHUB_PATH}/source/algo_core/utils/maprefine/hmihub_maprefine.cpp"
    "${HMIHUB_PATH}/source/algo_core/utils/maprefine/hmihub_maprefine.h"
)
source_group("algo_core\\utils\\maprefine" FILES ${algo_core__utils__maprefine})

set(algo_core__utils__pldshow
    "${HMIHUB_PATH}/source/algo_core/utils/pldshow/pldshow_algo_core.cpp"
    "${HMIHUB_PATH}/source/algo_core/utils/pldshow/pldshow_algo_core.h"
    "${HMIHUB_PATH}/source/algo_core/utils/pldshow/pldshow_algo_interface.cpp"
    "${HMIHUB_PATH}/source/algo_core/utils/pldshow/pldshow_algo_interface.h"
    "${HMIHUB_PATH}/source/algo_core/utils/pldshow/pldshow_filter.cpp"
    "${HMIHUB_PATH}/source/algo_core/utils/pldshow/pldshow_filter.h"
)
source_group("algo_core\\utils\\pldshow" FILES ${algo_core__utils__pldshow})

set(algo_core__utils__slotalign
    "${HMIHUB_PATH}/source/algo_core/utils/slotalign/slotalign_helper.cpp"
    "${HMIHUB_PATH}/source/algo_core/utils/slotalign/slotalign_helper.h"
)
source_group("algo_core\\utils\\slotalign" FILES ${algo_core__utils__slotalign})

set(algo_interface
    "${HMIHUB_PATH}/source/algo_interface/hmihub_algo_interface.cpp"
    "${HMIHUB_PATH}/source/algo_interface/hmihub_algo_interface.h"
    "${HMIHUB_PATH}/source/algo_interface/hmihub_inputdata_typedef.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(algo_interface__typedef
    "${HMIHUB_PATH}/../../common/comm/source/interface/hmi/hmihub/hmihub_debug_info.h"
    "${HMIHUB_PATH}/../../common/comm/source/interface/hmi/hmihub/hmihub_embed_interface.h"
    "${HMIHUB_PATH}/../../common/comm/source/interface/hmi/hmihub/hmihub_embed_output.h"
    "${HMIHUB_PATH}/../../common/comm/source/interface/hmi/hmihub/hmihub_header_info.h"
    "${HMIHUB_PATH}/../../common/comm/source/interface/hmi/hmihub/hmihub_instruct_info.h"
    "${HMIHUB_PATH}/../../common/comm/source/interface/hmi/hmihub/hmihub_object_info.h"
    "${HMIHUB_PATH}/../../common/comm/source/interface/hmi/hmihub/hmihub_state_info.h"
)
source_group("algo_interface\\typedef" FILES ${algo_interface__typedef})

set(spaceos_interface
    "${HMIHUB_PATH}/source/spaceos_interface/hmihub_spaceos_interface.cpp"
    "${HMIHUB_PATH}/source/spaceos_interface/hmihub_spaceos_interface.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(spaceos_interface__data_record
    "${HMIHUB_PATH}/source/spaceos_interface/hmihub_datarecord.cpp"
    "${HMIHUB_PATH}/source/spaceos_interface/hmihub_datarecord.h"
)
source_group("spaceos_interface\\data_record" FILES ${spaceos_interface__data_record})

set(spaceos_interface__dataconnect
    "${HMIHUB_PATH}/source/spaceos_interface/hmihub_spaceos_dataconnect.cpp"
)
source_group("spaceos_interface\\dataconnect" FILES ${spaceos_interface__dataconnect})

set(ALL_FILES
    ${no_group_source_files}
    ${algo_core}
    ${algo_core__algo_proc}
    ${algo_core__apahub}
    ${algo_core__post_map}
    ${algo_core__post_scene}
    ${algo_core__post_scene__subpost}
    ${algo_core__primitives}
    ${algo_core__subtasks}
    ${algo_core__subtasks__apa2hmi}
    ${algo_core__subtasks__hmi2apa}
    ${algo_core__subtasks__hmi_desicion}
    ${algo_core__subtasks__loc2hmi_locpos}
    ${algo_core__subtasks__map2hmi_capture}
    ${algo_core__subtasks__map2hmi_globalmap}
    ${algo_core__subtasks__map2hmi_localmap}
    ${algo_core__subtasks__map2hmi_routepath}
    ${algo_core__utils__apalogic}
    ${algo_core__utils__helper}
    ${algo_core__utils__maprefine}
    ${algo_core__utils__pldshow}
    ${algo_core__utils__slotalign}
    ${algo_interface}
    ${algo_interface__typedef}
    ${spaceos_interface}
    ${spaceos_interface__data_record}
    ${spaceos_interface__dataconnect}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${HMIHUB_PATH}/source/algo_interface;"
    "${HMIHUB_PATH}/source/algo_core;"
    "${HMIHUB_PATH}/spaceos_interface;"
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
    "${COMM_PATH}/source/interface/hmi/hmihub;"
    "${COMM_PATH}/source/interface/avpmap"
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}

)


################################################################################
# Target
################################################################################
link_directories(
    ${opencv_service_link_directories}
    ${opencv_link_directories}
    ${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "hmi/")

set(LIBRARIES
    frameworkbase
    sp_comm
    opencv_service
    mapservice
    ${opencv_link_libraries}
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE
        "_CRT_SECURE_NO_WARNINGS;"
        "SPOS_WIN;"
        "MODULER_EXPORTS;"
        "WIN32;"
        "_HMIHUB_;"
        "OPENCV=1;"
        "OPENCV300=1;"
        "HMIHUB_ENABLE_MULTI_APA_PLDOUT=1;"
        "_MBCS"
    )
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE "-D_HMIHUB_ -DOPENCV=1  -DHAVE_STRUCT_TIMESPEC -D_UINT64_DEFINED")
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
    opencv_service
    mapservice
)
