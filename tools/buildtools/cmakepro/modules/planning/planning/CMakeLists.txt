project(planning)

################################################################################
# Source groups
################################################################################
set(algo_core
    "${PLANNING_PATH}/source/algo_core/planning_algo_core.cpp"
    "${PLANNING_PATH}/source/algo_core/planning_algo_core.h"
)
source_group("algo_core" FILES ${algo_core})

set(algo_interface
    "${PLANNING_PATH}/source/algo_interface/planning_algo_interface.cpp"
    "${PLANNING_PATH}/source/algo_interface/planning_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${PLANNING_PATH}/source/spaceos_interface/planning_spaceos_interface.cpp"
    "${PLANNING_PATH}/source/spaceos_interface/planning_spaceos_interface.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${algo_core}
    ${algo_interface}
    ${spaceos_interface}
)


################################################################################
# Include directories
################################################################################
include_directories(
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/utility/dim3;"
        "${PLANNING_PATH}/source;"
        "${COMM_PATH}/source/interface/avpmap;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/utility/pk_common"
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
target_compile_definitions(${PROJECT_NAME} PRIVATE "_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_WINDOWS;_USRDLL;SPOS_WIN;VIDEOCAPTURE_EXPORTS;OPENCV=1;HAVE_STRUCT_TIMESPEC;XP_D20;_AVOID_DEBUG;_PF_;x_DEBUG_SHOW_;_SP_PK_PATHFOLLOW_;OPENCV400;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "_PLANNING_")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
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
                        /INCREMENTAL:NO;
                    /DEBUG;
                    /SUBSYSTEM:CONSOLE
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
