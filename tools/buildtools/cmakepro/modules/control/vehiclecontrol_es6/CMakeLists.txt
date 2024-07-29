project(SP_PK_VehicleControl)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${SP_PK_VEHICLECONTROL_PATH}/source/spaceos_interface/SP_PK_VehicleControl_stdafx.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/spaceos_interface/SP_PK_VehicleControl_stdafx.h"
)
source_group("" FILES ${no_group_source_files})

set(algo_core
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_573.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_573.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_2306.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_2306.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_8927.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_8927.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_ES6_Common.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_ES6_Common.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_ES6_Junsheng.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_GWM_C01.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_GWM_C01.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_GWM_V71.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_GWM_V71.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_JunSheng.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_JunSheng.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_ME5.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_ME5.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_PID.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_PID.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/vehiclecontrol_pid.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_PID_Controller.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_PID_Controller.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_PIX_Robobus.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/PK_VehicleControl_PIX_Robobus.h"
)
source_group("algo_core" FILES ${algo_core})

set(algo_core__nissan
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/nissan/PK_VehicleControl_nissan.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/nissan/PK_VehicleControl_nissan.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/nissan/vc_can_dbc_nissan.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/nissan/vc_can_dbc_nissan.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/nissan/vc_CanDBCBase.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_core/nissan/vc_CanDBCBase.h"
)
source_group("algo_core\\nissan" FILES ${algo_core__nissan})

set(algo_interface
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_interface/sp_pk_vehiclecontrol_algo_interface.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/algo_interface/sp_pk_vehiclecontrol_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${SP_PK_VEHICLECONTROL_PATH}/source/spaceos_interface/sp_pk_vehiclecontrol_spaceos_interface.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/spaceos_interface/sp_pk_vehiclecontrol_spaceos_interface.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/spaceos_interface/sp_pk_vehiclecontrol_spaceos_interface_jusheng.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/spaceos_interface/sp_pk_vehiclecontrol_spaceos_interface_nissan.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/spaceos_interface/sp_pk_vehiclecontrol_spaceos_tester.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/spaceos_interface/sp_pk_vehiclecontrol_spaceos_tester.h"
    "${SP_PK_VEHICLECONTROL_PATH}/source/spaceos_interface/SteerSmoother.cpp"
    "${SP_PK_VEHICLECONTROL_PATH}/source/spaceos_interface/SteerSmoother.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${no_group_source_files}
    ${algo_core}
    ${algo_core__nissan}
    ${algo_interface}
    ${spaceos_interface}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${COMM_PATH}/thirdparty/cvui;"
    "${SP_PK_VEHICLECONTROL_PATH}/include;"
    "${SP_PK_VEHICLECONTROL_PATH}/include/common;"
    "${SP_PK_VEHICLECONTROL_PATH}/source/utility/DeltaMovements;"
    "${SP_PK_VEHICLECONTROL_PATH}/source/utility/Heuristics;"
    "${SP_PK_VEHICLECONTROL_PATH}/source/utility/HybridAStar;"
    "${SP_PK_VEHICLECONTROL_PATH}/source/utility/Pathstitching;"
    "${SP_PK_VEHICLECONTROL_PATH}/source/utility/liner;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/intrinsic_modeller;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/math;"
    "${COMM_PATH}/source/interface/ml;"
    "${SP_PK_VEHICLECONTROL_PATH}/source/utility;"
    "${COMM_PATH}/thirdparty/avpmap/interface;"
    "${COMM_PATH}/thirdparty/avpmap/source;"
    "${COMM_PATH}/source/interface/app;"
    "${COMM_PATH}/source/interface/schedule;"
    "${COMM_PATH}/thirdparty/Eigen;"
    "${SP_PK_VEHICLECONTROL_PATH}/source/utility/avpmap;"
    "${COMM_PATH}/source/interface/vehmdl;"
    "${SP_PK_VEHICLECONTROL_PATH}/source/utility/TargetPosition;"
    "${SP_PK_VEHICLECONTROL_PATH}/source/utility/PathFollow/spline;"
    "${SP_PK_VEHICLECONTROL_PATH}/source/utility/PathFollow/control;"
    "${COMM_PATH}/source/interface/display;"
    "${COMM_PATH}/source/utility/vehmdl;"
    "${COMM_PATH}/source/interface/multiprocess;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/interface/algo;"
    "${SP_PK_VEHICLECONTROL_PATH}/source/interface;"
    "${CMAKE_CURRENT_SOURCE_DIR}/source/pk_common/include;"
    "${CMAKE_CURRENT_SOURCE_DIR}/source/pk_plan/include;"
    "${CMAKE_CURRENT_SOURCE_DIR}/source/pk_sensorfusion;"
    "${CMAKE_CURRENT_SOURCE_DIR}/source/pk_sensorfusion/include;"
    "${CMAKE_CURRENT_SOURCE_DIR}/source/pk_sensorfusion/PK_SensorPreproc;"
    "${CMAKE_CURRENT_SOURCE_DIR}/sourcepk_sensorfusion/PK_SF_A;"
    "${CMAKE_CURRENT_SOURCE_DIR}/source/pk_sensorfusion/PK_SF_B;"
    # "${SP_PK_VEHICLECONTROL_PATH}/../apa_comm_math/include;"
    "${COMM_PATH}/source/utility/pk_common;"
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}

)


################################################################################
# Target
################################################################################
link_directories(
    ${opencv_link_directories}
    ${opencv_service_link_directories}
    #${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "control")

if (WIN32)
    set(LIBRARIES
        frameworkbase
        sp_comm
        multiProcessTransport
        opencv_world460
    )
elseif (UNIX)
    set(LIBRARIES
        frameworkbase
        sp_comm
        multiProcessTransport
        ${${PROJECT_NAME}_link_libraries}
    )
endif()
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  ${${PROJECT_NAME}_CXX_FLAGS} )

if(MSVC)
    #target_compile_definitions(${PROJECT_NAME} PRIVATE  -D_CRT_SECURE_NO_WARNINGS)
    target_compile_definitions(${PROJECT_NAME} PRIVATE  _SP_PK_VEHICLECONTROL_; _CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_USRDLL;SPOS_WIN;VIDEOCAPTURE_EXPORTS;OPENCV=1;HAVE_STRUCT_TIMESPEC;ES6;_VEHICLEMOTION_;)
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE   _SP_PK_VEHICLECONTROL_;SPOS_MONITOR_USED;_VEHICLEMOTION_;OPENCV=1;HAVE_STRUCT_TIMESPEC;_UINT64_DEFINED)
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
    multiProcessTransport
)
