project(lidar_locator)


################################################################################
# Source groups
################################################################################
set(algo_core__base
    "${LidarLocator_PATH}/source/algo_core/base/ekf_control.h"
    "${LidarLocator_PATH}/source/algo_core/base/ekf_state.h"
    "${LidarLocator_PATH}/source/algo_core/base/imu_data.h"
    "${LidarLocator_PATH}/source/algo_core/base/nav_data.h"
    "${LidarLocator_PATH}/source/algo_core/base/point_cloud.h"
    "${LidarLocator_PATH}/source/algo_core/base/point_type.h"
    "${LidarLocator_PATH}/source/algo_core/base/pose_data.h"
    "${LidarLocator_PATH}/source/algo_core/base/wheel_data.h"  
)

source_group("algo_core\\base" FILES ${algo_core__base})

set(algo_core__fusion
    "${LidarLocator_PATH}/source/algo_core/fusion/ekf_fusion.cpp"
    "${LidarLocator_PATH}/source/algo_core/fusion/ekf_fusion.h"
    "${LidarLocator_PATH}/source/algo_core/fusion/ekf_param.cpp"
    "${LidarLocator_PATH}/source/algo_core/fusion/ekf_param.h"
    "${LidarLocator_PATH}/source/algo_core/fusion/lidar_measurement.cpp"
    "${LidarLocator_PATH}/source/algo_core/fusion/lidar_measurement.h"
)
source_group("algo_core\\fusion" FILES ${algo_core__fusion})


set(algo_core__matching
    "${LidarLocator_PATH}/source/algo_core/matching/ndt_matcher.cpp"
    "${LidarLocator_PATH}/source/algo_core/matching/ndt_matcher.h"
    "${LidarLocator_PATH}/source/algo_core/matching/ndt_param.h"
    "${LidarLocator_PATH}/source/algo_core/matching/ndt_voxel_data.h"
)
source_group("algo_core\\matching" FILES ${algo_core__matching})


set(algo_core__processor
    "${LidarLocator_PATH}/source/algo_core/processor/base_processor.h"
    "${LidarLocator_PATH}/source/algo_core/processor/imu_processor.cpp"
    "${LidarLocator_PATH}/source/algo_core/processor/imu_processor.h"
    "${LidarLocator_PATH}/source/algo_core/processor/nav_processor.cpp"
    "${LidarLocator_PATH}/source/algo_core/processor/nav_processor.h"
    "${LidarLocator_PATH}/source/algo_core/processor/point_cloud_processor.cpp"
    "${LidarLocator_PATH}/source/algo_core/processor/point_cloud_processor.h"
    "${LidarLocator_PATH}/source/algo_core/processor/pose_processor.cpp"
    "${LidarLocator_PATH}/source/algo_core/processor/pose_processor.h"
    "${LidarLocator_PATH}/source/algo_core/processor/wheel_processor.cpp"
    "${LidarLocator_PATH}/source/algo_core/processor/wheel_processor.h"
)
source_group("algo_core\\processor" FILES ${algo_core__processor})

set(algo_core__utility
    "${LidarLocator_PATH}/source/algo_core/utility/geo_utils.cpp"
    "${LidarLocator_PATH}/source/algo_core/utility/geo_utils.h"
    "${LidarLocator_PATH}/source/algo_core/utility/mapping_utils.cpp"
    "${LidarLocator_PATH}/source/algo_core/utility/mapping_utils.h"
    "${LidarLocator_PATH}/source/algo_core/utility/math_utils.h"
    "${LidarLocator_PATH}/source/algo_core/utility/nav_utils.h"
    "${LidarLocator_PATH}/source/algo_core/utility/rot_utils.cpp"
    "${LidarLocator_PATH}/source/algo_core/utility/rot_utils.h"
    "${LidarLocator_PATH}/source/algo_core/utility/timer.h"
    "${LidarLocator_PATH}/source/algo_core/utility/uniform_sampler.h"

)
source_group("algo_core\\utility" FILES ${algo_core__utility})


set(algo_core
    "${LidarGrid_PATH}/source/algo_core/LidarGrid_algo_core.h"
    "${LidarGrid_PATH}/source/algo_core/LidarGrid_algo_core.cpp"
)
source_group("algo_core" FILES ${algo_core})

