project(fw_sdk)

################################################################################
# Source groups
################################################################################
set(Headers
    "${FW_SDK_PATH}/fw_sdk/src/fw_sdk.h"
)
source_group("Headers" FILES ${Headers})

set(Sources
    "${FW_SDK_PATH}/fw_sdk/src/fw_sdk.cpp"
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
	" ${COMM_PATH}/source/utility/dim3;"
	"${FW_SDK_PATH}/service/config/include;"
	" ${COMM_PATH}/source/utility/vehmdl;"
	" ${COMM_PATH}/source/utility/sobject;"
	" ${COMM_PATH}/source/interface/common;"
	" ${COMM_PATH}/source/interface/algo;"
	" ${COMM_PATH}/source/interface/avm;"
	" ${COMM_PATH}/source/interface/cv;"
	" ${COMM_PATH}/source/interface/smc"
	"${MY_ROOT_DIR}/spaceos/spaceos_launcher/arm_src/Interface/include"
	${platform_launcher_include_directories}
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)

################################################################################
# Target
################################################################################
set(LIBRARIES
    sp_comm
    frameworkbase
    ${${PROJECT_NAME}_link_libraries}
)
link_directories(${${PROJECT_NAME}_link_directories})
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/framework")

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "_CRT_NONSTDC_NO_DEPRECATE;_CRT_SECURE_NO_WARNINGS;NODEBUG;SPOS_WIN;_USRDLL;MODULER_EXPORTS;_fw_sdk_;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "")
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
)
