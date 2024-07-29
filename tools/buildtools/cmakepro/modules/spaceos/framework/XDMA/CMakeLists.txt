project(XDMA)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${FW_SDK_PATH}/XDMA1/src/joyson_capture_interface.cpp"
    "${FW_SDK_PATH}/XDMA1/src/joyson_capture_interface.h"
    "${FW_SDK_PATH}/XDMA1/src/xdma_public.h"
)
source_group("" FILES ${no_group_source_files})

set(ALL_FILES
    ${no_group_source_files}
)

################################################################################
# Include directories
################################################################################
include_directories(
	" ${COMM_PATH}/source/utility/dim3;"
	"${FW_SDK_PATH}/service/config/include;"
	"${FW_SDK_PATH}/service/opencv/include;"
	" ${COMM_PATH}/source/utility/vehmdl;"
	" ${COMM_PATH}/source/utility/sobject;"
	" ${COMM_PATH}/source/interface/common;"
	" ${COMM_PATH}/source/interface/algo;"
	" ${COMM_PATH}/source/interface/avm;"
	" ${COMM_PATH}/source/interface/cv;"
	" ${COMM_PATH}/source/interface/smc"
	" ${COMM_PATH}/source/utility/drsync"
	"${FW_SDK_PATH}/XDMA1/include"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)

################################################################################
# Target
################################################################################
set(LIBRARIES
    comm
    frameworkbase
	SetUpapi
	XDMA_CAP
    ${${PROJECT_NAME}_link_libraries}
)
link_directories(
	"${MY_ROOT_DIR}/spaceos/spaceos_launcher/port/vc2019/x64/Release;"
	${${PROJECT_NAME}_link_directories})
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/framework")

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "NDEBUG;_CONSOLE;OPENCV;_ON_WIN_;SPOS_WIN;_USRDLL;MODULER_EXPORTS;_CRT_SECURE_NO_WARNINGS;")
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
    comm
	frameworkbase
)
