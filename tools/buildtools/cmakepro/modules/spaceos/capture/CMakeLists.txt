project(capture)

set(core
    ${CAPTURE_PATH}/core/base_capture_interface.h
    ${CAPTURE_PATH}/core/v4l2_capture.h
    ${CAPTURE_PATH}/core/v4l2_capture.cpp
)
source_group("core" FILES ${core})

set(framework
    ${CAPTURE_PATH}/framework/fw_capture.h
    ${CAPTURE_PATH}/framework/fw_capture.cpp
)
source_group("framework" FILES ${framework})

set(ALL_FILES
    ${core}
    ${framework}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/utility/drsync;"
    "${CAPTURE_PATH}/core/"
    "${CAPTURE_PATH}/framework/"
    ${platform_opencv_include_directories}
    ${${PROJECT_NAME}_include_directories}
)

################################################################################
# Target
################################################################################
set(LIBRARIES
    "sp_comm;"
    "frameworkbase;"
    ${opencv_link_libraries}
    ${${PROJECT_NAME}_link_libraries}
)

link_directories(
    ${opencv_link_directories}
    ${${PROJECT_NAME}_link_directories}
)
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
    frameworkbase
)