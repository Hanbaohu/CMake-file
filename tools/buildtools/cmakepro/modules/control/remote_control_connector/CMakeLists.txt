project(remote_control_connector)

set(CMAKE_CXX_STANDARD 17)
################################################################################
# Source groups
################################################################################
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface


    "${REMOTE_CONTROL_CONNECTOR}/source/zmq/zmq_interface.cpp"
    "${REMOTE_CONTROL_CONNECTOR}/source/zmq/zmq_interface.h"

    "${REMOTE_CONTROL_CONNECTOR}/source/remote_control_connector.cpp"
    "${REMOTE_CONTROL_CONNECTOR}/source/remote_control_connector.h"

)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${algo_interface}
    ${spaceos_interface}
)

################################################################################
# Include directories
################################################################################
include_directories(

    "${REMOTE_CONTROL_CONNECTOR}/source/"
    "${REMOTE_CONTROL_CONNECTOR}/source/zmq/"

    "${COMM_PATH}/source/utility/pk_common/"
    "${COMM_PATH}/source/interface/algo/"
    "${COMM_PATH}/source/interface/common/"
    ${APP_MODULE_DIR}/third_parties/zmq/include/
    "${COMM_PATH}/thirdparty/zmq/include/"

    "${COMM_PATH}/thirdparty/cpptime"
    "${COMM_PATH}/source/interface/"
    "${COMM_PATH}/source/utility/dim3/"
    
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
)


################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
	${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "control")

set(LIBRARIES
    frameworkbase
    sp_comm
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE   "")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE   "")
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

target_compile_options(${PROJECT_NAME} PRIVATE -fpermissive)

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    frameworkbase
    sp_comm
)
