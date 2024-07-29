project(network_connector)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_datatypedef.h"
)
source_group("" FILES ${no_group_source_files})

set(algo_core__cloud_connector__avp
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/cloud_connector/avp/cloud_connector.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/cloud_connector/avp/cloud_connector.h"
)
source_group("algo_core\\cloud_connector\\avp" FILES ${algo_core__cloud_connector__avp})

set(algo_core__rsu_connector
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_jshelper/rsu_jshelper.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_jshelper/rsu_jshelper.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_main/rsu_connector.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_main/rsu_connector.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_main/rsu_dataupdate.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_parse/rsu_parse.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_parse/rsu_parse.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_parse/rsu_parse_cmddata.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_parse/rsu_parse_cmddata.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_parse/rsu_parse_obstacledata.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_parse/rsu_parse_obstacledata.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_parse/rsu_parse_posdata.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_parse/rsu_parse_posdata.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_parse/rsu_parse_routedata.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_parse/rsu_parse_routedata.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_send/rsu_msgsend.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_send/rsu_msgsend.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_send/rsu_rcvsend.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_send/rsu_rcvsend.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_send/rsu_sender.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_send/rsu_sender.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_transformer/rsu_data_transformer.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_transformer/rsu_data_transformer.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_transformer/tinyosm.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_transformer/tinyosm.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_transformer/tinyosm_rsu_layer.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_transformer/tinyosm_rsu_layer.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_transformer/tinyxml2.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/rsu_connector/rsu_transformer/tinyxml2.h"
)
source_group("algo_core\\rsu_connector" FILES ${algo_core__rsu_connector})

set(algo_core__utils__kalman
    "${NETWORK_CONNECTOR_PATH}/../../common/comm/source/utility/tracker/kalman1D.cpp"
    "${NETWORK_CONNECTOR_PATH}/../../common/comm/source/utility/tracker/kalman1D.h"
)
source_group("algo_core\\utils\\kalman" FILES ${algo_core__utils__kalman})

set(algo_core__websocket_connector
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/web_hc_app_data_adaptor.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/web_hc_app_data_adaptor.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/web_hmi_com.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/web_hmi_com.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/web_map_data_adaptor.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/web_map_data_adaptor.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/websocket_connector.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/websocket_connector.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/websocket_server.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/websocket_server.h"
)
source_group("algo_core\\websocket_connector" FILES ${algo_core__websocket_connector})

set(algo_core__websocket_connector__web_hmi_receiver
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/web_hmi_receiver/web_hmi_receiver.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/web_hmi_receiver/web_hmi_receiver.h"
)
source_group("algo_core\\websocket_connector\\web_hmi_receiver" FILES ${algo_core__websocket_connector__web_hmi_receiver})

set(algo_core__websocket_connector__web_hmi_server
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/web_hmi_server/web_hmi_server.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/web_hmi_server/web_hmi_server.h"
)
source_group("algo_core\\websocket_connector\\web_hmi_server" FILES ${algo_core__websocket_connector__web_hmi_server})

set(algo_interface
    "${NETWORK_CONNECTOR_PATH}/source/algo_interface/connector_intf.h"
    "${NETWORK_CONNECTOR_PATH}/source/algo_interface/connector_mgr.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/algo_interface/connector_mgr.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${NETWORK_CONNECTOR_PATH}/source/spaceos_interface/networkconnector.cpp"
    "${NETWORK_CONNECTOR_PATH}/source/spaceos_interface/networkconnector.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${no_group_source_files}
    ${algo_core__cloud_connector__avp}
    ${algo_core__rsu_connector}
    ${algo_core__utils__kalman}
    ${algo_core__websocket_connector}
    ${algo_core__websocket_connector__web_hmi_receiver}
    ${algo_core__websocket_connector__web_hmi_server}
    ${algo_interface}
    ${spaceos_interface}
)


################################################################################
# Include directories
################################################################################
include_directories(
        "${COMM_PATH}/thirdparty/boost_1_73_0;"
        "${COMM_PATH}/thirdparty/websocketpp;"
        "${COMM_PATH}/thirdparty/jsoncpp/include;"
        "${NETWORK_CONNECTOR_PATH}/include;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/interface/intrinsic_modeller;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/math;"
        "${COMM_PATH}/source/interface/ml;"
        "${NETWORK_CONNECTOR_PATH}/source;"
        "${COMM_PATH}/thirdparty/avpmap/interface;"
        "${COMM_PATH}/source/interface/app;"
        "${COMM_PATH}/source/interface/schedule;"
        "${COMM_PATH}/thirdparty/Eigen;"
        "${COMM_PATH}/source/interface/vehmdl;"
        "${COMM_PATH}/source/utility/vehmdl;"
        "${COMM_PATH}/source/interface/multiprocess;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/utility/sobject;"
        "${COMM_PATH}/thirdparty/jsoncpp/include;"
        "${COMM_PATH}/source/interface/hmi;"
        "${COMM_PATH}/source/utility/tracker;"
        "${FW_SDK_PATH}/service/opencv/include;"
        "${COMM_PATH}/source/interface/websocket;"
        "${NETWORK_CONNECTOR_PATH}/source/algo_interface;"
        "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/web_hmi_server;"
        "${NETWORK_CONNECTOR_PATH}/source/algo_core/websocket_connector/web_hmi_receiver"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)




################################################################################
# Target
################################################################################
set(LIBRARIES
    sp_comm
    frameworkbase
    opencv_service
    jsoncpp
    ${${PROJECT_NAME}_link_libraries}
)

link_directories(
	${${PROJECT_NAME}_link_directories})
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "v2x")

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "_HC1_CLIENT_;_NETWORK_CONNECTOR_;_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_WINDOWS;_USRDLL;SPOS_WIN;NETWORKCONNECTOR_EXPORTS;WIN32_LEAN_AND_MEAN;OPENCV=1;_CRT_NONSTDC_NO_WARNINGS;_P7_VIEW_;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "OPENCV=1;_UINIT_64_T_;_NETWORK_CONNECTOR_;_P7_VIEW_;_IPV4_ONLY_")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /GL-;
                        /Od;
                        /Oi;
                        /Gy;
                        /wd4819;
                        /wd4005
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
                    /SUBSYSTEM:WINDOWS
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
	frameworkbase
    opencv_service
)
