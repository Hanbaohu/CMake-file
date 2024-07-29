project(SP_PK_PathFollow)

################################################################################
# Source groups
################################################################################

set(algo_core__algomath__helper
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/First_Order_Lag_filter_c.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/First_Order_Lag_filter_c.h"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/hybrid_rs_clothoid_curve.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/hybrid_rs_clothoid_curve.h"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute_helper.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute_helper.h"
)
source_group("algo_core\\algomath\\helper" FILES ${algo_core__algomath__helper})

set(algo_core__algomath__predict
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PathFollow_Predict.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PathFollow_Predict.h"
)
source_group("algo_core\\algomath\\predict" FILES ${algo_core__algomath__predict})

set(algo_core__algomath__replan
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute_ParaParkoutPathPaln.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute_ParaParkoutPathPaln.h"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute_Replan.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute_Replan.h"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute_ReplanCore.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute_ReplanCore.h"
)
source_group("algo_core\\algomath\\replan" FILES ${algo_core__algomath__replan})

set(algo_core__main
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute.h"
)
source_group("algo_core\\main" FILES ${algo_core__main})

set(algo_core__process__control
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/pathfollow_control.c"
)
source_group("algo_core\\process\\control" FILES ${algo_core__process__control})

set(algo_core__process__output
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/pathfollow_output.c"
)
source_group("algo_core\\process\\output" FILES ${algo_core__process__output})

set(algo_core__process__parking
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/pathfollow_parking_in.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/pathfollow_parking_out.c"
)
source_group("algo_core\\process\\parking" FILES ${algo_core__process__parking})

set(algo_core__process__parking__pk_funcs
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/pk_fine_tune_eps.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/pk_pathfollow_mainctrl.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/pk_slotupdate_replan.c"
)
source_group("algo_core\\process\\parking\\pk_funcs" FILES ${algo_core__process__parking__pk_funcs})

set(algo_core__process__parking__pk_funcs__inner_funcs
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute_inner.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute_inner.h"
)
source_group("algo_core\\process\\parking\\pk_funcs\\inner_funcs" FILES ${algo_core__process__parking__pk_funcs__inner_funcs})

set(algo_core__process__parking__pk_funcs__pf_corelogic
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/pf_corelogic.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/pf_corelogic.h"
)
source_group("algo_core\\process\\parking\\pk_funcs\\pf_corelogic" FILES ${algo_core__process__parking__pk_funcs__pf_corelogic})

set(algo_core__process__parking__pk_funcs__pf_corelogic__logic_inner
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute_paracalc_init.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute_paracalc_pathctrl.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute_paracalc_predict.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute_paracalc_replan.c"
)
source_group("algo_core\\process\\parking\\pk_funcs\\pf_corelogic\\logic_inner" FILES ${algo_core__process__parking__pk_funcs__pf_corelogic__logic_inner})

set(algo_core__process__patch
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PK_PathExecute_patch.c"
)
source_group("algo_core\\process\\patch" FILES ${algo_core__process__patch})

set(algo_core__process__pathinit
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/pathfollow_init.c"
)
source_group("algo_core\\process\\pathinit" FILES ${algo_core__process__pathinit})

set(algo_core__process__reset
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/pathfollow_reset.c"
)
source_group("algo_core\\process\\reset" FILES ${algo_core__process__reset})

set(algo_core__process__scenefusion
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/pathfollow_scenefusion.c"
)
source_group("algo_core\\process\\scenefusion" FILES ${algo_core__process__scenefusion})

set(algo_core__process__state
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/pathfollow_module_state.c"
)
source_group("algo_core\\process\\state" FILES ${algo_core__process__state})

set(algo_core__support__calib
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PF_CalibParam.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PF_CalibParam.h"
)
source_group("algo_core\\support\\calib" FILES ${algo_core__support__calib})

set(algo_core__support__debugerr
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PF_debugerr.c"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_core/PF_debugerr.h"
)
source_group("algo_core\\support\\debugerr" FILES ${algo_core__support__debugerr})

