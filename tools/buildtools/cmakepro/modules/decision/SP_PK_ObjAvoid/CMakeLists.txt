project(SP_PK_ObjAvoid)

################################################################################
# Source groups
################################################################################
set(algo_core
    "${SP_PK_OBJAVOID_PATH}/source/algo_core/oa_types.h"
    "${SP_PK_OBJAVOID_PATH}/source/algo_core/oa_util.c"
    "${SP_PK_OBJAVOID_PATH}/source/algo_core/oa_util.h"
    "${SP_PK_OBJAVOID_PATH}/source/algo_core/PK_Avoid.c"
    "${SP_PK_OBJAVOID_PATH}/source/algo_core/PK_Avoid.h"
    "${SP_PK_OBJAVOID_PATH}/source/algo_core/PK_Calibration_ObjAvoid.c"
    "${SP_PK_OBJAVOID_PATH}/source/algo_core/PK_Calibration_ObjAvoid.h"
)
source_group("algo_core" FILES ${algo_core})

set(algo_interface
    "${SP_PK_OBJAVOID_PATH}/source/algo_interface/sp_pk_objavoid_algo_interface.c"
    "${SP_PK_OBJAVOID_PATH}/source/algo_interface/sp_pk_objavoid_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${SP_PK_OBJAVOID_PATH}/source/spaceos_interface/sp_pk_objavoid_spaceos_interface.cpp"
    "${SP_PK_OBJAVOID_PATH}/source/spaceos_interface/sp_pk_objavoid_spaceos_interface.h"
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
        "${SP_PK_OBJAVOID_PATH}/include;"
        "${SP_PK_OBJAVOID_PATH}/include/common;"
        "${SP_PK_OBJAVOID_PATH}/source/utility/DeltaMovements;"
        "${SP_PK_OBJAVOID_PATH}/source/utility/Heuristics;"
        "${SP_PK_OBJAVOID_PATH}/source/utility/HybridAStar;"
        "${SP_PK_OBJAVOID_PATH}/source/utility/Pathstitching;"
        "${SP_PK_OBJAVOID_PATH}/source/utility/liner;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/interface/intrinsic_modeller;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/math;"
        "${COMM_PATH}/source/interface/ml;"
        # "${COMM_PATH}/thirdparty/opencv410/include;"
        # "${COMM_PATH}/thirdparty/opencv410/include/opencv;"
        # "${COMM_PATH}/thirdparty/opencv410/include/opencv2;"
        "${SP_PK_OBJAVOID_PATH}/source/utility;"
        "${COMM_PATH}/thirdparty/avpmap/interface;"
        "${COMM_PATH}/thirdparty/avpmap/source;"
        "${COMM_PATH}/source/interface/app;"
        "${COMM_PATH}/source/interface/schedule;"
        "${COMM_PATH}/thirdparty/Eigen;"
        "${SP_PK_OBJAVOID_PATH}/source/utility/avpmap;"
        "${COMM_PATH}/source/interface/vehmdl;"
        "${SP_PK_OBJAVOID_PATH}/source/utility/TargetPosition;"
        "${SP_PK_OBJAVOID_PATH}/source/utility/PathFollow/spline;"
        "${SP_PK_OBJAVOID_PATH}/source/utility/PathFollow/control;"
        "${COMM_PATH}/source/interface/display;"
        "${COMM_PATH}/source/utility/vehmdl;"
        "${COMM_PATH}/source/interface/multiprocess;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/interface/algo;"
        "${SP_PK_OBJAVOID_PATH}/source/interface;"
        "${CMAKE_CURRENT_SOURCE_DIR}/source/pk_common/include;"
        "${CMAKE_CURRENT_SOURCE_DIR}/source/pk_plan/include;"
        "${CMAKE_CURRENT_SOURCE_DIR}/source/pk_sensorfusion;"
        "${CMAKE_CURRENT_SOURCE_DIR}/source/pk_sensorfusion/include;"
        "${CMAKE_CURRENT_SOURCE_DIR}/source/pk_sensorfusion/PK_SensorPreproc;"
        "${CMAKE_CURRENT_SOURCE_DIR}/sourcepk_sensorfusion/PK_SF_A;"
        "${CMAKE_CURRENT_SOURCE_DIR}/source/pk_sensorfusion/PK_SF_B;"
        "${APA_COMM_MATH_PATH}/include;"
        "${COMM_PATH}/source/utility/pk_common"
        "${FW_SDK_PATH}/service/opencv/include;"
        ${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)

################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    ${opencv_service_link_directories}
	${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "decision")

set(LIBRARIES
    frameworkbase
    sp_comm
    opencv_service
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE  "OPENCV=1;_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;_USRDLL;_SP_PK_OBJAVOID_;xGWM;VIDEOCAPTURE_EXPORTS;ES6;_WINDOWS;_MBCS;_ON_WIN_;HAVE_STRUCT_TIMESPEC;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE   "OPENCV=1;HAVE_STRUCT_TIMESPEC")
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

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    frameworkbase
    sp_comm
    opencv_service
)
