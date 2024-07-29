project(spacenet)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${SPACENET_PATH}/source/core/utils/polyfit/Ransac/RansacFitting.cpp"
    "${SPACENET_PATH}/source/core/utils/polyfit/Ransac/RansacFitting.h"
    "${SPACENET_PATH}/source/framework/spacenet_input_def.h"
    "${SPACENET_PATH}/source/framework/spacenet_stdafx.cpp"
    "${SPACENET_PATH}/source/framework/spacenet_stdafx.h"
)
source_group("" FILES ${no_group_source_files})

set(api
    "${SPACENET_PATH}/source/api/spacenet_api.cpp"
    "${SPACENET_PATH}/source/api/spacenet_api.h"
)
source_group("api" FILES ${api})

set(core
    "${SPACENET_PATH}/source/core/stdimport.h"
)
source_group("core" FILES ${core})

set(core__dataio
    "${SPACENET_PATH}/source/core/dataio/avmimage.cpp"
    "${SPACENET_PATH}/source/core/dataio/avmimage.h"
    "${SPACENET_PATH}/source/core/dataio/base_image.cpp"
    "${SPACENET_PATH}/source/core/dataio/base_image.h"
    "${SPACENET_PATH}/source/core/dataio/bev_image.cpp"
    "${SPACENET_PATH}/source/core/dataio/bev_image.h"
    "${SPACENET_PATH}/source/core/dataio/bev_image_custom.cpp"
    "${SPACENET_PATH}/source/core/dataio/bev_image_custom.h"
    "${SPACENET_PATH}/source/core/dataio/bev_roi_image.cpp"
    "${SPACENET_PATH}/source/core/dataio/bev_roi_image.h"
    "${SPACENET_PATH}/source/core/dataio/datain.h"
    "${SPACENET_PATH}/source/core/dataio/datainput.cpp"
    "${SPACENET_PATH}/source/core/dataio/datainput.h"
    "${SPACENET_PATH}/source/core/dataio/line_od_image.cpp"
    "${SPACENET_PATH}/source/core/dataio/line_od_image.h"
)
source_group("core\\dataio" FILES ${core__dataio})

set(core__feature
    "${SPACENET_PATH}/source/core/feature/base_perception.cpp"
    "${SPACENET_PATH}/source/core/feature/base_perception.h"
    "${SPACENET_PATH}/source/core/feature/spacenet_perception.cpp"
    "${SPACENET_PATH}/source/core/feature/spacenet_perception.h"
)
source_group("core\\feature" FILES ${core__feature})

set(core__feature__corner
    "${SPACENET_PATH}/source/core/feature/corner/bev_image_perception.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/bev_image_perception.h"
    "${SPACENET_PATH}/source/core/feature/corner/corner_detector.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/corner_detector.h"
    "${SPACENET_PATH}/source/core/feature/corner/lane_detector.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/lane_detector.h"
    "${SPACENET_PATH}/source/core/feature/corner/ld_perception.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/ld_perception.h"
    "${SPACENET_PATH}/source/core/feature/corner/line_object_detector.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/line_object_detector.h"
    "${SPACENET_PATH}/source/core/feature/corner/line_od_image_multi_input_perception.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/line_od_image_multi_input_perception.h"
    "${SPACENET_PATH}/source/core/feature/corner/line_od_image_perception.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/line_od_image_perception.h"
    "${SPACENET_PATH}/source/core/feature/corner/object_detector.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/object_detector.h"
    "${SPACENET_PATH}/source/core/feature/corner/parking_lot_detector.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/parking_lot_detector.h"
    "${SPACENET_PATH}/source/core/feature/corner/pld_2stage_detector.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/pld_2stage_detector.h"
    "${SPACENET_PATH}/source/core/feature/corner/pld_2stage_perception.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/pld_2stage_perception.h"
    "${SPACENET_PATH}/source/core/feature/corner/pld_and_seg_detector.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/pld_and_seg_detector.h"
    "${SPACENET_PATH}/source/core/feature/corner/pld_detector.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/pld_detector.h"
    "${SPACENET_PATH}/source/core/feature/corner/pld_perception.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/pld_perception.h"
    "${SPACENET_PATH}/source/core/feature/corner/seg_detector.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/seg_detector.h"
    "${SPACENET_PATH}/source/core/feature/corner/seg_perception.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/seg_perception.h"
)
source_group("core\\feature\\corner" FILES ${core__feature__corner})

