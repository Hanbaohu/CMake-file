project(SP_PK_SonarDetect)

################################################################################
# Source groups
################################################################################
set(spaceos_interface
    "${COMM_PATH}/source/utility/recorder/DataRecorder.cpp"
    "${SP_PK_SONARDETECT_PATH}/source/spaceos_interface/sp_pk_sonardetect_spaceos_interface.cpp"
    "${SP_PK_SONARDETECT_PATH}/source/spaceos_interface/sp_pk_sonardetect_spaceos_interface.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${spaceos_interface}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${SP_PK_SONARDETECT_PATH}/source/algo_interface;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/utility/recorder;"
    "${FW_SDK_PATH}/fw_sdk/src;"
    "${FW_SDK_PATH}/service/opencv/include;"
    "${FW_SDK_PATH}/adaptor/os/API/include;"
    "${SP_INTERFACE_PATH}/include;"
    "${COMM_PATH}/source/interface;"
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
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/detection/sonar")

set(LIBRARIES
    frameworkbase
    comm
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE  "NDEBUG;_CONSOLE;MODULER_EXPORTS;SPOS_WIN;_CRT_SECURE_NO_WARNINGS;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE  "")

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
    comm
    frameworkbase
)