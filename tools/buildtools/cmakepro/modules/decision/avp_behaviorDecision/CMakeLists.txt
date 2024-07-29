project(avp_behaviorDecision)

################################################################################
# Source groups
################################################################################

set(algo_core
    "${AVP_BEHAVIORDECISION}/source/algo_core/avpBD_collision_checker_point.h"
    "${AVP_BEHAVIORDECISION}/source/algo_core/behavior_decision_data_handler.cpp"
    "${AVP_BEHAVIORDECISION}/source/algo_core/behavior_decision_data_handler.h"
    "${AVP_BEHAVIORDECISION}/source/algo_core/behavior_decision_data_record.cpp"
    "${AVP_BEHAVIORDECISION}/source/algo_core/behavior_decision_data_record.h"
    "${AVP_BEHAVIORDECISION}/source/algo_core/behavior_decision_data_struct.h"
    "${AVP_BEHAVIORDECISION}/source/algo_core/behavior_decision_display.cpp"
    "${AVP_BEHAVIORDECISION}/source/algo_core/behavior_decision_display.h"
    "${AVP_BEHAVIORDECISION}/source/algo_core/behavior_decision_flag_filter.cpp"
    "${AVP_BEHAVIORDECISION}/source/algo_core/behavior_decision_flag_filter.h"
    "${AVP_BEHAVIORDECISION}/source/algo_core/behavior_decision_helper.cpp"
    "${AVP_BEHAVIORDECISION}/source/algo_core/behavior_decision_helper.h"
    "${AVP_BEHAVIORDECISION}/source/algo_core/behavior_decision_hsm.cpp"
    "${AVP_BEHAVIORDECISION}/source/algo_core/behavior_decision_hsm.h"
)
source_group("algo_core" FILES ${algo_core})

set(algo_core__statechart
    "${AVP_BEHAVIORDECISION}/source/algo_core/bd_statechart/avp_behaviorDecision_statechart.cpp"
    "${AVP_BEHAVIORDECISION}/source/algo_core/bd_statechart/avp_behaviorDecision_statechart.h"
    "${AVP_BEHAVIORDECISION}/source/algo_core/bd_statechart/avp_behaviorDecision_statechart_embed.h"
    "${AVP_BEHAVIORDECISION}/source/algo_core/bd_statechart/avp_behaviorDecision_statechart_events.h"
    "${AVP_BEHAVIORDECISION}/source/algo_core/bd_statechart/avp_behaviorDecision_statechart_scene.h"
    "${AVP_BEHAVIORDECISION}/source/algo_core/bd_statechart/avp_behaviorDecision_statechart_speed.h"
    "${AVP_BEHAVIORDECISION}/source/algo_core/bd_statechart/avpBD_sc_states_Cruising.cpp"
    "${AVP_BEHAVIORDECISION}/source/algo_core/bd_statechart/avpBD_sc_states_Emergency.cpp"
    "${AVP_BEHAVIORDECISION}/source/algo_core/bd_statechart/avpBD_sc_states_Failed.cpp"
    "${AVP_BEHAVIORDECISION}/source/algo_core/bd_statechart/avpBD_sc_states_INIT.cpp"
    "${AVP_BEHAVIORDECISION}/source/algo_core/bd_statechart/avpBD_sc_states_SidePass.cpp"
    "${AVP_BEHAVIORDECISION}/source/algo_core/bd_statechart/avpBD_sc_states_SlowDown.cpp"
    "${AVP_BEHAVIORDECISION}/source/algo_core/bd_statechart/lag_filter.h"
)
source_group("algo_core\\statechart" FILES ${algo_core__statechart})

set(algo_interface
    "${AVP_BEHAVIORDECISION}/source/algo_interface/sp_behavior_decision_algo_interface.cpp"
    "${AVP_BEHAVIORDECISION}/source/algo_interface/sp_behavior_decision_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${AVP_BEHAVIORDECISION}/source/spaceos_interface/sp_behavior_decision_spaceos_interface.cpp"
    "${AVP_BEHAVIORDECISION}/source/spaceos_interface/sp_behavior_decision_spaceos_interface.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(spaceos_interface__avpBD_recorder
    "${AVP_BEHAVIORDECISION}/source/spaceos_interface/avpBD_recorder/avpBD_datarecord.cpp"
    "${AVP_BEHAVIORDECISION}/source/spaceos_interface/avpBD_recorder/avpBD_datarecord.h"
)
source_group("spaceos_interface\\avpBD_recorder" FILES ${spaceos_interface__avpBD_recorder})

set(ALL_FILES
    ${algo_core}
    ${algo_core__statechart}
    ${algo_interface}
    ${spaceos_interface}
    ${spaceos_interface__avpBD_recorder}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${AVP_BEHAVIORDECISION}/source/platform/windows;"
    "${AVP_BEHAVIORDECISION}/source/spaceos_interface;"
    "${AVP_BEHAVIORDECISION}/source/algo_interface;"
    "${AVP_BEHAVIORDECISION}/source/algo_core;"
    "${AVP_BEHAVIORDECISION}/source/core;"
    "${AVP_BEHAVIORDECISION}/matlab/avpBehavior_stateflow_ert_rtw;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/intrinsic_modeller;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/math;"
    "${COMM_PATH}/source/interface/ml;"
    "${COMM_PATH}/source/interface/monitor_pro;"
    "${COMM_PATH}/thirdparty/avpmap/interface;"
    "${COMM_PATH}/source/interface/schedule;"
    "${COMM_PATH}/source/utility/dim3;"
    "${AVP_PATHPLAN_PATH}/source/utility;"
    "${FW_SDK_PATH}/service/opencv/include;"
    "${APA_COMM_MATH_PATH}/include;"
    "${COMM_PATH}/source/utility/synchronizer;"
    "${COMM_PATH}/thirdparty/libgridmap/inc;"
    "${COMM_PATH}/thirdparty/Eigen;"
    "${COMM_PATH}/source/utility/vehmdl;"
    "${COMM_PATH}/source/utility/state_machine/hsm;"
    "${COMM_PATH}/source/utility/avp_pathplan;"
    "${COMM_PATH}/source/utility/pk_common;"
    "${COMM_PATH}/source/utility/helper;"
    "${COMM_PATH}/source/interface/avpmap"
    "${COMM_PATH}/thirdparty/hastar/include"
    "${COMM_PATH}/source/utility/lidar_common;"
    "${COMM_PATH}/source/interface/iogateway"
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}

)

################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    ${opencv_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "decision")

set(LIBRARIES
    frameworkbase
    sp_comm
    #libgridmap
    opencv_service
    ${opencv_link_libraries}
    #${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )
if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE  -DFCN_CAFFE=1 -DWEBOTS_EN=0 OPENCV=1)
    target_compile_definitions(${PROJECT_NAME} PRIVATE  -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -D_AVP_BEHAVIOR_DECISION_ -D_USRDLL -DVIDEOCAPTURE_EXPORTS -D_MBCS -DWIN32  -DNDEBUG
                                                -DWIN32 -DSPOS_WIN -D_WINDOWS  -DPC -D_SCL_SECURE_NO_WARNINGS)
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE -DOPENCV=1)
    target_compile_definitions(${PROJECT_NAME} PRIVATE -DENABLE_DEBUG_SHOW_WINDOW -DENABLE_FOXGLOVE_SHOW -D_BEHAVIOR_ -D_UINIT_64_T_ -D_AVP_BEHAVIOR_DECISION_ )
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /MD;
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
    #libgridmap
    opencv_service
)
