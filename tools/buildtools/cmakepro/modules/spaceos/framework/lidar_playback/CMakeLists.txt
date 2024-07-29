project(lidar_playback)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${FW_SDK_PATH}/lidar_playback/source/lidar_playback.cpp"
)
source_group("" FILES ${no_group_source_files})

set(ALL_FILES
    ${no_group_source_files}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${FW_SDK_PATH}/lidar_playback/source/"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/thirdparty/websocketpp;"
    "${COMM_PATH}/thirdparty/jsoncpp/include;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/algo"
    ${eigen_include_directories}
    ${boost_include_directories}
    ${pcl_include_directories}
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
    "pcl_common_release;"
    "pcl_io_release"
    ${${PROJECT_NAME}_link_libraries}
)

link_directories(
    ${pcl_link_directories}
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
target_compile_definitions(${PROJECT_NAME} PRIVATE "_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_WINDOWS;_USRDLL;SPOS_WIN;NOMINMAX;BOOST_USE_WINDOWS_H;_CONSOLE;BOOST_ALL_NO_LIB")
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
                        /Od;
                        /Oi;
                        /Gy;
                        /Zp8;
                        /permissive-;
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
                        /SUBSYSTEM:CONSOLE
                        )
endif()

################################################################################
# Dependencies
################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
    frameworkbase
)