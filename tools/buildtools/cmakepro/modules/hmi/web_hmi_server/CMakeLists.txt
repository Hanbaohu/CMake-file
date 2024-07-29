project(web_hmi_server)

################################################################################
# Source groups
################################################################################
set(Headers
    "${WEB_HMI_SERVER_PATH}/include/web_hmi_server.h"
)
source_group("Headers" FILES ${Headers})

set(Sources
    "${WEB_HMI_SERVER_PATH}/src/web_hmi_server.cpp"
)
source_group("Sources" FILES ${Sources})

set(ALL_FILES
    ${Headers}
    ${Sources}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${WEB_HMI_SERVER_PATH}/include;"
    
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/thirdparty/boost_1_73_0;"
    "${COMM_PATH}/thirdparty/websocketpp;"
    "${COMM_PATH}/thirdparty/jsoncpp/include;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/thirdparty/opencv300/include;"
    "${COMM_PATH}/thirdparty/opencv300/include/opencv2;"
    "${COMM_PATH}/thirdparty/opencv300/include/opencv;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/algo"

	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
	${platform_launcher_include_directories}
)

################################################################################
# Target
################################################################################
set(LIBRARIES
    comm
    frameworkbase
    ${${PROJECT_NAME}_link_libraries}
)

link_directories(${${PROJECT_NAME}_link_directories})
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "hmi")

################################################################################
# Compile definitions
################################################################################

target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "NDEBUG;MODULER_EXPORTS;NETWORKSERVICE_EXPORTS;_WINDOWS;_USRDLL;SPOS_WIN;_CONSOLE;WIN32_LEAN_AND_MEAN;_WINSOCK_DEPRECATED_NO_WARNINGS;_CRT_SECURE_NO_WARNINGS;OPENCV=1")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /MD;
                        /GL-;
                        /Od;
                        /Oi;
                        /Gy;
                        /Zp8;
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
                        /SUBSYSTEM:CONSOLE
						)
endif()

################################################################################
# Dependencies
################################################################################
add_dependencies(${PROJECT_NAME}
    comm
    frameworkbase
    opencv_service
)