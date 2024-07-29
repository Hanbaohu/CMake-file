project(avp_localplanner)

################################################################################
# Source groups
################################################################################

set(algo_core__helper
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/collision_checker.cpp"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/collision_checker_helper.h"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/coordinate_transfer_helper.cpp"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/coordinate_transfer_helper.h"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/display_helper.cpp"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/display_helper.h"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/math_helper.cpp"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/math_helper.h"
    "${AVP_LOCALPLANNER_PATH}/source/common/inc/Clothoid.h"
    "${AVP_LOCALPLANNER_PATH}/source/common/inc/cubic_spline_helper.h"
    "${AVP_LOCALPLANNER_PATH}/source/common/inc/polynomials.hpp"
    "${AVP_LOCALPLANNER_PATH}/source/common/src/Clothoid.cpp"
    "${AVP_LOCALPLANNER_PATH}/source/common/src/cubic_spline_helper.cpp"
    "${AVP_LOCALPLANNER_PATH}/source/common/src/polynomials.cpp"
)
source_group("algo_core\\helper" FILES ${algo_core__helper})

set(algo_core__main
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/plan_manager.cpp"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/plan_manager.h"
)
source_group("algo_core\\main" FILES ${algo_core__main})

set(algo_core__map
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/Iplan_map.h"
)
source_group("algo_core\\map" FILES ${algo_core__map})

set(algo_core__map__space_map
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/spaceos_map.cpp"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/spaceos_map.h"
)
source_group("algo_core\\map\\space_map" FILES ${algo_core__map__space_map})

set(algo_core__plan_method
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/Iplan_method.h"
)
source_group("algo_core\\plan_method" FILES ${algo_core__plan_method})

set(algo_core__plan_method__dynamic_programming_plan
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/dynamic_programming_plan.cpp"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/dynamic_programming_plan.h"
)
source_group("algo_core\\plan_method\\dynamic_programming_plan" FILES ${algo_core__plan_method__dynamic_programming_plan})

set(algo_core__plan_method__hybrid_Astar_plan
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/hybrid_A_star_plan.cpp"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/hybrid_A_star_plan.h"
    # "${AVP_LOCALPLANNER_PATH}/source/algo_core/hybrid_A_star_plan_tester.cpp"
    # "${AVP_LOCALPLANNER_PATH}/source/algo_core/hybrid_A_star_plan_tester.h"
)
source_group("algo_core\\plan_method\\hybrid_Astar_plan" FILES ${algo_core__plan_method__hybrid_Astar_plan})

set(algo_core__reference_line
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/reference_line.cpp"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/reference_line.h"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/reference_line_smoother.cpp"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/reference_line_smoother.h"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/reference_path_proc.cpp"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core/reference_path_proc.h"
)
source_group("algo_core\\reference_line" FILES ${algo_core__reference_line})

set(algo_interface
    "${AVP_LOCALPLANNER_PATH}/source/algo_interface/avp_path_plan_algo_interface.cpp"
    "${AVP_LOCALPLANNER_PATH}/source/algo_interface/avp_pathplan_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${AVP_LOCALPLANNER_PATH}/source/spaceos_interface/avp_pathplan_spaceos_interface.cpp"
    "${AVP_LOCALPLANNER_PATH}/source/spaceos_interface/avp_pathplan_spaceos_interface.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${no_group_source_files}
    ${algo_core__helper}
    ${algo_core__main}
    ${algo_core__map}
    ${algo_core__map__space_map}
    ${algo_core__plan_method}
    ${algo_core__plan_method__dynamic_programming_plan}
    ${algo_core__plan_method__hybrid_Astar_plan}
    ${algo_core__reference_line}
    ${algo_interface}
    ${spaceos_interface}
)


################################################################################
# Include directories
################################################################################
include_directories(
    "${AVP_LOCALPLANNER_PATH}/include;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/intrinsic_modeller;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/math;"
    "${COMM_PATH}/source/interface/cnn;"
    "${COMM_PATH}/source/interface/ml;"
    # "${COMM_PATH}/thirdparty/opencv410/include;"
    # "${COMM_PATH}/thirdparty/opencv410/include/opencv;"
    # "${COMM_PATH}/thirdparty/opencv410/include/opencv2;"
    "${COMM_PATH}/thirdparty/avpmap/interface;"
    "${COMM_PATH}/thirdparty/avpmap/source;"
    "${COMM_PATH}/source/interface/app;"
    "${COMM_PATH}/source/interface/schedule;"
    "${COMM_PATH}/thirdparty/Eigen;"
    "${COMM_PATH}/source/interface/vehmdl;"
    "${COMM_PATH}/source/interface/display;"
    "${COMM_PATH}/source/utility/vehmdl;"
    "${COMM_PATH}/source/interface/multiprocess;"
    "${COMM_PATH}/source/utility/dim3;"
    "${FW_SDK_PATH}/service/opencv/include;"
    "${COMM_PATH}/source/utility/synchronizer;"
    "${COMM_PATH}/thirdparty/Python37/include;"
    "${COMM_PATH}/thirdparty/Python37/Lib/site-packages/numpy/core/include;"
    "${AVP_LOCALPLANNER_PATH}/source/algo_core;"
    "${AVP_LOCALPLANNER_PATH}/source/algo_interface;"
    "${AVP_LOCALPLANNER_PATH}/source/spaceos_interface;"
    "${AVP_LOCALPLANNER_PATH}/source/common/inc;"
    "${COMM_PATH}/source/interface/avpmap;"
    "${COMM_PATH}/thirdparty/hastar/include;"
    "${COMM_PATH}/source/utility/pk_common;"
    "${COMM_PATH}/source/utility/lidar_common"

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
    libhastar
    ${${PROJECT_NAME}_link_libraries}
)
link_directories(
    "${COMM_PATH}/thirdparty/hastar/library"
    ${hastar_link_directories}
    ${${PROJECT_NAME}_link_directories}
    ${OUTPUT_PATH}
)
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "planning")

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "DEBUG_PATH_DRAW;USE_FRAMEWORK_CV_INTF;USE_STANDALONE_PATHPLAN;DEBUG_PATH_PROCESS;_AVP_LOCALPLANNER_;_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_WINDOWS;_USRDLL;_ON_WIN_;VIDEOCAPTURE_EXPORTS;HAVE_STRUCT_TIMESPEC;OPENCV=1;SPOS_WIN;NOMINMAX;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "DEBUG_PATH_DRAW;USE_STANDALONE_PATHPLAN;DEBUG_PATH_PROCESS;_AVP_LOCALPLANNER_;OPENCV=1;")
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
                        /MD;
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