set(core__feature__corner__dodcore
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/corner_detection_algorithm.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/corner_detection_algorithm.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/dod_inference.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/dod_inference_bpu.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/dod_inference_bpu.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/dod_inference_caffe.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/dod_inference_caffe.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/dod_inference_tensorRT.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/dod_inference_tensorRT.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/dod_utility.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/inference_base.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/inference_base.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/lane_detection_algorithm.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/lane_detection_algorithm.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/lane_inference_caffe.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/lane_inference_caffe.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/line_object_detection_algorithm.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/line_object_detection_algorithm.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/line_object_inference_caffe.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/line_object_inference_caffe.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/line_object_inference_opencv.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/line_object_inference_opencv.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/mt_dnn_inference_parse.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/mt_dnn_inference_parse.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/object_detection_algorithm.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/object_detection_algorithm.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/object_inference_bpu.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/object_inference_bpu.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/object_inference_caffe.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/object_inference_caffe.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld2stage_detection_algorithm.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld2stage_detection_algorithm.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld2stage_inference_caffe.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld2stage_inference_caffe.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld2stage_inference_opencv.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld2stage_inference_opencv.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_and_seg_detection_algorithm.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_and_seg_detection_algorithm.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_and_seg_inference_caffe.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_and_seg_inference_caffe.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_and_seg_inference_opencv.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_and_seg_inference_opencv.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_detection_algorithm.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_detection_algorithm.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_inference_caffe.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_inference_caffe.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_inference_opencv.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_inference_opencv.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/seg_detection_algorithm.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/seg_detection_algorithm.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/seg_inference_caffe.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/seg_inference_caffe.h"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/seg_inference_opencv.cpp"
    "${SPACENET_PATH}/source/core/feature/corner/dodcore/seg_inference_opencv.h"
)
source_group("core\\feature\\corner\\dodcore" FILES ${core__feature__corner__dodcore})

set(core__main
    "${SPACENET_PATH}/source/core/main/spacenet_mainintf.cpp"
    "${SPACENET_PATH}/source/core/main/spacenet_mainintf.h"
)
source_group("core\\main" FILES ${core__main})

set(core__primitives
    "${SPACENET_PATH}/source/core/primitives/cmdinfo.h"
    "${SPACENET_PATH}/source/core/primitives/dataconfig.h"
    "${SPACENET_PATH}/source/core/primitives/dataforward.h"
    "${SPACENET_PATH}/source/core/primitives/datalgo.h"
    "${SPACENET_PATH}/source/core/primitives/header.h"
)
source_group("core\\primitives" FILES ${core__primitives})

set(core__utils__debug
    "${SPACENET_PATH}/source/core/utils/debug/debug.cpp"
    "${SPACENET_PATH}/source/core/utils/debug/debug.h"
)
source_group("core\\utils\\debug" FILES ${core__utils__debug})

set(core__utils__polyfit
    "${SPACENET_PATH}/source/core/utils/polyfit/polyfit.c"
    "${SPACENET_PATH}/source/core/utils/polyfit/polyfit.h"
)
source_group("core\\utils\\polyfit" FILES ${core__utils__polyfit})

set(framework
    "${SPACENET_PATH}/source/framework/fw_spacenet.cpp"
    "${SPACENET_PATH}/source/framework/fw_spacenet.h"
    "${SPACENET_PATH}/source/framework/fw_stdafx.h"
)
source_group("framework" FILES ${framework})

