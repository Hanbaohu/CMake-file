project(LidarNet)

################################################################################
# Source groups
################################################################################
set(algo_interface
    "${COMM_PATH}/source/interface/algo/lidar_net_interface.h"
    "${LidarNet_PATH}/source/algo_interface/lidar_net_algo_interface.cpp"
    "${LidarNet_PATH}/source/algo_interface/lidar_net_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${LidarNet_PATH}/source/spaceos_interface/lidar_net_spaceos_interface.cpp"
    "${LidarNet_PATH}/source/spaceos_interface/lidar_net_spaceos_interface.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${algo_interface}
    ${spaceos_interface}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${LidarNet_PATH}/source/algo_interface;"
    "${LidarNet_PATH}/source/spaceos_interface;"

    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/thirdparty/opencv410/include;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/debug;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/utility/avmimage;"
    "${COMM_PATH}/source/utility/pk_common;"
    "${COMM_PATH}/thirdparty/pcl-1.8.1/include/pcl-1.8;"
    "${COMM_PATH}/thirdparty/Eigen;"
    "${COMM_PATH}/thirdparty/boost_1_73_0;"
    "${COMM_PATH}/source/utility/lidar_common"

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
target_compile_definitions(${PROJECT_NAME} PRIVATE "_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_WINDOWS;_USRDLL;SPOS_WIN;OPENCV=1;HAVE_STRUCT_TIMESPEC;__SSSE3__;__SSE2__;__SSE__;PROTOBUF_USE_DLLS;PROTO_FOUND;vtkDomainsChemistry_AUTOINIT=1(vtkDomainsChemistryOpenGL2);vtkRenderingContext2D_AUTOINIT=1(vtkRenderingContextOpenGL2);vtkRenderingCore_INCLUDE=\"../../../../../../common/comm/thirdparty/vtk7.1.1/include/vtk7.1/vtkRenderingCore_AUTOINIT_vtkInteractionStyle_vtkRenderingFreeType_vtkRenderingOpenGL2.h\";vtkRenderingOpenGL2_AUTOINIT=1(vtkRenderingGL2PSOpenGL2);vtkRenderingVolume_AUTOINIT=1(vtkRenderingVolumeOpenGL2);BOOST_ALL_NO_LIB;DISABLE_OPENNI;DISABLE_OPENNI2;DISABLE_ENSENSO;DISABLE_DAVIDSDK;DISABLE_DSSDK;DISABLE_RSSDK;DISABLE_PCAP;DISABLE_PNG;FLANN_STATIC;DISABLE_QHULL;POINT_TYPE_XYZIRT")
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
                        /Od;
                        /Oi;
                        /Gy;
                        /Y-
                        /permissive-;
                        /sdl;
                        /W3;
						${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
						${DEFAULT_CXX_EXCEPTION_HANDLING};
						)

target_link_options(${PROJECT_NAME} PRIVATE
                        /OPT:REF;
                        /OPT:ICF;
                        /INCREMENTAL:NO
						)
endif()

################################################################################
# Dependencies
################################################################################
add_dependencies(${PROJECT_NAME}
    comm
    frameworkbase
)