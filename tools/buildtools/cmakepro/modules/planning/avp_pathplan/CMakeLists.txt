project(avp_pathplan)

################################################################################
# Source groups
################################################################################

set(algo_core__path_follow
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow/lag_filter.h"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow/path_follow_core.cpp"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow/path_follow_core.h"
)
source_group("algo_core\\path_follow" FILES ${algo_core__path_follow})

set(algo_core__path_follow_lib__RearWheelPathTracker
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/RearWheelTracker/link_list.cpp"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/RearWheelTracker/link_list.h"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/RearWheelTracker/node.cpp"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/RearWheelTracker/node.h"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/RearWheelTracker/RearWheelPathTracker.cpp"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/RearWheelTracker/RearWheelPathTracker.h"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/RearWheelTracker/RearWheelPathTracker_CommDefs.h"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/RearWheelTracker/trajectory_analyzer.cpp"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/RearWheelTracker/trajectory_analyzer.h"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/RearWheelTracker/vector_2d.cpp"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/RearWheelTracker/vector_2d.h"
)
source_group("algo_core\\path_follow_lib\\RearWheelPathTracker" FILES ${algo_core__path_follow_lib__RearWheelPathTracker})

set(algo_core__path_follow_lib__lib_core
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/lib_core/CPathFollowAlgoBase.cpp"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/lib_core/CPathFollowAlgoBase.h"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/lib_core/CPathFollowStanly.cpp"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/lib_core/CPathFollowStanly.h"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/lib_core/CruiseSpeedControl.cpp"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/lib_core/CruiseSpeedControl.h"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/lib_core/First_Order_Lag_filter.cpp"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/lib_core/First_Order_Lag_filter.h"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/lib_core/pathfollow_comm_typedef.h"
)
source_group("algo_core\\path_follow_lib\\lib_core" FILES ${algo_core__path_follow_lib__lib_core})

set(algo_core__path_follow_lib__lib_interface
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/lib_interface/trajectory_path_follow_data_struct.h"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/lib_interface/trajectory_path_follow_interface.cpp"
    "${AVP_PATHPLAN_PATH}/source/algo_core/path_follow_lib/lib_interface/trajectory_path_follow_interface.h"
)
source_group("algo_core\\path_follow_lib\\lib_interface" FILES ${algo_core__path_follow_lib__lib_interface})


set(algo_interface
    "${AVP_PATHPLAN_PATH}/source/algo_interface/pathfollow_algo_interface.cpp"
    "${AVP_PATHPLAN_PATH}/source/algo_interface/pathfollow_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${AVP_PATHPLAN_PATH}/../../common/comm/source/interface/algo/pathfollow_embed_interface.h"
    "${AVP_PATHPLAN_PATH}/source/spaceos_interface/pathfollow_spaceos_interface.cpp"
    "${AVP_PATHPLAN_PATH}/source/spaceos_interface/pathfollow_spaceos_interface.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${algo_core__path_follow}
    ${algo_core__path_follow_lib__RearWheelPathTracker}
    ${algo_core__path_follow_lib__lib_core}
    ${algo_core__path_follow_lib__lib_interface}
    ${algo_interface}
    ${spaceos_interface}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/math;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/thirdparty/avpmap/interface;"
        "${COMM_PATH}/thirdparty/avpmap/source;"
        "${AVP_PATHPLAN_PATH}/source"
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
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "planning")

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
target_compile_definitions(${PROJECT_NAME} PRIVATE  "_WINDLL;MODULER_EXPORTS;OPENCV=1;_CRT_SECURE_NO_WARNINGS;_CRT_NONSTDC_NO_DEPRECATE;SPOS_WIN;_LOG_AVP_PATHFOLLOW_;_LOG_PATH_EXPORT_INTERVAL_=20;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE  "")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Oi;
                        /Gy;
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
                        /DEBUG:FULL;
                        /SUBSYSTEM:CONSOLE
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
    frameworkbase
)
