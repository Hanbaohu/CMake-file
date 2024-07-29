project(multiProcessTransport)

################################################################################
# Source groups
################################################################################
set(common
    "${FW_SDK_PATH}/multiProcessTransport/src/common/base_commondef.h"
    "${FW_SDK_PATH}/multiProcessTransport/src/common/platform.cpp"
    "${FW_SDK_PATH}/multiProcessTransport/src/common/platform.h"
)
source_group("common" FILES ${common})

set(src
    "${FW_SDK_PATH}/multiProcessTransport/src/eventmanager_multiProcess.cpp"
    "${FW_SDK_PATH}/multiProcessTransport/src/eventmanager_multiProcess.h"
    "${FW_SDK_PATH}/multiProcessTransport/src/MultiProcessTransport.cpp"
    "${FW_SDK_PATH}/multiProcessTransport/src/scheduler_commdef_multiProcess.h"
    "${FW_SDK_PATH}/multiProcessTransport/src/scheduler_multiProcess.cpp"
    "${FW_SDK_PATH}/multiProcessTransport/src/scheduler_multiProcess.h"
    "${FW_SDK_PATH}/multiProcessTransport/src/sharedatabank_multiProcess.cpp"
    "${FW_SDK_PATH}/multiProcessTransport/src/sharedatabank_multiProcess.h"
)
source_group("源文件" FILES ${src})

set(ALL_FILES
    ${common}
    ${src}
)


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
    ${boost_include_directories}
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}
)

################################################################################
# Target
################################################################################
set(LIBRARIES
    sp_comm
    ${${PROJECT_NAME}_link_libraries}
)
link_directories(
    ${${PROJECT_NAME}_link_directories})
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/framework")

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE "SPOS_WIN;MODULER_EXPORTS;__STDC_LIB_EXT1__")
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE "")
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
                        /OPT:ICF
                        /DEBUG:FULL;
                        /SUBSYSTEM:CONSOLE
    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
)