set(algo_interface
    "${LidarLocator_PATH}/source/algo_interface/data_adapter.h"
    "${LidarLocator_PATH}/source/algo_interface/lidar_point_cloud_processor.h"
    "${LidarLocator_PATH}/source/algo_interface/lidar_point_cloud_processor.cpp"
    "${LidarLocator_PATH}/source/algo_interface/system_manager.h"
    "${LidarLocator_PATH}/source/algo_interface/system_manager.cpp"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${LidarLocator_PATH}/source/spaceos_interface/lidar_locator_spaceos_interface.h"
    "${LidarLocator_PATH}/source/spaceos_interface/lidar_locator_spaceos_interface.cpp"
    "${LidarLocator_PATH}/source/spaceos_interface/mapping.cpp"
    "${LidarLocator_PATH}/source/spaceos_interface/offline_test.h"
    "${LidarLocator_PATH}/source/spaceos_interface/offline_test.cpp"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${algo_core__base}
    ${algo_core__fusion}
    ${algo_core__matching}
    ${algo_core__processor}
    ${algo_core__utility}
    ${algo_interface}
    ${spaceos_interface}
)


# set(thirdparty_stlplus3
#     "${LidarLocator_PATH}/thirdparty/stlplus3/file_system.cpp"
#     "${LidarLocator_PATH}/thirdparty/stlplus3/file_system.hpp"
#     "${LidarLocator_PATH}/thirdparty/stlplus3/portability_fixes.cpp"
#     "${LidarLocator_PATH}/thirdparty/stlplus3/portability_fixes.hpp"
#     "${LidarLocator_PATH}/thirdparty/stlplus3/wildcard.cpp"
#     "${LidarLocator_PATH}/thirdparty/stlplus3/wildcard.hpp"

# )
# source_group("thirdparty_stlplus3" FILES ${thirdparty_stlplus3})

################################################################################
# Include directories
################################################################################
include_directories(
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/lidardriver;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/utility/gnss_converter;"
    "${COMM_PATH}/source/interface/math;"
    "${LidarLocator_PATH}/source/algo_core;"
    "${LidarLocator_PATH}/source/algo_interface;"
    "${LidarLocator_PATH}/source/spaceos_interface;"
    ${boost_include_directories}
    ${cereal_include_directories}
    ${stlplus3_include_directories}
    ${geographiclib_include_directories}
    ${eigen_include_directories}
    ${pcl_include_directories}
    ${platform_opencv_include_directories}
    ${${PROJECT_NAME}_include_directories}
)


################################################################################
# Target
################################################################################

set(LIBRARIES
    sp_comm
    frameworkbase
    ${geographiclib_link_libraries}
    ${pcl_link_libraries}
    ${opencv_link_libraries}
    ${boost_link_libraries}
    ${stlplus3_link_libraries}
    ${${PROJECT_NAME}_link_libraries}
)

################################################################################
# Target
################################################################################
link_directories(  
    ${geographiclib_link_directories}
    ${boost_link_directories}
    ${pcl_link_directories}
    ${opencv_link_directories}
    ${stlplus3_link_directories}
    ${${PROJECT_NAME}_link_directories}
)


add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/detection/lidar")

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if (CMAKE_BUILD_TYPE STREQUAL "Release")
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O2")
    set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -O2")
endif()

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE  "OPENCV_DISABLE_EIGEN_TENSOR_SUPPORT;_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_WINDOWS;_USRDLL;SPOS_WIN;NOMINMAX;_USE_MATH_DEFINES;BOOST_ALL_NO_LIB;BOOST_USE_WINDOWS_H;_LIDAR_LOCATOR_;")
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE  "_LIDAR_LOCATOR_;") #_OFFLINE_TEST_;
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /GL;
                        /Oi;
                        /sdl-;
                        /Gy;
                        /wd4819;
                        /wd4005;
                        /openmp;
                        /Y-;
                        /permissive-;
                        /Od;
                        /W3;
                        /MD
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                        /STACK:1000000000;
                        /OPT:REF;
                        /OPT:ICF;
                        /INCREMENTAL:NO
                        /DEBUG;
                        #/SUBSYSTEM:UNIX
                        )
endif()

################################################################################
# Dependencies
################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
    frameworkbase
    #multiProcessTransport
)


