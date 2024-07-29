project(network_service)

################################################################################
# Source groups
################################################################################

set(data_manager
    "${FW_SDK_PATH}/service/network/src/data_manager/data_manager.cpp"
    "${FW_SDK_PATH}/service/network/src/data_manager/data_manager.h"
)
source_group("data_manager" FILES ${data_manager})

if (WIN32)
    set(file
        "${FW_SDK_PATH}/service/network/src/mqtt/network_service_client_mqtt.cpp"
        "${FW_SDK_PATH}/service/network/src/mqtt/network_service_server_mqtt.cpp"
        "${FW_SDK_PATH}/service/network/src/network_service.cpp"
        "${FW_SDK_PATH}/service/network/src/network_service_client_zmq.cpp"
        "${FW_SDK_PATH}/service/network/src/network_service_server_zmq.cpp"
    )
elseif (UNIX)
    set(file
        #"${FW_SDK_PATH}/service/network/src/network_service.cpp"
        "${FW_SDK_PATH}/service/network/src/network_service_client_zmq.cpp"
        "${FW_SDK_PATH}/service/network/src/network_service_server_zmq.cpp"
    )
endif()

source_group("源文件" FILES ${file})

set(__winSock
    "${FW_SDK_PATH}/service/network/src/socket/winSock/network_service_client_winSock.cpp"
    "${FW_SDK_PATH}/service/network/src/socket/winSock/network_service_server_winSock.cpp"
)
source_group("源文件\\winSock" FILES ${__winSock})

if (WIN32)
    set(ALL_FILES
        ${data_manager}
        ${file}
        ${__winSock}
    )
elseif (UNIX)
    set(ALL_FILES
        ${data_manager}
        ${file}
    )
endif()

################################################################################
# Include directories
################################################################################
include_directories(
    ${${PROJECT_NAME}_include_directories}
    "${FW_SDK_PATH}/service/memory/include;"
    "${FW_SDK_PATH}/config/include;"
    "${FW_BASE_PATH}/src/scheduler;"
    "${COMM_PATH}/source/interface;"
    "${FW_BASE_PATH}/src/common;"
    "${COMM_PATH}/source/interface/common;"
    "${FW_SDK_PATH}/service/network/src/data_manager/"
    "${FW_SDK_PATH}/adaptor/os/API/include"
    "${COMM_PATH}/source/interface/algo"
    "${FW_SDK_PATH}/service/network/include/winSock/"
    "${FW_SDK_PATH}/service/network/include/"
    "${COMM_PATH}/thirdparty/gtest/x64/include;"
    ${platform_opencv_include_directories}
)


################################################################################
# Target
################################################################################
link_directories(
    ${mqtt_link_directories}
    ${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/framework/service")

set(LIBRARIES
    memory_service
    ${${PROJECT_NAME}_link_libraries}
)

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE -D_WINSOCK_DEPRECATED_NO_WARNINGS -DMODULER_EXPORTS -DWIN32_LEAN_AND_MEAN -D_MBCS -DWIN64 -DNETWORKSERVICE_EXPORTS -D_WINDOWS -D_USRDLL)
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
    target_compile_options(${PROJECT_NAME} PRIVATE
                            /MP;
                            /GL-;
                            /Od;
                            /Oi;
                            /sdl-;
                            /Gy;
                            /Y-;
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
    memory_service
)


