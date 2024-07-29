project(media_service)

 
################################################################################
# Source groups
################################################################################
set(data_manager
    "${FW_SDK_PATH}/service/media/src/data_manager/data_manager.cpp"
    "${FW_SDK_PATH}/service/media/src/media_service.cpp"
)
source_group("data_manager" FILES ${data_manager})

set(ALL_FILES
    ${data_manager}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${COMM_PATH}/source/interface/common;"
    "${FW_SDK_PATH}/service/media/src/data_manager/"
    "${FW_SDK_PATH}/service/media/include"
    "${FW_SDK_PATH}/adaptor/os/API/include;"
    ${ffmpeg_include_directories}
    #${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}
)


################################################################################
# Target
################################################################################
set(LIBRARIES
    avcodec
    avformat
    avutil
    swscale
    avdevice
    avfilter
    swresample
    api_adaptor
    #${${PROJECT_NAME}_link_libraries}
)
link_directories(
    ${ffmpeg_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/framework/service")
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
#target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -D_fw_reord_)
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /GL-;
                        /Od;
                        /Oi;
                        /Gy;
                        /permissive-;
                        /sdl;
                        /W3;
                        /MD;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                    /SUBSYSTEM:WINDOWS;
                    /OPT:REF;
                    /OPT:ICF;
                    /INCREMENTAL:NO;
                    /DEBUG;
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################





#target_link_libraries(comm PRIVATE ${LIBRARIES})

