project(pix_CF_lidar_driver)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${LIDAR_PATH}/pix_CF_lidar_driver/source/pix_CF_lidar_driver.h"
    "${LIDAR_PATH}/pix_CF_lidar_driver/source/pix_CF_lidar_driver.cpp"
)
source_group("" FILES ${no_group_source_files})

set(ALL_FILES
    ${no_group_source_files}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/debug;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/utility/lidar_common;"
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}

)


################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    ${opencv_link_directories}
    ${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/lidar")

set(LIBRARIES
    sp_comm
    frameworkbase
    #multiProcessTransport
    ${opencv_link_libraries}
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )


if (CMAKE_BUILD_TYPE STREQUAL "Release")
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O0")
    set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -O0")
endif()

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE  "_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_WINDOWS;_USRDLL;SPOS_WIN;NOMINMAX;BOOST_USE_WINDOWS_H;_CONSOLE")
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
    sp_comm
    frameworkbase
    #multiProcessTransport
)