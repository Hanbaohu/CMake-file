project(HMI_spaceview)

################################################################################
# Source groups
################################################################################
set(controller
    "${HMI_SPAVEVIEW_PATH}/src/controller/controller.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/controller.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/controller_def.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/intfs_controller_manager.h"
)
source_group("controller" FILES ${controller})

set(controller__spaceview
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/spaceview_controller.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/spaceview_controller.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/spaceview_controller_def.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/spaceview_controller_def.h"
)
source_group("controller\\spaceview" FILES ${controller__spaceview})

set(controller__spaceview__event_trigger
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_backsearching_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_backsearching_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_event_trigger_comm_def.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_event_trigger.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_event_trigger.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_interrupt_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_interrupt_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_off_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_off_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_parkin_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_parkin_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_parkout_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_parkout_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_parkout_preprocess_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_parkout_preprocess_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_rads_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_rads_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_remote_parkin_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_remote_parkin_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_remote_summon_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_remote_summon_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_searching_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_searching_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_wait_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger/apalogic_wait_event_trigger_logic.h"
)
source_group("controller\\spaceview\\apa\\event_trigger" FILES ${controller__spaceview__event_trigger})

set(controller__spaceview__hsm
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/hsm/apalogic_state_machine.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/hsm/apalogic_state_machine.h"
)
source_group("controller\\spaceview\\apa\\hsm" FILES ${controller__spaceview__hsm})

set(controller__spaceview__state
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_back_searching_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_back_searching_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_disable_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_disable_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_failed_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_failed_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_interrupt_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_interrupt_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_off_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_off_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_parkin_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_parkin_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_parkout_preprocess_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_parkout_preprocess_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_parkout_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_parkout_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_rads_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_rads_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_remote_parkin_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_remote_parkin_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_remote_summon_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_remote_summon_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_run_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_run_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_searching_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_searching_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_standby_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_standby_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_wait_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state/apalogic_wait_state.h"
)
source_group("controller\\spaceview\\apa\\state" FILES ${controller__spaceview__state})

set(controller__spaceview__avm__event_trigger
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_cal_event_tirgger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_cal_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_cco_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_cco_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_assist_wash_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_assist_wash_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_assist_wheel_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_assist_wheel_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_default_2d_event_tirgger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_default_2d_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_default_3d_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_full_default_3d_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_obstacle_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_obstacle_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_on_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_on_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_standby_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_standby_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_turnon_event_tirgger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_avm_turnon_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_event_trigger.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_event_trigger.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/event_trigger/spaceview_event_trigger_def.h"
)
source_group("controller\\spaceview\\avm\\event_trigger" FILES ${controller__spaceview__avm__event_trigger})

set(controller__spaceview__avm__hsm
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/hsm/spaceview_sys_state_machine.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/hsm/spaceview_sys_state_machine.h"
)
source_group("controller\\spaceview\\avm\\hsm" FILES ${controller__spaceview__avm__hsm})

set(controller__spaceview__avm__state
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_cal_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_cal_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_cco_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_cco_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_full_assist_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_full_assist_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_full_assist_wash_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_full_assist_wash_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_full_assist_wheel_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_full_assist_wheel_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_full_default_2d_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_full_default_2d_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_full_default_3d_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_full_default_3d_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_full_default_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_full_default_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_full_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_full_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_obstacle_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_obstacle_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_on_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_on_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_standby_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_standby_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_turnon_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/avm/state/avm_turnon_state.h"
)
source_group("controller\\spaceview\\avm\\state" FILES ${controller__spaceview__avm__state})

set(controller__spaceview__havp__event_trigger
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/event_trigger/event_trigger_comm_def.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_buildingmap_event_trigger.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_buildingmap_event_trigger.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_event_trigger.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_event_trigger.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_off_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_off_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_parkin_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_parkin_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_passtate_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_passtate_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_searching_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_searching_event_trigger_logic.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_standby_event_trigger_logic.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/event_trigger/spaceview_havp_standby_event_trigger_logic.cpp"
)
source_group("controller\\spaceview\\havp\\event_trigger" FILES ${controller__spaceview__havp__event_trigger})

set(controller__spaceview__havp__hsm
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/hsm/havp_state_machine.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/hsm/havp_state_machine.h"
)
source_group("controller\\spaceview\\havp\\hsm" FILES ${controller__spaceview__havp__hsm})

set(controller__spaceview__havp__state
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_buildingmap_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_buildingmap_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_failed_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_failed_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_off_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_off_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_parkin_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_parkin_state.h" 
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_passtate_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_passtate_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_run_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_run_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_searching_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_searching_state.h"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_standby_state.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/havp/state/spaceview_havp_standby_state.h"
)
source_group("controller\\spaceview\\havp\\state" FILES ${controller__spaceview__havp__state})

set(fw_adaptor
    "${HMI_SPAVEVIEW_PATH}/src/fw_adaptor/launcher.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/fw_adaptor/launcher.h"
)
source_group("fw_adaptor" FILES ${fw_adaptor})

set(model
    "${HMI_SPAVEVIEW_PATH}/src/model/database.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/model/database.h"
    "${HMI_SPAVEVIEW_PATH}/src/model/database_def.h"
)
source_group("model" FILES ${model})

