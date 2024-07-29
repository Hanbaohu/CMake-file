project(hmi_icu3)

################################################################################
# Source groups
################################################################################
set(common
    "${HMI_ICU3_PATH}/src/common/hmi_common.cpp"
    "${HMI_ICU3_PATH}/src/common/hmi_common.h"
)
source_group("common" FILES ${common})

set(controller
    "${HMI_ICU3_PATH}/src/controller/controller.cpp"
    "${HMI_ICU3_PATH}/src/controller/controller.h"
    "${HMI_ICU3_PATH}/src/controller/controller_def.h"
    "${HMI_ICU3_PATH}/src/controller/intfs_controller_manager.h"
)
source_group("controller" FILES ${controller})

set(controller__icu3
    "${HMI_ICU3_PATH}/src/controller/icu3/icu3_controller.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/icu3_controller.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/icu3_controller_def.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/icu3_controller_def.h"
)
source_group("controller\\icu3" FILES ${controller__icu3})

set(controller__icu3__apa__event_trigger
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_backsearching_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_backsearching_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_event_trigger.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_event_trigger.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_event_trigger_comm_def.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_interrupt_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_interrupt_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_off_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_off_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_parkin_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_parkin_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_parkout_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_parkout_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_parkout_preprocess_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_parkout_preprocess_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_rads_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_rads_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_remote_parkin_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_remote_parkin_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_remote_summon_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_remote_summon_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_searching_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_searching_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_wait_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/event_trigger/icu3_apalogic_wait_event_trigger_logic.h"
)
source_group("controller\\icu3\\apa\\event_trigger" FILES ${controller__icu3__apa__event_trigger})

set(controller__icu3__apa__hsm
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/hsm/icu3_apalogic_state_machine.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/hsm/icu3_apalogic_state_machine.h"
)
source_group("controller\\icu3\\apa\\hsm" FILES ${controller__icu3__apa__hsm})

set(controller__icu3__apa__state
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_back_searching_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_back_searching_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_disable_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_disable_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_failed_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_failed_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_interrupt_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_interrupt_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_off_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_off_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_parkin_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_parkin_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_parkout_preprocess_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_parkout_preprocess_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_parkout_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_parkout_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_rads_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_rads_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_remote_parkin_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_remote_parkin_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_remote_summon_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_remote_summon_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_run_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_run_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_searching_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_searching_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_standby_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_standby_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_wait_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/apa/state/icu3_apalogic_wait_state.h"
)
source_group("controller\\icu3\\apa\\state" FILES ${controller__icu3__apa__state})

set(controller__icu3__avm__event_trigger
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_cal_event_tirgger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_cal_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_cco_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_cco_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_full_assist_wash_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_full_assist_wash_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_full_assist_wheel_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_full_assist_wheel_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_full_default_2d_event_tirgger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_full_default_2d_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_full_default_3d_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_full_default_3d_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_obstacle_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_obstacle_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_on_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_on_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_standby_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_standby_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_turnon_event_tirgger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_avm_turnon_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_event_trigger.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_event_trigger.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/event_trigger/icu3_event_trigger_def.h"
)
source_group("controller\\icu3\\avm\\event_trigger" FILES ${controller__icu3__avm__event_trigger})

set(controller__icu3__avm__hsm
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/hsm/icu3_sys_state_machine.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/hsm/icu3_sys_state_machine.h"
)
source_group("controller\\icu3\\avm\\hsm" FILES ${controller__icu3__avm__hsm})

set(controller__icu3__avm__state
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_cal_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_cal_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_cco_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_cco_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_full_assist_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_full_assist_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_full_assist_wash_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_full_assist_wash_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_full_assist_wheel_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_full_assist_wheel_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_full_default_2d_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_full_default_2d_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_full_default_3d_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_full_default_3d_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_full_default_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_full_default_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_full_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_full_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_obstacle_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_obstacle_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_on_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_on_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_standby_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_standby_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_turnon_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/avm/state/icu3_avm_turnon_state.h"
)
source_group("controller\\icu3\\avm\\state" FILES ${controller__icu3__avm__state})

set(controller__icu3__havp__event_trigger
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/event_trigger/event_trigger_comm_def.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/event_trigger/icu3_havp_buildingmap_event_trigger.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/event_trigger/icu3_havp_buildingmap_event_trigger.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/event_trigger/icu3_havp_event_trigger.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/event_trigger/icu3_havp_event_trigger.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/event_trigger/icu3_havp_off_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/event_trigger/icu3_havp_off_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/event_trigger/icu3_havp_parkin_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/event_trigger/icu3_havp_parkin_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/event_trigger/icu3_havp_passtate_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/event_trigger/icu3_havp_passtate_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/event_trigger/icu3_havp_searching_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/event_trigger/icu3_havp_searching_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/event_trigger/icu3_havp_standby_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/event_trigger/icu3_havp_standby_event_trigger_logic.h"
)
source_group("controller\\icu3\\havp\\event_trigger" FILES ${controller__icu3__havp__event_trigger})

