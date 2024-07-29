project(SP_PK_SensorFusion)

################################################################################
# Source groups
################################################################################

set(algo_core
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_Calibration_SensorFusion.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_Calibration_SensorFusion.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/SF_Utils.c"
)
source_group("algo_core" FILES ${algo_core})

set(algo_core__PK_SF_A
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/ASFA_GlobalVars.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/ASFA_GlobalVars.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/PK_SensorFusion_A.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/PK_SensorFusion_A.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/PK_UsonicObst_A.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/PK_UsonicObst_A.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/PK_VisualSlots_A.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/PK_VisualSlots_A.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_Params.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_Types.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_UsonicCCP.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_UsonicCCP.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_UsonicEdgeRefine.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_UsonicEdgeRefine.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_UsonicFront.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_UsonicFront.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_UsonicFusion.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_UsonicFusion.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_UsonicLineFitting.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_UsonicLineFitting.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_UsonicRecognition.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_UsonicRecognition.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_UsonicSegment.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_UsonicSegment.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_Utils.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_A/SFA_Utils.h"
)
source_group("algo_core\\PK_SF_A" FILES ${algo_core__PK_SF_A})

set(algo_core__PK_SF_B
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/b1_common.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/b1_common.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/b1_sf.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/b1_sf.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/b1_su.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/b1_su.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/b2_com.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/b2_com.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/b2_sf.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/b2_sf.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/b2_su.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/b2_su.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/b_types.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/b_utils.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/b_utils.h"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/PK_B.c"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_B/PK_B.h"
)
source_group("algo_core\\PK_SF_B" FILES ${algo_core__PK_SF_B})

set(algo_core__PK_SF_Camera
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_Camera/PK_SF_Camera.cpp"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_core/PK_SF_Camera/PK_SF_Camera.h"
)
source_group("algo_core\\PK_SF_Camera" FILES ${algo_core__PK_SF_Camera})

set(algo_interface
    "${SP_PK_SENSORFUSION_PATH}/source/algo_interface/sp_pk_sensorfusion_algo_interface.cpp"
    "${SP_PK_SENSORFUSION_PATH}/source/algo_interface/sp_pk_sensorfusion_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${SP_PK_SENSORFUSION_PATH}/source/spaceos_interface/DebugShow.cpp"
    "${SP_PK_SENSORFUSION_PATH}/source/spaceos_interface/DebugShow.h"
    "${SP_PK_SENSORFUSION_PATH}/source/spaceos_interface/sp_pk_sensorfusion_spaceos_interface.cpp"
    "${SP_PK_SENSORFUSION_PATH}/source/spaceos_interface/sp_pk_sensorfusion_spaceos_interface.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${algo_core}
    ${algo_core__PK_SF_A}
    ${algo_core__PK_SF_B}
    ${algo_core__PK_SF_Camera}
    ${algo_interface}
    ${spaceos_interface}
)
################################################################################
# Include directories
################################################################################
include_directories(
        "${SP_PK_SENSORFUSION_PATH}/source/algo_interface;"
        "${SP_PK_SENSORFUSION_PATH}/source/algo_core;"
        "${SP_PK_SENSORFUSION_PATH}/spaceos_interface;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/utility/avmimage;"
        "${COMM_PATH}/source/utility/pk_common;"
	    "${COMM_PATH}/source/utility/recorder"
        "${COMM_PATH}/source/interface"
        "${FW_SDK_PATH}/service/opencv/include;"
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
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/datafusion")

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
target_compile_definitions(${PROJECT_NAME} PRIVATE  _CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_WINDOWS;_USRDLL;SPOS_WIN;VIDEOCAPTURE_EXPORTS;OPENCV=1;HAVE_STRUCT_TIMESPEC;ES6;_TRUST_AVM_;_SENSORFUSIONB_;TTE_Sonar;_DEBUG_SHOW_;)
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE  "OPENCV=1;HAVE_STRUCT_TIMESPEC;_UINT64_DEFINED")

endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                            /O2;
                            /Oi;
                            /Gy;
                            /wd4819;
                            /wd4068;
                            /wd4244;
                            /wd4101;
                            /wd4554;
                            /wd4005;
                        /sdl;
                        /W3;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                        /OPT:REF;
                        /OPT:ICF;
                        /PROFILE;
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
