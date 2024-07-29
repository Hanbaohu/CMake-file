project(hmi_p7)

################################################################################
# Source groups
################################################################################
set(controller
    "${HMI_P7_PATH}/src/controller/controller.cpp"
    "${HMI_P7_PATH}/src/controller/controller.h"
    "${HMI_P7_PATH}/src/controller/controller_def.h"
    "${HMI_P7_PATH}/src/controller/intfs_controller_manager.h"
)
source_group("controller" FILES ${controller})

set(controller__p7
    "${HMI_P7_PATH}/src/controller/p7/p7_controller.cpp"
    "${HMI_P7_PATH}/src/controller/p7/p7_controller.h"
    "${HMI_P7_PATH}/src/controller/p7/p7_controller_def.cpp"
    "${HMI_P7_PATH}/src/controller/p7/p7_controller_def.h"
)
source_group("controller\\p7" FILES ${controller__p7})

set(controller__p7__event_trigger
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/event_trigger.cpp"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/event_trigger.h"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/event_trigger_comm_def.h"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_buildingmap_event_trigger.cpp"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_buildingmap_event_trigger.h"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_havpsearching_event_trigger_logic.cpp"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_havpsearching_event_trigger_logic.h"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_havpstandby_event_trigger_logic.cpp"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_havpstandby_event_trigger_logic.h"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_off_event_trigger_logic.cpp"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_off_event_trigger_logic.h"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_parkin_event_trigger_logic.cpp"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_parkin_event_trigger_logic.h"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_passtate_event_trigger_logic.cpp"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_passtate_event_trigger_logic.h"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_pavpsearching_event_trigger_logic.cpp"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_pavpsearching_event_trigger_logic.h"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_remoteparking_event_trigger_logic.cpp"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_remoteparking_event_trigger_logic.h"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_rpasearching_event_trigger_logic.cpp"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_rpasearching_event_trigger_logic.h"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_searching_event_trigger_logic.cpp"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_searching_event_trigger_logic.h"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_standby_event_trigger_logic.cpp"
    "${HMI_P7_PATH}/src/controller/p7/event_trigger/p7_standby_event_trigger_logic.h"
)
source_group("controller\\p7\\event_trigger" FILES ${controller__p7__event_trigger})

set(controller__p7__hsm
    "${HMI_P7_PATH}/src/controller/p7/hsm/p7_state_machine.cpp"
    "${HMI_P7_PATH}/src/controller/p7/hsm/p7_state_machine.h"
)
source_group("controller\\p7\\hsm" FILES ${controller__p7__hsm})

set(controller__p7__state
    "${HMI_P7_PATH}/src/controller/p7/state/p7_buildingmap_state.cpp"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_buildingmap_state.h"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_failed_state.cpp"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_failed_state.h"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_havpsearching_state.cpp"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_havpsearching_state.h"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_havpstandby_state.cpp"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_havpstandby_state.h"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_off_state.cpp"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_off_state.h"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_parkin_state.cpp"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_parkin_state.h"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_passtate_state.cpp"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_passtate_state.h"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_pavpsearching_state.cpp"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_pavpsearching_state.h"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_remoteparking_state.cpp"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_remoteparking_state.h"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_rpasearching_state.cpp"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_rpasearching_state.h"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_run_state.cpp"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_run_state.h"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_searching_state.cpp"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_searching_state.h"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_standby_state.cpp"
    "${HMI_P7_PATH}/src/controller/p7/state/p7_standby_state.h"
)
source_group("controller\\p7\\state" FILES ${controller__p7__state})

set(fw_adaptor
    "${HMI_P7_PATH}/src/fw_adaptor/launcher.cpp"
    "${HMI_P7_PATH}/src/fw_adaptor/launcher.h"
)
source_group("fw_adaptor" FILES ${fw_adaptor})

set(model
    "${HMI_P7_PATH}/src/model/database.cpp"
    "${HMI_P7_PATH}/src/model/database.h"
    "${HMI_P7_PATH}/src/model/database_def.h"
)
source_group("model" FILES ${model})

set(model__ic321
    "${HMI_P7_PATH}/src/model/ic321/ic321_database.cpp"
    "${HMI_P7_PATH}/src/model/ic321/ic321_database.h"
)
source_group("model\\ic321" FILES ${model__ic321})

set(model__p7
    "${HMI_P7_PATH}/src/model/p7/p7_database.cpp"
    "${HMI_P7_PATH}/src/model/p7/p7_database.h"
)
source_group("model\\p7" FILES ${model__p7})

set(view
    "${HMI_P7_PATH}/src/view/intfs_view_manager.h"
    "${HMI_P7_PATH}/src/view/view.cpp"
    "${HMI_P7_PATH}/src/view/view.h"
    "${HMI_P7_PATH}/src/view/view_def.h"
)
source_group("view" FILES ${view})

set(view__p7
    "${HMI_P7_PATH}/src/view/p7/p7_view.cpp"
    "${HMI_P7_PATH}/src/view/p7/p7_view.h"
    "${HMI_P7_PATH}/src/view/p7/p7_view_def.h"
    "${HMI_P7_PATH}/src/view/p7/p7_view_manager.cpp"
    "${HMI_P7_PATH}/src/view/p7/p7_view_manager.h"
)
source_group("view\\p7" FILES ${view__p7})

set(ALL_FILES
    ${controller}
    ${controller__p7}
    ${controller__p7__event_trigger}
    ${controller__p7__hsm}
    ${controller__p7__state}
    ${fw_adaptor}
    ${model}
    ${model__ic321}
    ${model__p7}
    ${view}
    ${view__p7}
)


################################################################################
# Include directories
################################################################################
include_directories(
    "${COMM_PATH}/source/utility/state_machine/hsm;"
    "${COMM_PATH}/source/interface/common;"
    "${HMI_P7_PATH}/src;"
    "${COMM_PATH}/thirdparty/jsoncpp/include;"
    "${COMM_PATH}/source/interface/websocket;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/utility/tracker;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/cnn;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/hmi/hmihub;"
    "${COMM_PATH}/source/utility/pk_common"
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}

)

################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    "${COMM_PATH}/thirdparty/jsoncpp/lib_x64;"
    ${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "hmi/HMI")

set(LIBRARIES
    frameworkbase
    sp_comm
    #jsoncpp
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE
                                        "NDEBUG;"
                                        "_CRT_NONSTDC_NO_DEPRECATE;"
                                        "_CRT_SECURE_NO_WARNINGS;"
                                        "SPOS_WIN;"
                                        "MODULER_EXPORTS;"
                                        "_HMI_"
                                        "HMI_EXPORTS;"
                                        "_USRDLL;"
                                        "UNICODE;"
                                        "_UNICODE"
    )
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE  "_HMI_")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Od;
                        /Oi;
                        /Gy;
                        /Y-;
                        /permissive-;
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
)
