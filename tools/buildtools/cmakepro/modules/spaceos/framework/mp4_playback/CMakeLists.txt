project(mp4_playback)


################################################################################
# Source groups
################################################################################
set(Headers
    "${MP4_PLAYBACK_PATH}/src/mp4_demuxer.h"
    "${MP4_PLAYBACK_PATH}/src/mp4_playback.h"
)
source_group("Headers" FILES ${Headers})

set(Sources
    "${MP4_PLAYBACK_PATH}/src/mp4_demuxer.cpp"
    "${MP4_PLAYBACK_PATH}/src/mp4_playback.cpp"
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
    ${MP4_PLAYBACK_PATH}/src
    ${COMM_PATH}/source/interface/common/
    ${COMM_PATH}/source/interface/smc/
    ${COMM_PATH}/source/interface/cv/
    ${COMM_PATH}/source/interface/display/
    ${COMM_PATH}/source/utility/dim3/
    ${COMM_PATH}/source/utility/drsync/
    ${COMM_PATH}/source/interface/algo/
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}
)

SET(CMAKE_CXX_STANDARD 17)


################################################################################
# Target
################################################################################
set(LIBRARIES
    sp_comm
    frameworkbase
    "avcodec"
    "avdevice"
    "avfilter"
    "avformat"
    "avutil"
    "swresample"
    "swscale"
    "j6_demux"
    ${${PROJECT_NAME}_link_libraries}
)

link_directories(
    # ${ffmpeg_link_directories}
    ${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/framework")

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "OPENCV;_CRT_NONSTDC_NO_DEPRECATE;_CRT_SECURE_NO_WARNINGS;_USRDLL;_MP4_PLAYBACK_;MODULER_EXPORTS;__STDC_CONSTANT_MACROS;SPOS_WIN;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "_MP4_PLAYBACK_;__STDC_CONSTANT_MACROS")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /GL-;
                        /Od;
                        /sdl;
                        /W3;
                        /Y-;
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
    j6_demux
)