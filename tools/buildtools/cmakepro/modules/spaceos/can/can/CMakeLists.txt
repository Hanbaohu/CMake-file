project(can)

################################################################################
# Source groups
################################################################################
set(src
    "${CAN}/src/can.cpp"
    "${CAN}/src/can_afx.cpp"
)
source_group("源文件" FILES ${src})

set(__platform
    "${CAN}/src/platform/ICanManager.h"
)
source_group("源文件\\platform" FILES ${__platform})

set(__platform__ENOVATE
    "${CAN}/src/platform/ENOVATE/ENOVATECanManager.cpp"
    "${CAN}/src/platform/ENOVATE/ENOVATECanManager.h"
)
source_group("源文件\\platform\\ENOVATE" FILES ${__platform__ENOVATE})

set(__platform__ES8_PC
    "${CAN}/src/platform/ES8_PC/ES8CanManager.cpp"
    "${CAN}/src/platform/ES8_PC/ES8CanManager.h"
)
source_group("源文件\\platform\\ES8_PC" FILES ${__platform__ES8_PC})

set(__platform__GM_PC
    "${CAN}/src/platform/GM_PC/GMCanManager.cpp"
    "${CAN}/src/platform/GM_PC/GMCanManager.h"
)
source_group("源文件\\platform\\GM_PC" FILES ${__platform__GM_PC})

set(__platform__HENGCHI_PC
    "${CAN}/src/platform/HENGCHI_PC/HENGCHICanManager.cpp"
    "${CAN}/src/platform/HENGCHI_PC/HENGCHICanManager.h"
)
source_group("源文件\\platform\\HENGCHI_PC" FILES ${__platform__HENGCHI_PC})

set(__platform__NISSAN_PC
    "${CAN}/src/platform/NISSAN_PC/NISSANCanManager.cpp"
    "${CAN}/src/platform/NISSAN_PC/NISSANCanManager.h"
)
source_group("源文件\\platform\\NISSAN_PC" FILES ${__platform__NISSAN_PC})

set(__platform__VV6_PC
    "${CAN}/src/platform/VV6_PC/VV6CanManager.cpp"
    "${CAN}/src/platform/VV6_PC/VV6CanManager.h"
)
source_group("源文件\\platform\\VV6_PC" FILES ${__platform__VV6_PC})

set(__platform__PIX
    "${CAN}/src/platform/PIX/PIXCanManager.h"
    "${CAN}/src/platform/PIX/PIXCanManager.cpp"
)
source_group("源文件\\platform\\PIX" FILES ${__platform__PIX})

if (MSVC)
    set(ALL_FILES
        ${src}
        ${__platform}
        ${__platform__PIX}
        ${__platform__ENOVATE}
        ${__platform__ES8_PC}
        ${__platform__GM_PC}
        ${__platform__HENGCHI_PC}
        ${__platform__NISSAN_PC}
        ${__platform__VV6_PC}
    )
else()
    set(ALL_FILES
        ${src}
        ${__platform}
        ${__platform__PIX}
        # ${__platform__ENOVATE}
        # ${__platform__ES8_PC}
        # ${__platform__GM_PC}
        # ${__platform__HENGCHI_PC}
        # ${__platform__NISSAN_PC}
        # ${__platform__VV6_PC}
    )
endif()

################################################################################
# Include directories
################################################################################
include_directories(
    " ${COMM_PATH}/source/interface/common;"
    " ${COMM_PATH}/source/interface/algo;"
    " ${COMM_PATH}/source/interface/avm;"
    " ${COMM_PATH}/source/interface/cv;"
    " ${COMM_PATH}/source/interface/smc;"
    "${FW_SDK_PATH}/service/opencv/include;"
    " ${COMM_PATH}/source/utility/avmimage;"
    " ${COMM_PATH}/source/utility/dim3;"
    " ${COMM_PATH}/source/utility/helper;"
    "${CAN}/src/platform/"
    "${CAN}/include/"
    "${COMM_PATH}/source/utility/memory;"
    "${FW_SDK_PATH}/adaptor/os/API/include;"
    "${FW_SDK_PATH}/service/config/include"
    "${FW_SDK_PATH}/service/communication/can/include;"
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}
)


################################################################################
# Target
################################################################################
set(LIBRARIES
    "sp_comm;"
    "frameworkbase;"
    "multiProcessTransport;"
    "can_service;"
    "can_adaptor;"
    "config_service;"
    ${${PROJECT_NAME}_link_libraries}
)
link_directories(${${PROJECT_NAME}_link_directories})
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/can")

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE "_CRT_NONSTDC_NO_DEPRECATE;_CRT_SECURE_NO_WARNINGS;NODEBUG;SPOS_WIN;_USRDLL;_CAN_;MODULER_EXPORTS;UNICODE;_UNICODE")
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE SPOS_MONITOR_USED)
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /MD;
                        /GL-;
                        /Oi;
                        /Gy
                        /permissive-;
                        /Od;
                        /sdl;
                        /W3;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        /Y-
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
    config_service
    multiProcessTransport
    can_service
)
