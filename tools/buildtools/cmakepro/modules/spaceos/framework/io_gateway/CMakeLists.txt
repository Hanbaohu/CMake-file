project(io_gateway)
    
################################################################################
# Source groups
################################################################################

source_group("" FILES ${no_group_source_files})

set(Action
    "${IOGATEWAY_PATH}/source/Action/ActionBase.cpp"
    "${IOGATEWAY_PATH}/source/Action/ActionBase.h"
    "${IOGATEWAY_PATH}/source/Action/ICU3Action.cpp"
    "${IOGATEWAY_PATH}/source/Action/ICU3Action.h"
    "${IOGATEWAY_PATH}/source/Action/SpAction.cpp"
    "${IOGATEWAY_PATH}/source/Action/SpAction.h"
)
source_group("Action" FILES ${Action})

set(CommunicationManager
    "${IOGATEWAY_PATH}/source/CommunicationManager/CommonComm/SpaceViewComm.cpp"
    "${IOGATEWAY_PATH}/source/CommunicationManager/CommonComm/SpaceViewComm.h"
    "${IOGATEWAY_PATH}/source/CommunicationManager/CommunicationInterface/CommunicationBase.cpp"
    "${IOGATEWAY_PATH}/source/CommunicationManager/CommunicationInterface/CommunicationBase.h"
    "${IOGATEWAY_PATH}/source/CommunicationManager/CommunicationInterface/CommunicationInterface.cpp"
    "${IOGATEWAY_PATH}/source/CommunicationManager/CommunicationInterface/CommunicationInterface.h"
    "${IOGATEWAY_PATH}/source/CommunicationManager/CommunicationInterface/CommunicationManager.cpp"
    "${IOGATEWAY_PATH}/source/CommunicationManager/CommunicationInterface/CommunicationManager.h"
    "${IOGATEWAY_PATH}/source/CommunicationManager/CommunicationInterface/CommunicationProxy.cpp"
    "${IOGATEWAY_PATH}/source/CommunicationManager/CommunicationInterface/CommunicationProxy.h"
)
source_group("CommunicationManager" FILES ${CommunicationManager})

set(DatabankManager
    "${IOGATEWAY_PATH}/source/DatabankManager/CommonCallback/ICU3LogicCallback.cpp"
    "${IOGATEWAY_PATH}/source/DatabankManager/CommonCallback/ICU3LogicCallback.h"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/CallbackBase.cpp"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/CallbackBase.h"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/CallbackInterface.cpp"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/CallbackInterface.h"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/DatabankBase.cpp"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/DatabankBase.h"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/DatabankInterface.cpp"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/DatabankInterface.h"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/DataBankManager.cpp"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/DataBankManager.h"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/DatabankProxy.cpp"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/DatabankProxy.h"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/InsideCallback.cpp"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/InsideCallback.h"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/ObserversOfCb.cpp"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface/ObserversOfCb.h"
)
source_group("DatabankManager" FILES ${DatabankManager})

set(IOCommon
    "${IOGATEWAY_PATH}/source/IOCommon/IOCommon.cpp"
    "${IOGATEWAY_PATH}/source/IOCommon/IOCommon.h"
)
source_group("IOCommon" FILES ${IOCommon})

set(ProtocalManager
    "${IOGATEWAY_PATH}/source/ProtocalManager/GWM_ICU3/EnumMapICU3/ICU3EnumMap.cpp"
    "${IOGATEWAY_PATH}/source/ProtocalManager/GWM_ICU3/EnumMapICU3/ICU3EnumMap.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/GWM_ICU3/SpaceViewProtocalICU3.cpp"
    "${IOGATEWAY_PATH}/source/ProtocalManager/GWM_ICU3/SpaceViewProtocalICU3.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/ProtocalInterface/ProtocalBase.cpp"
    "${IOGATEWAY_PATH}/source/ProtocalManager/ProtocalInterface/ProtocalBase.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/ProtocalInterface/ProtocalInterface.cpp"
    "${IOGATEWAY_PATH}/source/ProtocalManager/ProtocalInterface/ProtocalInterface.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/ProtocalInterface/ProtocalManager.cpp"
    "${IOGATEWAY_PATH}/source/ProtocalManager/ProtocalInterface/ProtocalManager.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/ProtocalInterface/ProtocalProxy.cpp"
    "${IOGATEWAY_PATH}/source/ProtocalManager/ProtocalInterface/ProtocalProxy.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/SpaceOS_Master/EnumMapMaster/SPEnumMap.cpp"
    "${IOGATEWAY_PATH}/source/ProtocalManager/SpaceOS_Master/EnumMapMaster/SPEnumMap.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/SpaceOS_Master/SpaceViewProtocal.cpp"
    "${IOGATEWAY_PATH}/source/ProtocalManager/SpaceOS_Master/SpaceViewProtocal.h"
)
source_group("ProtocalManager" FILES ${ProtocalManager})

set(SpaceosInterface
    "${IOGATEWAY_PATH}/source/SpaceOSInterface/io_gateway.cpp"
    "${IOGATEWAY_PATH}/source/SpaceOSInterface/io_gateway.h"
)
source_group("SpaceosInterface" FILES ${SpaceosInterface})