set(ALL_FILES
    ${no_group_source_files}
    ${api}
    ${core}
    ${core__dataio}
    ${core__feature}
    ${core__feature__corner}
    ${core__feature__corner__dodcore}
    ${core__main}
    ${core__primitives}
    ${core__utils__debug}
    ${core__utils__polyfit}
    ${framework}
    ${${PROJECT_NAME}_src_files}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${SPACENET_PATH}/source;"
        "${SPACENET_PATH}/source/api;"
        "${SPACENET_PATH}/source/framework;"
        "${SPACENET_PATH}/source/core;"
        "${SPACENET_PATH}/source/core/bev;"
        "${SPACENET_PATH}/source/core/main;"
        "${SPACENET_PATH}/source/core/feature;"
        "${SPACENET_PATH}/source/core/feature/corner;"
        "${SPACENET_PATH}/source/core/feature/corner/dodcore;"
        "${SPACENET_PATH}/source/core/feature/corner/dodcore/qaic/inc;"
        "${SPACENET_PATH}/source/core/feature/corner/dodcore/qaic/inc/include;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/utility/bev;"
        "${COMM_PATH}/source/utility/math;"
        "${COMM_PATH}/source/utility/kalman;"
        "${COMM_PATH}/source/utility/vehmdl;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/utility/mmr;"
        "${COMM_PATH}/source/utility/helper;"
        "${COMM_PATH}/source/utility/logparser;"
        "${COMM_PATH}/source/utility/sobject;"
        "${COMM_PATH}/source/utility/drsync"
        "${COMM_PATH}/source/utility"
        "${COMM_PATH}/source/utility/pk_common/include"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/interface/math;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/feature;"
        "${COMM_PATH}/source/interface/cnn;"
        "${FW_SDK_PATH}/service/opencv/include;"
        # "${SPACENET_PATH}/source/platform/windows;"
        # "${SPACENET_PATH}/source/platform/CAFFE;"
        # "${COMM_PATH}/thirdparty/caffe_dependency;"
        # "${COMM_PATH}/thirdparty/caffe_dependency/boost.1.59.0.0/lib/native/include;"
        # "${COMM_PATH}/thirdparty/caffe_dependency/gflags.2.1.2.1/build/native/include;"
        # "${COMM_PATH}/thirdparty/caffe_dependency/glog.0.3.3.0/build/native/include;"
        # "${COMM_PATH}/thirdparty/caffe_dependency/hdf5-v120-complete.1.8.15.2/lib/native/include;"
        # "${COMM_PATH}/thirdparty/caffe_dependency/LevelDB-vc120.1.2.0.0/build/native/include;"
        # "${COMM_PATH}/thirdparty/caffe_dependency/lmdb-v120-clean.0.9.14.0/lib/native/include;"
        # "${COMM_PATH}/thirdparty/caffe_dependency/OpenBLAS.0.2.14.1/lib/native/include;"
        # "${COMM_PATH}/thirdparty/caffe_dependency/OpenCV.2.4.10/build/native/include;"
        # "${COMM_PATH}/thirdparty/caffe_dependency/protobuf-v120.2.6.1/build/native/include;"
        # "$ENV{CUDA_PATH}/include;"
        #"${COMM_PATH}/thirdparty/Eigen/Eigen;"
        ${eigen_include_directories}
        ${platform_opencv_include_directories}
        ${platform_launcher_include_directories}
        ${${PROJECT_NAME}_include_directories}
	"${COMM_PATH}/source/interface/common"
	"${COMM_PATH}/source/interface/algo"

)

################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    ${opencv_link_directories}
	${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/deeplearning")

set(LIBRARIES
    frameworkbase
    sp_comm
    opencv_service
    ${opencv_link_libraries}
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
################################################################################
# Compile definitions
################################################################################
#target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -ggdb")
if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE  "LINEOD_ANCHOR_FREE;X_SINGLE_BEV_FREESPACE_OUTPUT_;DETECT_LINEOD_DIRTY;xSPACENET_RGB2BGR;x_DEBUG_NO_CONTROL_;xDETECT_PLDSOLE;PLD2STAGE_WITH_TYPECLS;PREPROCESS_BEFORE;BEV_NEW;DETECT_CROSSING;DETECT_LINEOD;xDETECT_LINEODS;xDETECT_LANE;xDETECT_MACHNIESLOT;DETECT_SLOTENTRY;xDETECT_PILLAR;xDETECT_OBJECT;DETECT_PLDANDSEG;DETECT_PLD2STAGE;xDETECT_SEG12M;SPOS_WIN;WIN32;OPENCV=1;OPENCV460=1;_TARGET_OS_WIN_;_TARGET_ARCH_X86_64_;MODULER_EXPORTS;NOMINMAX;GLOG_NO_ABBREVIATED_SEVERITIES;NO_STRICT;x_SPACENET_DEBUG_;_SPACENET_;xDETECT_OCR;ENABLE_CUDA_FP16=1;")
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE  "OPENCV=1;xENABLE_DEBUG_SHOW_WINDOW;x_OD_SHOW_;x_SPACENET_DEBUG_;LINEOD_ANCHOR_FREE;DETECT_LINEOD_DIRTY;PLD2STAGE_WITH_TYPECLS;PREPROCESS_BEFORE;BEV_NEW;DETECT_CROSSING;DETECT_LINEOD;DETECT_SLOTENTRY;DETECT_PLDANDSEG;DETECT_PLD2STAGE;_SPACENET_;ENABLE_CUDA_FP16=1;")
    #target_compile_definitions(${PROJECT_NAME} PRIVATE  "OPENCV=1;ENABLE_DEBUG_SHOW_WINDOW;_OD_SHOW_;_SPACENET_DEBUG_;LINEOD_ANCHOR_FREE;DETECT_LINEOD_DIRTY;PLD2STAGE_WITH_TYPECLS;PREPROCESS_BEFORE;BEV_NEW;DETECT_CROSSING;DETECT_LINEOD;DETECT_SLOTENTRY;DETECT_PLDANDSEG;DETECT_PLD2STAGE;_SPACENET_;ENABLE_CUDA_FP16=1;")
endif()


################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Oi;
                        /Gy;
                        /wd4819;
                        /wd4005;
                        /wd4018;
                        /wd4267;
                        /wd4477;
                        /wd4244;
                        /wd4996;
                        /wd4101;
                        /Od;
                        /W3;
                        /Y-;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                /OPT:REF;
                /OPT:ICF;
                /PROFILE;
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
    opencv_service
)