set(controller__icu3__havp__hsm
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/hsm/icu3_havp_state_machine.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/hsm/icu3_havp_state_machine.h"
)
source_group("controller\\icu3\\havp\\hsm" FILES ${controller__icu3__havp__hsm})

set(controller__icu3__havp__state
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_buildingmap_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_buildingmap_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_failed_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_failed_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_off_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_off_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_parkin_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_parkin_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_passtate_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_passtate_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_run_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_run_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_searching_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_searching_state.h"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_standby_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/icu3/havp/state/icu3_havp_standby_state.h"
)
source_group("controller\\icu3\\havp\\state" FILES ${controller__icu3__havp__state})

set(controller__spaceview
    "${HMI_ICU3_PATH}/src/controller/spaceview/spaceview_controller.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/spaceview_controller.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/spaceview_controller_def.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/spaceview_controller_def.h"
)
source_group("controller\\spaceview" FILES ${controller__spaceview})

set(controller__spaceview__apa__event_trigger
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_backsearching_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_backsearching_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_event_trigger.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_event_trigger.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_event_trigger_comm_def.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_interrupt_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_interrupt_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_off_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_off_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_parkin_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_parkin_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_parkout_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_parkout_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_parkout_preprocess_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_parkout_preprocess_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_rads_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_rads_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_remote_parkin_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_remote_parkin_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_remote_summon_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_remote_summon_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_searching_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_searching_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_wait_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/event_trigger/spaceview_apalogic_wait_event_trigger_logic.h"
)
source_group("controller\\spaceview\\apa\\event_trigger" FILES ${controller__spaceview__apa__event_trigger})

set(controller__spaceview__apa__hsm
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/hsm/spaceview_apalogic_state_machine.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/hsm/spaceview_apalogic_state_machine.h"
)
source_group("controller\\spaceview\\apa\\hsm" FILES ${controller__spaceview__apa__hsm})

set(controller__spaceview__apa__state
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_back_searching_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_back_searching_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_disable_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_disable_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_failed_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_failed_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_interrupt_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_interrupt_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_off_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_off_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_parkin_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_parkin_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_parkout_preprocess_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_parkout_preprocess_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_parkout_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_parkout_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_rads_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_rads_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_remote_parkin_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_remote_parkin_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_remote_summon_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_remote_summon_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_run_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_run_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_searching_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_searching_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_standby_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_standby_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_wait_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/apa/state/spaceview_apalogic_wait_state.h"
)
source_group("controller\\spaceview\\apa\\state" FILES ${controller__spaceview__apa__state})

set(controller__spaceview__avm__event_trigger
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_cal_event_tirgger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_cal_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_cco_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_cco_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_assist_wash_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_assist_wash_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_assist_wheel_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_assist_wheel_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_default_2d_event_tirgger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_default_2d_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_default_3d_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_default_3d_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_obstacle_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_obstacle_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_on_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_on_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_standby_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_standby_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_turnon_event_tirgger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_turnon_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_event_trigger.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_event_trigger.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_event_trigger_def.h"
)
source_group("controller\\spaceview\\avm\\event_trigger" FILES ${controller__spaceview__avm__event_trigger})

set(controller__spaceview__avm__hsm
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/hsm/spaceview_sys_state_machine.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/hsm/spaceview_sys_state_machine.h"
)
source_group("controller\\spaceview\\avm\\hsm" FILES ${controller__spaceview__avm__hsm})

set(controller__spaceview__avm__state
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_cal_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_cal_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_cco_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_cco_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_full_assist_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_full_assist_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_full_assist_wash_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_full_assist_wash_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_full_assist_wheel_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_full_assist_wheel_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_full_default_2d_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_full_default_2d_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_full_default_3d_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_full_default_3d_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_full_default_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_full_default_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_full_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_full_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_obstacle_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_obstacle_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_on_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_on_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_standby_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_standby_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_turnon_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/avm/state/spaceview_avm_turnon_state.h"
)
source_group("controller\\spaceview\\avm\\state" FILES ${controller__spaceview__avm__state})

set(controller__spaceview__havp__event_trigger
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/event_trigger/event_trigger_comm_def.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_buildingmap_event_trigger.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_buildingmap_event_trigger.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_event_trigger.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_event_trigger.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_off_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_off_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_parkin_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_parkin_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_passtate_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_passtate_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_searching_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_searching_event_trigger_logic.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_standby_event_trigger_logic.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_standby_event_trigger_logic.h"
)
source_group("controller\\spaceview\\havp\\event_trigger" FILES ${controller__spaceview__havp__event_trigger})

