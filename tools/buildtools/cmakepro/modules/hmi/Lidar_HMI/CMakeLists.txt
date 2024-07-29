project(Lidar_HMI)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${LIDAR_HMI_PATH}/source/Lidar_HMI.cpp"
    "${LIDAR_HMI_PATH}/source/Lidar_HMI.h"
)
source_group("" FILES ${no_group_source_files})

set(ALL_FILES
    ${no_group_source_files}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${LIDAR_HMI_PATH}/source;"
    "${COMM_PATH}/source/interface;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/cnn;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/utility;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/utility/pk_common;"
    "${COMM_PATH}/source/interface/cv;"
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
    ${opencv_link_libraries}
    ${${PROJECT_NAME}_link_libraries}
)

link_directories(
    ${opencv_link_directories}
    ${${PROJECT_NAME}_link_directories}
)
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "hmi")

################################################################################
# Compile definitions
################################################################################

target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;SPOS_WIN;_USRDLL;VIDEOCAPTURE_EXPORTS;_SCL_SECURE_NO_WARNINGS;OPENCV=1;OPENCV300=1")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "")
endif()

################################################################################
# Dependencies
################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
    frameworkbase
)