set(algo_interface
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_interface/ism_apa_comm.cpp"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_interface/ism_apa_comm.h"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_interface/ism_curve.h"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_interface/ism_sim_car.h"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_interface/ism_sim_datatype.h"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_interface/sp_pk_pathfollow_algo_interface.cpp"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_interface/sp_pk_pathfollow_algo_interface.h"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_interface/sp_pk_pathfollow_pf_debug_display.cpp"
    "${SP_PK_PATHFOLLOW_PATH}/source/algo_interface/sp_pk_pathfollow_pf_debug_display.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${SP_PK_PATHFOLLOW_PATH}/source/spaceos_interface/DebugShow.cpp"
    "${SP_PK_PATHFOLLOW_PATH}/source/spaceos_interface/DebugShow.h"
    "${SP_PK_PATHFOLLOW_PATH}/source/spaceos_interface/pathfollow_spaceos_ioadaptor.cpp"
    "${SP_PK_PATHFOLLOW_PATH}/source/spaceos_interface/sp_pk_pathfollow_spaceos_debug.cpp"
    "${SP_PK_PATHFOLLOW_PATH}/source/spaceos_interface/sp_pk_pathfollow_spaceos_interface.cpp"
    "${SP_PK_PATHFOLLOW_PATH}/source/spaceos_interface/sp_pk_pathfollow_spaceos_interface.h"
    "${SP_PK_PATHFOLLOW_PATH}/source/spaceos_interface/sp_pk_pathfollow_spaceos_sendos.cpp"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(spaceos_interface__clcTest
    "${SP_PK_PATHFOLLOW_PATH}/source/spaceos_interface/clctest/test_main.cpp"
    "${SP_PK_PATHFOLLOW_PATH}/source/spaceos_interface/clctest/test_main.h"
)
source_group("spaceos_interface\\clcTest" FILES ${spaceos_interface__clcTest})

set(ALL_FILES
    ${algo_core__algomath__helper}
    ${algo_core__algomath__predict}
    ${algo_core__algomath__replan}
    ${algo_core__main}
    ${algo_core__process__control}
    ${algo_core__process__output}
    ${algo_core__process__parking}
    ${algo_core__process__parking__pk_funcs}
    ${algo_core__process__parking__pk_funcs__inner_funcs}
    ${algo_core__process__parking__pk_funcs__pf_corelogic}
    ${algo_core__process__parking__pk_funcs__pf_corelogic__logic_inner}
    ${algo_core__process__patch}
    ${algo_core__process__pathinit}
    ${algo_core__process__reset}
    ${algo_core__process__scenefusion}
    ${algo_core__process__state}
    ${algo_core__support__calib}
    ${algo_core__support__debugerr}
    ${algo_interface}
    ${spaceos_interface}
    ${spaceos_interface__clcTest}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${SP_PK_PATHFOLLOW_PATH}/include;"
        "${SP_PK_PATHFOLLOW_PATH}/include/common;"
        "${SP_PK_PATHFOLLOW_PATH}/source/utility/DeltaMovements;"
        "${SP_PK_PATHFOLLOW_PATH}/source/utility/Heuristics;"
        "${SP_PK_PATHFOLLOW_PATH}/source/utility/HybridAStar;"
        "${SP_PK_PATHFOLLOW_PATH}/source/utility/Pathstitching;"
        "${SP_PK_PATHFOLLOW_PATH}/source/utility/liner;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/interface/intrinsic_modeller;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/math;"
        "${COMM_PATH}/source/interface/ml;"
        "${SP_PK_PATHFOLLOW_PATH}/source/utility;"
        "${COMM_PATH}/thirdparty/avpmap/interface;"
        "${COMM_PATH}/thirdparty/avpmap/source;"
        "${COMM_PATH}/source/interface/app;"
        "${COMM_PATH}/source/interface/schedule;"
        "${COMM_PATH}/thirdparty/Eigen;"
        "${SP_PK_PATHFOLLOW_PATH}/source/utility/avpmap;"
        "${COMM_PATH}/source/interface/vehmdl;"
        "${SP_PK_PATHFOLLOW_PATH}/../radar/source;"
        "${SP_PK_PATHFOLLOW_PATH}/source/utility/TargetPosition;"
        "${SP_PK_PATHFOLLOW_PATH}/source/utility/PathFollow/spline;"
        "${SP_PK_PATHFOLLOW_PATH}/source/utility/PathFollow/control;"
        "${COMM_PATH}/source/interface/display;"
        "${COMM_PATH}/source/utility/vehmdl;"
        "${COMM_PATH}/source/interface/multiprocess;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/interface/algo;"
        "${SP_PK_PATHFOLLOW_PATH}/source/interface;"
        "${APA_COMM_MATH_PATH}/include;"
        "${COMM_PATH}/source/utility/pk_common"
        "${FW_SDK_PATH}/service/opencv/include;"
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
target_compile_definitions(${PROJECT_NAME} PRIVATE "OPENCV=1;HAVE_STRUCT_TIMESPEC;_UINIT_64_T_")
endif()


################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Oi;
                        /Gy;
                        /wd4005;
                        /wd4819;
                        /wd4273;
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

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
	frameworkbase
    opencv_service
)
