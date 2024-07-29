project(qt_window)

################################################################################
# Source groups
################################################################################
set(Headers
    "${HMI}/qt_window/src/data_agent.h"
    "${HMI}/qt_window/src/qt_sdk.h"
    "${HMI}/qt_window/src/qt_window.h"
    "${HMI}/qt_window/src/qt_windows_stdafx.h"
    "${HMI}/qt_window/src/ui_commtype.h"
)
source_group("Headers" FILES ${Headers})

set(Sources
    "${HMI}/qt_window/src/qt_sdk.cpp"
    "${HMI}/qt_window/src/qt_window.cpp"
    "${HMI}/qt_window/src/qt_windows_stdafx.cpp"
)
source_group("Sources" FILES ${Sources})

set(ALL_FILES
    ${Headers}
    ${Sources}
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
        "${COMM_PATH}/thirdparty/opencv410/include;"
        "${COMM_PATH}/thirdparty/opencv410/include/opencv;"
        "${COMM_PATH}/thirdparty/opencv410/include/opencv2;"
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
        "${COMM_PATH}/thirdparty/libjsoncpp/include;"
        ${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)

################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    "${MY_ROOT_DIR}/spaceos/spaceos_launcher/port/vc2019/x64/Release;"
    ${opencv_service_link_directories}
	${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "hmi")

set(LIBRARIES
    frameworkbase
    comm
    libjsoncpp
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE  "SPOS_WIN;_CRT_NONSTDC_NO_DEPRECATE;_CRT_SECURE_NO_WARNINGS;NODEBUG;_TARGET_OS_WIN_;_TARGET_ARCH_X86_64_;_USRDLL;_qt_window_;MODULER_EXPORTS;")
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
                        /MD;
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
    comm
)
