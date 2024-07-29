project(routing)

################################################################################
# Source groups
################################################################################
set(header
    "${ROUTING_PATH}/source/core/routing.h"
    "${ROUTING_PATH}/source/fw_adaptor/fw_routing.h"
)
source_group("头文件" FILES ${header})

set(src
    "${ROUTING_PATH}/source/core/routing.cpp"
    "${ROUTING_PATH}/source/fw_adaptor/fw_routing.cpp"
)
source_group("源文件" FILES ${src})

set(ALL_FILES
    ${header}
    ${src}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/utility/dim3;"
        "${ROUTING_PATH}/source;"
        "${COMM_PATH}/source/interface/avpmap;"
        "${COMM_PATH}/source/interface/algo"
        ${${PROJECT_NAME}_include_directories}
        ${platform_opencv_include_directories}
)

################################################################################
# Target
################################################################################
set(LIBRARIES
    sp_comm
    frameworkbase
    mapservice
    ${${PROJECT_NAME}_link_libraries}
)

link_directories(${${PROJECT_NAME}_link_directories})
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "planning")


################################################################################
# Compile definitions
################################################################################

target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "xREVERSE_SUMMON;NDEBUG;_CONSOLE;MODULER_EXPORTS;SPOS_WIN;_PLANNING_;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "")
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
                        /Gy;
                        /permissive-;
                        /sdl;
                        /W3;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                    /OPT:REF;
                    /OPT:ICF;
                    /INCREMENTAL:NO
                    /DEBUG;
                    /SUBSYSTEM:CONSOLE
                    )
endif()

################################################################################
# Dependencies
################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
    frameworkbase
    mapservice
)