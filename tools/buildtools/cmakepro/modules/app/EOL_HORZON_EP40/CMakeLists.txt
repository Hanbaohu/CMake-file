project(eol)

################################################################################
# Source groups
################################################################################
set(src
    "${EOL_HORZON_EP40_PATH}/source/EOL_calib_cb/eol_calc_ground_coordinate.cpp"
    "${EOL_HORZON_EP40_PATH}/source/EOL_calib_cb/eol_chessboard_detect.cpp"
    "${EOL_HORZON_EP40_PATH}/source/EOL_calib_cb/eol_corner_detect.cpp"
    "${EOL_HORZON_EP40_PATH}/source/EOL_calib_cb/eol_debug.cpp"
    "${EOL_HORZON_EP40_PATH}/source/EOL_calib_cb/eol_image_process.cpp"
    "${EOL_HORZON_EP40_PATH}/source/EOL_calib_cb/eol_main_driver.cpp"
    "${EOL_HORZON_EP40_PATH}/source/EOL_calib_cb/eol_opencv_adapter.cpp"
    "${EOL_HORZON_EP40_PATH}/source/EOL_calib_cb/eol_pose_estimator.cpp"
    "${EOL_HORZON_EP40_PATH}/source/EOL_calib_cb/eol_utility.cpp"
)

source_group("源文件" FILES ${})

set(ALL_FILES
    ${src}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${EOL_HORZON_EP40_PATH}/source/EOL_calib_cb;"
    "${EOL_IMAGELOADE_PATH}/source;"
	"${COMM_PATH}/source/interface/common;"
	"${FW_SDK_PATH}/service/opencv/include;"
    "${COMM_PATH}/source/utility/common;"
    "${COMM_PATH}/source/utility;"
    "${COMM_PATH}/source/interface/comm;"
    "${COMM_PATH}/interface/avm;"
    "${COMM_PATH}/source/interface/gpu3d;"
    "${COMM_PATH}/source;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/math;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/thirdparty/Eigen;"
    "${COMM_PATH}/source/interface/algo;"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
)

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DSPOS_LINUX_ARM_HW_MDC -DUSE_IMAGE_LOADER -DCV__ENABLE_C_API_CTORS -DxSAVE_RESULT_AS_PNG") 
if(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_LIB -DUNICODE -D_UNICODE")
endif()

################################################################################
# Target
################################################################################
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "app/EOL_HORZON_EP40")

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Oi;
                        /Gy;
                        /Y-;
                    /permissive-;
                    /sdl;
                    /W3;
                    ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                    ${DEFAULT_CXX_EXCEPTION_HANDLING}
                    )
target_link_options(${PROJECT_NAME} PRIVATE
                        /OPT:REF;
                        /OPT:ICF;
                    /SUBSYSTEM:WINDOWS
                    )
endif()


#target_link_libraries(${PROJECT_NAME} PUBLIC ${LIBRARIES})

