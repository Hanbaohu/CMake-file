project(SP_PK_StateManager)

################################################################################
# Source groups
################################################################################

################################################################################
# Source groups
################################################################################
set(algo_core
    "${SP_PK_STATEMANAGER_PATH}/source/algo_core/APAStateManage.c"
    "${SP_PK_STATEMANAGER_PATH}/source/algo_core/APAStateManage.h"
    "${SP_PK_STATEMANAGER_PATH}/source/algo_core/rtwtypes.h"
)
source_group("algo_core" FILES ${algo_core})

set(algo_interface
    "${SP_PK_STATEMANAGER_PATH}/source/algo_interface/sp_pk_statemanager_algo_interface.c"
    "${SP_PK_STATEMANAGER_PATH}/source/algo_interface/sp_pk_statemanager_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${SP_PK_STATEMANAGER_PATH}/source/spaceos_interface/sp_pk_statemanager_spaceos_interface.cpp"
    "${SP_PK_STATEMANAGER_PATH}/source/spaceos_interface/sp_pk_statemanager_spaceos_interface.h"
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
        "${SP_PK_STATEMANAGER_PATH}/include;"
        "${SP_PK_STATEMANAGER_PATH}/include/common;"
        "${SP_PK_STATEMANAGER_PATH}/source/utility/DeltaMovements;"
        "${SP_PK_STATEMANAGER_PATH}/source/utility/Heuristics;"
        "${SP_PK_STATEMANAGER_PATH}/source/utility/HybridAStar;"
        "${SP_PK_STATEMANAGER_PATH}/source/utility/Pathstitching;"
        "${SP_PK_STATEMANAGER_PATH}/source/utility/liner;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/interface/intrinsic_modeller;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/math;"
        "${COMM_PATH}/source/interface/ml;"
        "${SP_PK_STATEMANAGER_PATH}/source/utility;"
        "${COMM_PATH}/thirdparty/avpmap/interface;"
        "${COMM_PATH}/thirdparty/avpmap/source;"
        "${COMM_PATH}/source/interface/app;"
        "${COMM_PATH}/source/interface/schedule;"
        "${COMM_PATH}/thirdparty/Eigen;"
        "${SP_PK_STATEMANAGER_PATH}/source/utility/avpmap;"
        "${COMM_PATH}/source/interface/vehmdl;"
        "${SP_PK_STATEMANAGER_PATH}/source/utility/TargetPosition;"
        "${SP_PK_STATEMANAGER_PATH}/source/utility/PathFollow/spline;"
        "${SP_PK_STATEMANAGER_PATH}/source/utility/PathFollow/control;"
        "${COMM_PATH}/source/interface/display;"
        "${COMM_PATH}/source/utility/vehmdl;"
        "${COMM_PATH}/source/interface/multiprocess;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/interface/algo;"
        "${SP_PK_STATEMANAGER_PATH}/source/interface;"
        "${COMM_PATH}/source/interface;"
        "${COMM_PATH}/source/utility/pk_common;"
        "${APA_COMM_MATH_PATH}/include;"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${${PROJECT_NAME}_CXX_FLAGS} -DOPENCV=1 -D_SP_PK_STATEMANAGER_ -DHAVE_STRUCT_TIMESPEC -D_UINIT_64_T_")

if(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -D_USRDLL -D_MBCS")
endif()


################################################################################
# Target
################################################################################
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "decision")

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

# ################################################################################
# # Dependencies
# ################################################################################