set(proto__GWM_3_11
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Common/PB/havp_common.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Common/PB/havp_common.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Common/PB/havp_info.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Common/PB/havp_info.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Common/PB/havp_map.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Common/PB/havp_map.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Common/PB/havp_vehicle.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Common/PB/havp_vehicle.pb.h"
    # "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Common/PB/sp_BuilderEvent.pb.cc"
    # "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Common/PB/sp_BuilderEvent.pb.h"
    # "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Common/PB/sp_udp_downward_test.pb.cc"
    # "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Common/PB/sp_udp_downward_test.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Win/PB/car_info.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Win/PB/car_info.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Win/PB/icu30_ble.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Win/PB/icu30_ble.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Win/PB/icu30_hut.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Win/PB/icu30_hut.pb.h"
)
source_group("proto\\GWM_3_11" FILES ${proto__GWM_3_11})

set(proto__Master_3_11
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/Config_Version.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/Config_Version.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_ble.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_ble.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_BuilderEvent.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_BuilderEvent.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_car_info.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_car_info.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_common.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_common.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_debug_info.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_debug_info.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_havp_common.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_havp_common.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_havp_info.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_havp_info.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_havp_map.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_havp_map.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_havp_vehicle.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_havp_vehicle.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_header.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_header.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_hm_header.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_hm_header.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_hut.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_hut.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_radar.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_radar.pb.h"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_udp_downward_test.pb.cc"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB/sp_udp_downward_test.pb.h"
)
source_group("proto\\Master_3_11" FILES ${proto__Master_3_11})

set(tester
    "${IOGATEWAY_PATH}/tester/Tester.cpp"
    "${IOGATEWAY_PATH}/tester/Tester.h"
)
source_group("tester" FILES ${tester})

set(header
    "${COMM_PATH}/source/interface/algo/apa_logic_interface.h"
    "${COMM_PATH}/source/interface/algo/sp_pk_hmi_spaceview_interface.h"
    "${COMM_PATH}/source/interface/common/log.h"
    "${COMM_PATH}/source/interface/common/special_data_v71.h"
    "${COMM_PATH}/source/interface/iogateway/icu3_interface2IO.h"
    "${COMM_PATH}/source/interface/iogateway/iogateway_intfs.h"
    "${COMM_PATH}/thirdparty/cpptime/cpptime.h"
)
source_group("头文件" FILES ${header})

set(ALL_FILES
    ${no_group_source_files}
    ${Action}
    ${CommunicationManager}
    ${DatabankManager}
    ${IOCommon}
    ${ProtocalManager}
    ${SpaceosInterface}
    ${proto__GWM_3_11}
    ${proto__Master_3_11}
    ${tester}
    ${header}
)


################################################################################
# Include directories
################################################################################
include_directories(
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/iogateway;"
    "${COMM_PATH}/thirdparty/zmq/include;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/interface/tools;"
    "${COMM_PATH}/source/interface;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/utility/pk_common;"
    "${COMM_PATH}/thirdparty/cpptime;"
    "${COMM_PATH}/thirdparty/protobuf-3.11.4/include;"
    "${IOGATEWAY_PATH}/source/Action;"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/Master_3_11/PB;"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Common/PB;"
    "${IOGATEWAY_PATH}/source/ProtocalManager/proto/GWM_3_11/Win/PB;"
    "${IOGATEWAY_PATH}/source/ProtocalManager/GWM_ICU3;"
    "${IOGATEWAY_PATH}/source/ProtocalManager/GWM_ICU3/EnumMapICU3;"
    "${IOGATEWAY_PATH}/source/ProtocalManager/ProtocalInterface;"
    "${IOGATEWAY_PATH}/source/ProtocalManager/SpaceOS_Master;"
    "${IOGATEWAY_PATH}/source/ProtocalManager/SpaceOS_Master/EnumMapMaster;"
    "${IOGATEWAY_PATH}/source/CommunicationManager/CommonComm;"
    "${IOGATEWAY_PATH}/source/CommunicationManager/CommunicationInterface;"
    "${IOGATEWAY_PATH}/source/CommunicationManager/SpaceOS_Master;"
    "${IOGATEWAY_PATH}/source/DatabankManager/CommonCallback;"
    "${IOGATEWAY_PATH}/source/DatabankManager/DBInterface;"
    "${IOGATEWAY_PATH}/source/IOCommon;"
    "${IOGATEWAY_PATH}/source/SpaceOSInterface"

    "${FW_SDK_PATH}/service/network/include;"
    "${FW_SDK_PATH}/adaptor/os/API/include;"
     ${${PROJECT_NAME}_include_directories}
)

################################################################################
# Target
################################################################################
set(LIBRARIES
    sp_comm
    frameworkbase
    network_service
    ${${PROJECT_NAME}_link_libraries}
)

link_directories(${${PROJECT_NAME}_link_directories})
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/framework")

################################################################################
# Compile definitions
################################################################################

target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE "_IO_GATEWAY_;NDEBUG;IOGATEWAY_EXPORTS;_WINDOWS;_USRDLL;_CRT_NONSTDC_NO_DEPRECATE;_CRT_SECURE_NO_WARNINGS;SPOS_WIN;MODULER_EXPORTS")
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE "")
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
                        /MD;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                        /OPT:REF;
                        /OPT:ICF;
                        /INCREMENTAL:NO;
                        /DEBUG;
                        /SUBSYSTEM:WINDOWS;
                        )
endif()

################################################################################
# Dependencies
################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
    frameworkbase
    network_service
)