project(j6_demux)


################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${J6_DEMUX_PATH}/src/3gptmpt.h"
    "${J6_DEMUX_PATH}/src/MovieFile.cpp"
    "${J6_DEMUX_PATH}/src/MovieFile.h"
    "${J6_DEMUX_PATH}/src/Mp4Audio.cpp"
    "${J6_DEMUX_PATH}/src/Mp4Audio.h"
    "${J6_DEMUX_PATH}/src/Mp4Box.cpp"
    "${J6_DEMUX_PATH}/src/Mp4Box.h"
    "${J6_DEMUX_PATH}/src/Mp4Com.cpp"
    "${J6_DEMUX_PATH}/src/Mp4Com.h"
    "${J6_DEMUX_PATH}/src/MP4Demux.cpp"
    "${J6_DEMUX_PATH}/src/MP4Demux.h"
    "${J6_DEMUX_PATH}/src/Mp4File.cpp"
    "${J6_DEMUX_PATH}/src/Mp4File.h"
    "${J6_DEMUX_PATH}/src/Mp4Navigator.cpp"
    "${J6_DEMUX_PATH}/src/Mp4Navigator.h"
    "${J6_DEMUX_PATH}/src/Mp4Riff.cpp"
    "${J6_DEMUX_PATH}/src/Mp4Riff.h"
    "${J6_DEMUX_PATH}/src/Mp4Ve.cpp"
    "${J6_DEMUX_PATH}/src/Mp4Ve.h"
)
source_group("" FILES ${no_group_source_files})

set(ALL_FILES
    ${no_group_source_files}
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
        " ${COMM_PATH}/source/interface/ffmpeg;"
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
target_compile_definitions(${PROJECT_NAME} PRIVATE "_CRT_NONSTDC_NO_DEPRECATE;_CRT_SECURE_NO_WARNINGS;SPOS_WIN;_USRDLL;_MP4_PLAYBACK_;MODULER_EXPORTS;__STDC_CONSTANT_MACROS;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "_UINT64_DEFINED")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                            /O2;
                        /sdl;
                        /W3;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
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