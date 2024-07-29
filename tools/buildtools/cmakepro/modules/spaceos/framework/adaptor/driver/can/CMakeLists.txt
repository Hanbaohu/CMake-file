project(can_adaptor)

################################################################################
# Source groups
################################################################################

set(src
    "${FW_SDK_PATH}/adaptor/driver/can/src/can_driver_adaptor.cpp"
)
source_group("source" FILES ${})

set(__platform
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ICanDataSource.h"
)
source_group("source\\platform" FILES ${__platform})

set(__platform__ECANFD_PC
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ECANFD_PC/CPcEcanFDSource.cpp"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ECANFD_PC/CPcEcanFDSource.h"
)
source_group("source\\platform\\ECANFD_PC" FILES ${__platform__ECANFD_PC})

set(__platform__ECANFD_PC__ecan_basic
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ECANFD_PC/ecanfd_basic/ECANFDBasicClass.cpp"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ECANFD_PC/ecanfd_basic/ECANFDBasicClass.h"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ECANFD_PC/ecanfd_basic/ECanFDVci.h"
)
source_group("source\\platform\\ECANFD_PC\\ecan_basic" FILES ${__platform__ECANFD_PC__ecan_basic})

set(__platform__ES8_PC
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ES8_PC/CPcEcanSource.cpp"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ES8_PC/CPcEcanSource.h"
)
source_group("source\\platform\\ES8_PC" FILES ${__platform__ES8_PC})

set(__platform__ES8_PC__ecan_basic
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ES8_PC/ecan_basic/ECANBasic.h"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ES8_PC/ecan_basic/ECANBasicClass.cpp"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ES8_PC/ecan_basic/ECANBasicClass.h"
)
source_group("source\\platform\\ES8_PC\\ecan_basic" FILES ${__platform__ES8_PC__ecan_basic})

set(__platform__VV6_PC
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/VV6_PC/CPcPcanSource.cpp"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/VV6_PC/CPcPcanSource.h"
)
source_group("source\\platform\\VV6_PC" FILES ${__platform__VV6_PC})

set(__platform__VV6_PC__pcan_basic
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/VV6_PC/pcan_basic/PCANBasic.h"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/VV6_PC/pcan_basic/PCANBasicClass.cpp"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/VV6_PC/pcan_basic/PCANBasicClass.h"
)
source_group("source\\platform\\VV6_PC\\pcan_basic" FILES ${__platform__VV6_PC__pcan_basic})

set(__platform__PIX_Orin
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/PIX_Orin/COrinCanSource.h"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/PIX_Orin/COrinCanSource.cpp"
)
source_group("source\\platform\\PIX_Orin" FILES ${__platform__PIX_Orin})

if (MSVC)
    set(ALL_FILES
        ${src}
        ${__platform}
        ${__platform__ECANFD_PC}
        ${__platform__ECANFD_PC__ecan_basic}
        ${__platform__ES8_PC}
        ${__platform__ES8_PC__ecan_basic}
        ${__platform__VV6_PC}
        ${__platform__VV6_PC__pcan_basic}
    )
else()
    set(ALL_FILES
        ${src}
        ${__platform__PIX_Orin}
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
    "${COMM_PATH}/source/utility/memory;"
    "${FW_SDK_PATH}/adaptor/os/API/include;"
    "${FW_SDK_PATH}/adaptor/driver/can/include"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/VV6_PC/pcan_basic/"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ES8_PC/ecan_basic/"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ECANFD_PC/ecanfd_basic/"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/VV6_PC/"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ES8_PC/"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ECANFD_PC/"
    "${FW_SDK_PATH}/adaptor/driver/can/src/platform/PIX_Orin/"
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}
)


################################################################################
# Target
################################################################################
#TBD adjust according to platform
if(MSVC)
    set(LIBRARIES
        sp_comm
        frameworkbase
        config_service
        ECanVci64
        ECANFDVCI64
        PCANBasic
        ${${PROJECT_NAME}_link_libraries}
    )
else()
    set(LIBRARIES
        sp_comm
        frameworkbase
        config_service
        ${${PROJECT_NAME}_link_libraries}
    )
endif()

link_directories(
    "${MY_ROOT_DIR}/spaceos/spaceos_launcher/port/vc2019/x64/Release;"
    ${${PROJECT_NAME}_link_directories})
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/can")

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE "_CRT_NONSTDC_NO_DEPRECATE;_CRT_SECURE_NO_WARNINGS;NODEBUG;SPOS_WIN;_USRDLL;MODULER_EXPORTS;")
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE "SPOS_USE_SOCKETCAN")
endif()


################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /O2;
                        /Oi;
                        /Gy;
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
)