set(model__spaceview
    "${HMI_SPAVEVIEW_PATH}/src/model/spaceview/spaceview_database.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/model/spaceview/spaceview_database.h"
)
source_group("model\\spaceview" FILES ${model__spaceview})

set(model__spaceview__jsonrw
    "${HMI_SPAVEVIEW_PATH}/src/model/spaceview/jsonrw/spaceview_jsonrw.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/model/spaceview/jsonrw/spaceview_jsonrw.h"
)
source_group("model\\spaceview\\jsonrw" FILES ${model__spaceview__jsonrw})

set(model__spaceview__parklot
    "${HMI_SPAVEVIEW_PATH}/src/model/spaceview/parklot/spaceview_parklot.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/model/spaceview/parklot/spaceview_parklot.h"
)
source_group("model\\spaceview\\parklot" FILES ${model__spaceview__parklot})

set(view
    "${HMI_SPAVEVIEW_PATH}/src/view/intfs_view_manager.h"
    "${HMI_SPAVEVIEW_PATH}/src/view/view.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/view/view.h"
    "${HMI_SPAVEVIEW_PATH}/src/view/view_def.h"
)
source_group("view" FILES ${view})

set(view__spaceview
    "${HMI_SPAVEVIEW_PATH}/src/view/spaceview/spaceview_avm_view.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/view/spaceview/spaceview_avm_view.h"
    "${HMI_SPAVEVIEW_PATH}/src/view/spaceview/spaceview_view_def.h"
    "${HMI_SPAVEVIEW_PATH}/src/view/spaceview/spaceview_view_manager.cpp"
    "${HMI_SPAVEVIEW_PATH}/src/view/spaceview/spaceview_view_manager.h"
)
source_group("view\\icu3" FILES ${view__spaceview})

set(ALL_FILES
    ${controller}
    ${controller__spaceview}
    ${controller__spaceview__event_trigger}
    ${controller__spaceview__hsm}
    ${controller__spaceview__state}
    ${controller__spaceview__avm__event_trigger}
    ${controller__spaceview__avm__hsm}
    ${controller__spaceview__avm__state}
    ${controller__spaceview__havp__event_trigger}
    ${controller__spaceview__havp__hsm}
    ${controller__spaceview__havp__state}
    ${fw_adaptor}
    ${model}
    ${model__spaceview}
    ${model__spaceview__jsonrw}
    ${model__spaceview__parklot}
    ${view}
    ${view__spaceview}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${COMM_PATH}/source/utility/state_machine/hsm"
	"${COMM_PATH}/source/interface"
        "${COMM_PATH}/source/interface/hmi/hmihub"
        "${COMM_PATH}/source/interface/cnn"
        "${COMM_PATH}/source/interface/common"
        "${COMM_PATH}/source/utility"
        "${COMM_PATH}/source/utility/avm"
        "${COMM_PATH}/source/interface/avm"
        "${COMM_PATH}/source/utility/dim3"
        "${COMM_PATH}/source/utility/vehmdl"
        "${COMM_PATH}/source/interface/algo"
        "${COMM_PATH}/source/interface/smc"
        "${COMM_PATH}/source/interface/cv"
        "${COMM_PATH}/source/interface/cuda"
        "${COMM_PATH}/source/interface/math"
        "${COMM_PATH}/source/interface/gpu3d"
        "${COMM_PATH}/source/interface/ffmpeg"
        "${COMM_PATH}/source/utility/mmr"
        "${COMM_PATH}/source/utility/pk_common"
        "${COMM_PATH}/thirdparty/rapidjson/include/rapidjson"
        "${COMM_PATH}/source/utility/tracker"
        "${COMM_PATH}/thirdparty/cpptime/"
        "${COMM_PATH}/source/interface/iogateway"
        "${THIRD_PARTY_LIB_PATH}/jsoncpp/include"
        "${COMM_PATH}/source/interface/websocket"
        "${COMM_PATH}/source/interface/avpmap" #need ?
        "${HMI_SPAVEVIEW_PATH}/"
        "${HMI_SPAVEVIEW_PATH}/src"
        "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/event_trigger"
        "${HMI_SPAVEVIEW_PATH}/src/controller/spaceview/apa/state"
        "${AVM_ICU3_PATH}/include"
        "${FW_SDK_PATH}/service/communication/can/src/can_parser/dbc"
        "${HMI_SPAVEVIEW_PATH}/src/model/spaceview/jsonrw"
         #"${HMI}/graphic_engine/source/display/module/system_manager" #careful 
         "${HMI}/graphic_engine/source/utility/PowerVR_SDK/SDK_2019_R1.1/include" #careful 
         "${HMI}/graphic_engine/include"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
	${HMI_SPAVEVIEW_PATH}/src/
	${HMI_SPAVEVIEW_PATH}/src/model/sapceview
	 
 

)

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${${PROJECT_NAME}_CXX_FLAGS} -D_HMI_ -D_GEAR_MSG_TYPE_ -D_ENABLE_AVM_")

if(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -D_USRDLL -D_MBCS")
endif()


################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
	${OUTPUT_PATH}
	${${PROJECT_NAME}_link_directories}
	#${COMM_PATH}/thirdparty/protobuf-3.11.4_linux/lib
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "hmi/HMI")
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES}
			${${PROJECT_NAME}_link_libraries}       
)
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





#target_link_libraries(comm PRIVATE ${LIBRARIES})
