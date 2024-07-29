project(lidar_pointcloud_viewer)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${TOOLS_PATH}/lidar_pointcloud_viewer/source/lidar_pointcloud_viewer.h"
    "${TOOLS_PATH}/lidar_pointcloud_viewer/source/lidar_pointcloud_viewer.cpp"
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
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/utility/pk_common;"
    ${pcl_include_directories}
    ${eigen_include_directories}
    ${boost_include_directories}
    ${vtk_include_directories}
    ${platform_opencv_include_directories}
    ${${PROJECT_NAME}_include_directories}
)


################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    ${pcl_link_directories}
    ${vtk_link_directories}
    ${boost_link_directories}
    ${opencv_link_directories}
    ${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "tools")

set(LIBRARIES
    sp_comm
    frameworkbase
    #multiProcessTransport
    ${pcl_link_libraries}
    ${opencv_link_libraries}
    ${boost_link_libraries}
    ${vtk_link_libraries}
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE  "OPENCV_DISABLE_EIGEN_TENSOR_SUPPORT;_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_WINDOWS;_USRDLL;SPOS_WIN;NOMINMAX;BOOST_USE_WINDOWS_H;_CONSOLE")
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