set(controller__spaceview__havp__hsm
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/hsm/spaceview_havp_state_machine.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/hsm/spaceview_havp_state_machine.h"
)
source_group("controller\\spaceview\\havp\\hsm" FILES ${controller__spaceview__havp__hsm})

set(controller__spaceview__havp__state
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_buildingmap_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_buildingmap_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_failed_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_failed_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_off_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_off_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_parkin_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_parkin_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_passtate_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_passtate_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_run_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_run_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_searching_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_searching_state.h"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_standby_state.cpp"
    "${HMI_ICU3_PATH}/src/controller/spaceview/havp/state/spaceview_havp_standby_state.h"
)
source_group("controller\\spaceview\\havp\\state" FILES ${controller__spaceview__havp__state})

set(fw_adaptor
    "${HMI_ICU3_PATH}/src/fw_adaptor/launcher.cpp"
    "${HMI_ICU3_PATH}/src/fw_adaptor/launcher.h"
)
source_group("fw_adaptor" FILES ${fw_adaptor})

set(model
    "${HMI_ICU3_PATH}/src/model/database.cpp"
    "${HMI_ICU3_PATH}/src/model/database.h"
    "${HMI_ICU3_PATH}/src/model/database_def.h"
)
source_group("model" FILES ${model})

set(model__icu3
    "${HMI_ICU3_PATH}/src/model/icu3/icu3_database.cpp"
    "${HMI_ICU3_PATH}/src/model/icu3/icu3_database.h"
)
source_group("model\\icu3" FILES ${model__icu3})

set(model__icu3__jsonrw
    "${HMI_ICU3_PATH}/src/model/icu3/jsonrw/icu3_jsonrw.cpp"
    "${HMI_ICU3_PATH}/src/model/icu3/jsonrw/icu3_jsonrw.h"
)
source_group("model\\icu3\\jsonrw" FILES ${model__icu3__jsonrw})

set(model__icu3__parklot
    "${HMI_ICU3_PATH}/src/model/icu3/parklot/icu3_parklot.cpp"
    "${HMI_ICU3_PATH}/src/model/icu3/parklot/icu3_parklot.h"
)
source_group("model\\icu3\\parklot" FILES ${model__icu3__parklot})

set(model__spaceview
    "${HMI_ICU3_PATH}/src/model/spaceview/spaceview_database.cpp"
    "${HMI_ICU3_PATH}/src/model/spaceview/spaceview_database.h"
)
source_group("model\\spaceview" FILES ${model__spaceview})

set(model__spaceview__jsonrw
    "${HMI_ICU3_PATH}/src/model/spaceview/jsonrw/spaceview_jsonrw.cpp"
    "${HMI_ICU3_PATH}/src/model/spaceview/jsonrw/spaceview_jsonrw.h"
)
source_group("model\\spaceview\\jsonrw" FILES ${model__spaceview__jsonrw})

set(model__spaceview__parklot
    "${HMI_ICU3_PATH}/src/model/spaceview/parklot/spaceview_parklot.cpp"
    "${HMI_ICU3_PATH}/src/model/spaceview/parklot/spaceview_parklot.h"
)
source_group("model\\spaceview\\parklot" FILES ${model__spaceview__parklot})

set(view
    "${HMI_ICU3_PATH}/src/view/intfs_view_manager.h"
    "${HMI_ICU3_PATH}/src/view/view.cpp"
    "${HMI_ICU3_PATH}/src/view/view.h"
    "${HMI_ICU3_PATH}/src/view/view_def.h"
)
source_group("view" FILES ${view})

set(view__icu3
    "${HMI_ICU3_PATH}/src/view/icu3/icu3_avm_view.cpp"
    "${HMI_ICU3_PATH}/src/view/icu3/icu3_avm_view.h"
    "${HMI_ICU3_PATH}/src/view/icu3/icu3_view_def.h"
    "${HMI_ICU3_PATH}/src/view/icu3/icu3_view_manager.cpp"
    "${HMI_ICU3_PATH}/src/view/icu3/icu3_view_manager.h"
)
source_group("view\\icu3" FILES ${view__icu3})

set(view__spaceview
    "${HMI_ICU3_PATH}/src/view/spaceview/spaceview_avm_view.cpp"
    "${HMI_ICU3_PATH}/src/view/spaceview/spaceview_avm_view.h"
    "${HMI_ICU3_PATH}/src/view/spaceview/spaceview_view_def.h"
    "${HMI_ICU3_PATH}/src/view/spaceview/spaceview_view_manager.cpp"
    "${HMI_ICU3_PATH}/src/view/spaceview/spaceview_view_manager.h"
)
source_group("view\\spaceview" FILES ${view__spaceview})

