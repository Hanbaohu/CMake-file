project(hdmiCamCapture)

################################################################################
# Source groups
################################################################################
set(Headers
    "${HDMICAMCAPTURE_PATH}/include/hdmiCamCapture_stdafx.h"
    "${HDMICAMCAPTURE_PATH}/source/hdmi_capture_interface.h"
)
source_group("Headers" FILES ${Headers})

set(Sources
    "${HDMICAMCAPTURE_PATH}/source/hdmi_capture_interface.cpp"
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
    "${HDMICAMCAPTURE_PATH}/include;"
    "${COMM_PATH}/thirdparty/opencv410/include;"
    "${COMM_PATH}/thirdparty/opencv410/include/opencv2;"
    "${COMM_PATH}/source/utility/drsync;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/smc"

	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
	${platform_launcher_include_directories}
)

################################################################################
# Target
################################################################################
set(LIBRARIES
    comm
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
target_compile_definitions(${PROJECT_NAME} PRIVATE "OPENCV;_CRT_NONSTDC_NO_DEPRECATE;_CRT_SECURE_NO_WARNINGS;NODEBUG;SPOS_WIN;_USRDLL;MODULER_EXPORTS;_fw_sdk_;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "")
endif()


################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /MP;
                        /GL-;
                        /Oi;
                        /Gy;
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
                        /SUBSYSTEM:WINDOWS;
						)
endif()

################################################################################
# Dependencies
################################################################################
add_dependencies(${PROJECT_NAME}
    comm
    frameworkbase
)
