project(rs_driver)

################################################################################
# Source groups
################################################################################

set(no_group_source_files
    "${LIDAR_PATH}/robosense/include/msg/proto_msg/packet.pb.cc"
    "${LIDAR_PATH}/robosense/include/msg/proto_msg/point_cloud.pb.cc"
    "${LIDAR_PATH}/robosense/include/msg/proto_msg/scan.pb.cc"
    "${LIDAR_PATH}/robosense/src/driver.cpp"
)
source_group("" FILES ${no_group_source_files})

set(ALL_FILES
    ${no_group_source_files}
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
    "${LIDAR_PATH}/robosense/include/interface/"
    "${LIDAR_PATH}/robosense/include/rs_driver/driver/"
    "${LIDAR_PATH}/robosense/include/rs_driver/msg/"
    "${COMM_PATH}/thirdparty/protobuf-3.19.2/include;"
    "${LIDAR_PATH}/robosense/include/"
    "${COMM_PATH}/thirdparty/boost_1_73_0;"
    "${COMM_PATH}/thirdparty/pcap-1.10.1/include;"
    "${COMM_PATH}/thirdparty/pcl-1.8.1/include/pcl-1.8;"
    "${COMM_PATH}/thirdparty/Eigen;"
    "${COMM_PATH}/thirdparty/boost_1_73_0;"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)


################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    "${COMM_PATH}/thirdparty/protobuf-3.19.2/lib/;"
    "${COMM_PATH}/thirdparty/yaml-cpp/lib/;"
    "${COMM_PATH}/thirdparty/pcap-1.10.1/lib/x64/;"
	${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/lidar")

set(LIBRARIES
    frameworkbase
    comm
    yaml-cpp
    pcap
    libprotobuf
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE  "WIN32;_WINDOWS;NDEBUG;_CRT_SECURE_NO_WARNINGS;SPOS_WIN;MODULER_EXPORTS;__SSSE3__;__SSE2__;__SSE__;PROTOBUF_USE_DLLS;PROTO_FOUND;vtkDomainsChemistry_AUTOINIT=1(vtkDomainsChemistryOpenGL2);vtkRenderingContext2D_AUTOINIT=1(vtkRenderingContextOpenGL2);vtkRenderingCore_INCLUDE=\"../../../../../../common/comm/thirdparty/vtk7.1.1/include/vtk7.1/vtkRenderingCore_AUTOINIT_vtkInteractionStyle_vtkRenderingFreeType_vtkRenderingOpenGL2.h\";vtkRenderingOpenGL2_AUTOINIT=1(vtkRenderingGL2PSOpenGL2);vtkRenderingVolume_AUTOINIT=1(vtkRenderingVolumeOpenGL2);BOOST_ALL_NO_LIB;DISABLE_OPENNI;DISABLE_OPENNI2;DISABLE_ENSENSO;DISABLE_DAVIDSDK;DISABLE_DSSDK;DISABLE_RSSDK;DISABLE_PCAP;DISABLE_PNG;FLANN_STATIC;DISABLE_QHULL;POINT_TYPE_XYZIRT;ROBO_LIDAR")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE  "")

endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                /GL-;
                /Od;
                /Oi;
                /sdl-;
                /Gy;
                /permissive-;
                /W3;
                /MD
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