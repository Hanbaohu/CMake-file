project(can_service)

################################################################################
# Source groups
################################################################################

set(src
    "${FW_SDK_PATH}/service/communication/can/src/can_service.cpp"
)
source_group("源文件" FILES ${src})

set(__platform
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/ICanParser.h"
)
source_group("源文件\\platform" FILES ${__platform})

set(__platform__ENOVATE
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/dbc/can_dbc_ENOVATE.h"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/ENOVATE/ENOVATE_CanParser.cpp"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/ENOVATE/ENOVATE_CanParser.h"
)
source_group("源文件\\platform\\ENOVATE" FILES ${__platform__ENOVATE})

set(__platform__ES6_PC
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/dbc/can_dbc_ES6.h"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/ES6_PC/CES6_CanParser.cpp"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/ES6_PC/CES6_CanParser.h"
)
source_group("源文件\\platform\\ES6_PC" FILES ${__platform__ES6_PC})

set(__platform__ES8_PC
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/ES8_PC/CES8_2_CanParser.cpp"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/ES8_PC/CES8_2_CanParser.h"
)
source_group("源文件\\platform\\ES8_PC" FILES ${__platform__ES8_PC})

set(__platform__GM_PC
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/GM_PC/GM_CanParser.cpp"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/GM_PC/GM_CanParser.h"
)
source_group("源文件\\platform\\GM_PC" FILES ${__platform__GM_PC})

set(__platform__GWM_V71
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/GWM_V71_Q8540/GWM_V71_CanParser.cpp"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/GWM_V71_Q8540/GWM_V71_CanParser.h"
)
source_group("源文件\\platform\\GWM_V71" FILES ${__platform__GWM_V71})

set(__platform__HENGCHI
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/dbc/can_dbc_HENGCHI.h"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/HENGCHI/HENGCHI_CanParser.cpp"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/HENGCHI/HENGCHI_CanParser.h"
)
source_group("源文件\\platform\\HENGCHI" FILES ${__platform__HENGCHI})

set(__platform__NISSAN_PC
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/dbc/can_dbc_NISSAN.h"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/NISSAN_PC/NISSAN_CanParser.cpp"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/NISSAN_PC/NISSAN_CanParser.h"
)
source_group("源文件\\platform\\NISSAN_PC" FILES ${__platform__NISSAN_PC})

set(__platform_PIX
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/dbc/can_dbc_pix.h"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/PIX/CPix_CanParser.cpp"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/PIX/CPix_CanParser.h"
)
source_group("源文件\\platform\\PIX" FILES ${__platform_PIX})

set(__platform__VV6_PC
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/VV6_PC/CVV6CanParser.cpp"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/platform/VV6_PC/CVV6CanParser.h"
)
source_group("源文件\\platform\\VV6_PC" FILES ${__platform__VV6_PC})

set(ALL_FILES
    ${src}
    ${__platform}
    ${__platform__ENOVATE}
    ${__platform__ES6_PC}
    ${__platform__ES8_PC}
    ${__platform__GM_PC}
    ${__platform__GWM_V71}
    ${__platform__HENGCHI}
    ${__platform__NISSAN_PC}
    ${__platform_PIX}
    ${__platform__VV6_PC}
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
    "${FW_SDK_PATH}/service/config/include;"
	" ${COMM_PATH}/source/utility/avmimage;"
	" ${COMM_PATH}/source/utility/dim3;"
	" ${COMM_PATH}/source/utility/helper;"
	" ${COMM_PATH}/source/utility/vehmdl;"
	"${FW_SDK_PATH}/service/communication/can/include"
    "${FW_SDK_PATH}/adaptor/driver/can/include"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/"
    "${FW_SDK_PATH}/service/communication/can/src/can_parser/dbc/"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
	${platform_launcher_include_directories}
)


################################################################################
# Target
################################################################################
set(LIBRARIES
    sp_comm
    frameworkbase
    can_adaptor
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
target_compile_definitions(${PROJECT_NAME} PRIVATE "_CRT_NONSTDC_NO_DEPRECATE;_CRT_SECURE_NO_WARNINGS;NODEBUG;SPOS_WIN;_USRDLL;MODULER_EXPORTS;_CAN_SERVICE_;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "_CAN_SERVICE_")
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
    can_adaptor
)
