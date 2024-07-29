project(obu_adaptor)

set(CMAKE_CXX_STANDARD 11)
################################################################################
# Source groups
################################################################################

set(spaceos_interface
    "${OBU_ADAPTOR}/source/spaceos_interface/obu_adaptor_interface.cpp"
    "${OBU_ADAPTOR}/source/spaceos_interface/obu_adaptor_interface.h"

    "${OBU_ADAPTOR}/source/tcp_interface/tcp_server_interface.cpp"
    "${OBU_ADAPTOR}/source/tcp_interface/tcp_server_interface.h"

)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${spaceos_interface}
)

################################################################################
# Include directories
################################################################################
include_directories(

    "${OBU_ADAPTOR}/source/spaceos_interface/"
    "${OBU_ADAPTOR}/source/tcp_interface/"

    "${COMM_PATH}/source/interface/algo/"
    "${COMM_PATH}/source/interface/common/"
    
    "${COMM_PATH}/thirdparty/jsoncpp/include"

	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
)


################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
	${${PROJECT_NAME}_link_directories}
    "${COMM_PATH}/thirdparty/jsoncpp/arm64"
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "control")

set(LIBRARIES
    frameworkbase
    sp_comm
    c
    jsoncpp
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
