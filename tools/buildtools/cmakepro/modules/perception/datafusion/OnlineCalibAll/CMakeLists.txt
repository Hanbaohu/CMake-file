project(OnlineCalibAll)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${AVM_PATH}/src/sv/math_common.c"
    "${COMM_PATH}/source/interface/algo/online_caliball_embed_interface.h"
    "${COMM_PATH}/source/interface/avm/camera_model.h"
    "${COMM_PATH}/source/utility/avm/camera_model.c"
    "${COMM_PATH}/source/utility/cv/opencv_adapter.cpp"
    "${COMM_PATH}/source/utility/math/levmarqt_minimizer.cpp"
    
    "${ONLINECALIB_ALL_PATH}/include/online_caliball_spaceos_interface.h"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_calibStatusCheck.cpp"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_calibStatusCheck.h"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_common.h"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_controller.cpp"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_controller.h"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_interface.cpp"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_interface.h"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_lane_interface.cpp"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_lane_interface.h"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_ld_datatype.cpp"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_ld_datatype.h"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_ld_imagemapping.cpp"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_ld_imagemapping.h"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_ld_lanemarkdetection.cpp"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_ld_lanemarkdetection.h"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_ld_main.cpp"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_ld_main.h"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_mirror_camera.cpp"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_mirror_camera.h"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_optimizer.cpp"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_optimizer.h"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_outliers.cpp"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_outliers.h"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_ransac_line.cpp"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_ransac_line.h"
    "${ONLINECALIB_ALL_PATH}/source/OnlineCalibAll/oc_single_calibrator.cpp"
    "${ONLINECALIB_ALL_PATH}/source/pc_wrapper/dllmain.cpp"
    "${ONLINECALIB_ALL_PATH}/source/pc_wrapper/online_caliball_fw.cpp"
    "${ONLINECALIB_ALL_PATH}/source/pc_wrapper/stdafx.cpp"
    "${ONLINECALIB_ALL_PATH}/source/pc_wrapper/stdafx.h"
    "${ONLINECALIB_ALL_PATH}/source/pc_wrapper/targetver.h"
)
source_group("" FILES ${no_group_source_files})

set(ALL_FILES
    ${no_group_source_files}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${ONLINECALIB_ALL_PATH}/source/inc;"
    "${ONLINECALIB_ALL_PATH}/include;"

    "${FW_SDK_PATH}/adaptor/os/API/include;"
    "${FW_BASE_PATH}/src/common;"

    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/math;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/iogateway;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/thirdparty/opencv300/include/opencv2;"
    "${COMM_PATH}/thirdparty/opencv300/include/opencv;"
    "${COMM_PATH}/thirdparty/opencv300/include"

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
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/datafusion")


################################################################################
# Compile definitions
################################################################################

target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_WINDOWS;_USRDLL;VIDEOCAPTURE_EXPORTS;OPENCV=1;SPOS_WIN;")
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
                        /Oi;
                        /Gy;
                        /Od;
                        /sdl;
                        /W3;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        /Y-
						)

target_link_options(${PROJECT_NAME} PRIVATE
                        /OPT:REF;
                        /OPT:ICF;
                        /INCREMENTAL:NO
                        /DEBUG;
                        /SUBSYSTEM:WINDOWS
						)
endif()

################################################################################
# Dependencies
################################################################################
add_dependencies(${PROJECT_NAME}
    comm
    frameworkbase
)