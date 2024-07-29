project(gnsser_saver)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${GNSS_PATH}/gnsser_saver/source/gnsser_saver_fw_int.cpp"
    "${GNSS_PATH}/gnsser_saver/source/gnsser_saver_fw_int.h"
)
source_group("" FILES ${no_group_source_files})

set(main
    "${GNSS_PATH}/gnsser_saver/source/main/gnsser_saver_main.cpp"
    "${GNSS_PATH}/gnsser_saver/source/main/gnsser_saver_main.h"
)
source_group("main" FILES ${main})

set(ALL_FILES
    ${no_group_source_files}
    ${main}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/utility;"
        "${COMM_PATH}/source/interface;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/sensor/vru"
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
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/localization/gnss")

set(LIBRARIES
    frameworkbase
    sp_comm
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE
            "_GNSSER_SAVER_;"
            "_CRT_NONSTDC_NO_DEPRECATE;"
            "OPENCV"
            "_CRT_SECURE_NO_WARNINGS;"
            "MODULER_EXPORTS;"
            "SPOS_WIN;"
            "_USRDLL;"
            "VIDEOCAPTURE_EXPORTS;"
            "_SCL_SECURE_NO_WARNINGS;"
            "_MBCS"
)
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "OPENCV=1;TRACK_LINEOD;TRACK_SEG;_SPACE_TRACKING_;_UINIT_64_T_")
endif()


################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Od;
                        /Oi;
                        /sdl;
                        /Gy;
                        /W3;
                        /wd4819;
                        /wd4099;
                        /wd4267;
                        /wd4244;
                        /wd4251;
                        /wd4005;
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
)