set(ALL_FILES
    ${common}
    ${controller}
    ${controller__icu3}
    ${controller__icu3__apa__event_trigger}
    ${controller__icu3__apa__hsm}
    ${controller__icu3__apa__state}
    ${controller__icu3__avm__event_trigger}
    ${controller__icu3__avm__hsm}
    ${controller__icu3__avm__state}
    ${controller__icu3__havp__event_trigger}
    ${controller__icu3__havp__hsm}
    ${controller__icu3__havp__state}
    ${controller__spaceview}
    ${controller__spaceview__apa__event_trigger}
    ${controller__spaceview__apa__hsm}
    ${controller__spaceview__apa__state}
    ${controller__spaceview__avm__event_trigger}
    ${controller__spaceview__avm__hsm}
    ${controller__spaceview__avm__state}
    ${controller__spaceview__havp__event_trigger}
    ${controller__spaceview__havp__hsm}
    ${controller__spaceview__havp__state}
    ${fw_adaptor}
    ${model}
    ${model__icu3}
    ${model__icu3__jsonrw}
    ${model__icu3__parklot}
    ${model__spaceview}
    ${model__spaceview__jsonrw}
    ${model__spaceview__parklot}
    ${view}
    ${view__icu3}
    ${view__spaceview}
)

################################################################################
# Include directories
################################################################################
include_directories(
    ${COMM_PATH}/source/utility/state_machine/hsm
    ${COMM_PATH}/source/interface/hmi/hmihub
    ${COMM_PATH}/source/interface/cnn
    ${COMM_PATH}/source/interface/common
    ${COMM_PATH}/source/utility
    ${COMM_PATH}/source/utility/avm
    ${COMM_PATH}/source/interface/avm
    ${COMM_PATH}/source/utility/dim3
    ${COMM_PATH}/source/utility/vehmdl
    ${COMM_PATH}/source/interface/algo
    ${COMM_PATH}/source/interface/smc
    ${COMM_PATH}/source/interface/cv
    ${COMM_PATH}/source/interface/cuda
    ${COMM_PATH}/source/interface/math
    ${COMM_PATH}/source/interface/gpu3d
    ${COMM_PATH}/source/interface/ffmpeg
    ${COMM_PATH}/source/interface/avpmap
    ${COMM_PATH}/source/interface/iogateway
    ${COMM_PATH}/source/interface
    ${COMM_PATH}/source/utility
    ${COMM_PATH}/source/utility/mmr
    ${COMM_PATH}/source/utility/pk_common
    ${COMM_PATH}/thirdparty/rapidjson/include/rapidjson
    ${COMM_PATH}/source/utility/tracker
    ${COMM_PATH}/source/interface/iogateway/
    ${COMM_PATH}/thirdparty/cpptime/
    ${COMM_PATH}/source/interface/iogateway
    ${APA_COMM_MATH_PATH}/include
    ${HMI}/graphic_engine/include
    ${HMI}/graphic_engine/source/utility/PowerVR_SDK/SDK_2019_R1.1/include
        "${HMI_ICU3_PATH}/"
        "${HMI_ICU3_PATH}/src"
        #"${AVM_ICU3_PATH}/include"
        "${FW_SDK_PATH}/service/communication/can/src/can_parser/dbc"
        "${HMI_ICU3_PATH}/src/model/ic321/jsonrw"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)

################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    "${MY_ROOT_DIR}/spaceos/spaceos_launcher/port/vc2019/x64/Release;"
    ${opencv_service_link_directories}
	${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "hmi/HMI")

if(MSVC)
    set(LIBRARIES
        frameworkbase
        sp_comm
        mapservice
        display
        ${${PROJECT_NAME}_link_libraries}
    )
else()
    set(LIBRARIES
        frameworkbase
        sp_comm
        mapservice
        #display #TBD
        ${${PROJECT_NAME}_link_libraries}
    )
endif()
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
                                "_ON_WIN_;"
                                "MODULER_EXPORTS;"
                                "_HMI_ICU3_;"
                                "_MBCS"
                                "HMI_EXPORTS;"
                                "_USRDLL"
    )
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE  "-D_GEAR_MSG_TYPE_ -D_HMI_ICU3 -D_ENABLE_AVM_")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Oi;
                        /Gy;
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

if(MSVC)
    add_dependencies(${PROJECT_NAME}
        frameworkbase
        sp_comm
        mapservice
        display
    )
else()
    add_dependencies(${PROJECT_NAME}
        frameworkbase
        sp_comm
        mapservice
        #display #TBD
    )
endif()
