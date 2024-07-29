project(space_tracking)

################################################################################
# Source groups
################################################################################
set(api
    "${SPACE_TRACKING_PATH}/source/api/mdf_api.cpp"
    "${SPACE_TRACKING_PATH}/source/api/mdf_api.h"
    "${SPACE_TRACKING_PATH}/source/api/mdf_config.h"
)
source_group("api" FILES ${api})

set(core
    "${SPACE_TRACKING_PATH}/source/core/stdimport.h"
)
source_group("core" FILES ${core})

set(core__cfg
    "${SPACE_TRACKING_PATH}/source/core/cfg/track_cfg.cpp"
    "${SPACE_TRACKING_PATH}/source/core/cfg/track_cfg.h"
)
source_group("core\\cfg" FILES ${core__cfg})

set(core__debug
    "${SPACE_TRACKING_PATH}/source/core/debug/debug_show.cpp"
    "${SPACE_TRACKING_PATH}/source/core/debug/debug_show.h"
)
source_group("core\\debug" FILES ${core__debug})

set(core__main
    "${SPACE_TRACKING_PATH}/source/core/main/mdf_mainctrl.cpp"
    "${SPACE_TRACKING_PATH}/source/core/main/mdf_mainctrl.h"
)
source_group("core\\main" FILES ${core__main})

set(core__perception
    "${SPACE_TRACKING_PATH}/source/core/perception/car_tracker.cpp"
    "${SPACE_TRACKING_PATH}/source/core/perception/car_tracker.h"
    "${SPACE_TRACKING_PATH}/source/core/perception/lane_tracker.cpp"
    "${SPACE_TRACKING_PATH}/source/core/perception/lane_tracker.h"
    "${SPACE_TRACKING_PATH}/source/core/perception/lineod_multiview_tracker.cpp"
    "${SPACE_TRACKING_PATH}/source/core/perception/lineod_multiview_tracker.h"
    "${SPACE_TRACKING_PATH}/source/core/perception/lineod_tracker.cpp"
    "${SPACE_TRACKING_PATH}/source/core/perception/lineod_tracker.h"
    "${SPACE_TRACKING_PATH}/source/core/perception/ped_tracker.cpp"
    "${SPACE_TRACKING_PATH}/source/core/perception/ped_tracker.h"
    "${SPACE_TRACKING_PATH}/source/core/perception/roadJunctions_tracker.cpp"
    "${SPACE_TRACKING_PATH}/source/core/perception/roadJunctions_tracker.h"
    "${SPACE_TRACKING_PATH}/source/core/perception/seg_tracker.cpp"
    "${SPACE_TRACKING_PATH}/source/core/perception/seg_tracker.h"
)
source_group("core\\perception" FILES ${core__perception})

set(core__postproc
    "${SPACE_TRACKING_PATH}/source/core/postproc/car_postproc.cpp"
    "${SPACE_TRACKING_PATH}/source/core/postproc/car_postproc.h"
)
source_group("core\\postproc" FILES ${core__postproc})

set(core__preproc
    "${SPACE_TRACKING_PATH}/source/core/preproc/lineod_preproc.cpp"
    "${SPACE_TRACKING_PATH}/source/core/preproc/lineod_preproc.h"
)
source_group("core\\preproc" FILES ${core__preproc})

set(core__primitives
    "${SPACE_TRACKING_PATH}/source/core/primitives/dataforward.cpp"
    "${SPACE_TRACKING_PATH}/source/core/primitives/dataforward.h"
    "${SPACE_TRACKING_PATH}/source/core/primitives/lineod_tracker_cfg.h"
    "${SPACE_TRACKING_PATH}/source/core/primitives/seg_tracker_cfg.h"
    "${SPACE_TRACKING_PATH}/source/core/primitives/trackercfg.h"
)
source_group("core\\primitives" FILES ${core__primitives})

set(core__track_comm
    "${SPACE_TRACKING_PATH}/source/core/track_comm/track_comm.cpp"
    "${SPACE_TRACKING_PATH}/source/core/track_comm/track_comm.h"
)
source_group("core\\track_comm" FILES ${core__track_comm})

set(core__tracker__association
    "${SPACE_TRACKING_PATH}/source/core/tracker/association/lanematch.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/association/lanematch.h"
    "${SPACE_TRACKING_PATH}/source/core/tracker/association/lineodmatch.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/association/lineodmatch.h"
    "${SPACE_TRACKING_PATH}/source/core/tracker/association/objectmatch.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/association/objectmatch.h"
    "${SPACE_TRACKING_PATH}/source/core/tracker/association/objectmatchnew.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/association/objectmatchnew.h"
    "${SPACE_TRACKING_PATH}/source/core/tracker/association/segmatch.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/association/segmatch.h"
)
source_group("core\\tracker\\association" FILES ${core__tracker__association})

set(core__tracker__kalman
    "${SPACE_TRACKING_PATH}/source/core/tracker/kalman/baseodfilter.h"
    "${SPACE_TRACKING_PATH}/source/core/tracker/kalman/carkalman.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/kalman/carkalman.h"
    "${SPACE_TRACKING_PATH}/source/core/tracker/kalman/kalmanfilterNew.h"
    "${SPACE_TRACKING_PATH}/source/core/tracker/kalman/LanekalmanfilterNew.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/kalman/LanekalmanfilterNew.h"
    "${SPACE_TRACKING_PATH}/source/core/tracker/kalman/LineODkalman.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/kalman/LineODkalman.h"
    "${SPACE_TRACKING_PATH}/source/core/tracker/kalman/pedkalman.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/kalman/pedkalman.h"
    "${SPACE_TRACKING_PATH}/source/core/tracker/kalman/PedkalmanfilterNew.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/kalman/PedkalmanfilterNew.h"
    "${SPACE_TRACKING_PATH}/source/core/tracker/kalman/Segkalman.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/kalman/Segkalman.h"
)
source_group("core\\tracker\\kalman" FILES ${core__tracker__kalman})

set(core__tracker__noisemap
    "${SPACE_TRACKING_PATH}/source/core/tracker/noisemap/noisemap.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/noisemap/noisemap.h"
)
source_group("core\\tracker\\noisemap" FILES ${core__tracker__noisemap})

set(core__tracker__objectstream
    "${SPACE_TRACKING_PATH}/source/core/tracker/objectstream/objectstream.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/objectstream/objectstream.h"
    "${SPACE_TRACKING_PATH}/source/core/tracker/objectstream/streammanager.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/objectstream/streammanager.h"
)
source_group("core\\tracker\\objectstream" FILES ${core__tracker__objectstream})

set(core__tracker__sort_tracker
    "${SPACE_TRACKING_PATH}/source/core/tracker/sort_tracker/sort_tracker.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/sort_tracker/sort_tracker.h"
)
source_group("core\\tracker\\sort_tracker" FILES ${core__tracker__sort_tracker})

set(core__tracker__track
    "${SPACE_TRACKING_PATH}/source/core/tracker/track/lineod_track.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/track/lineod_track.h"
    "${SPACE_TRACKING_PATH}/source/core/tracker/track/lineod_track_queue.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/track/lineod_track_queue.h"
    "${SPACE_TRACKING_PATH}/source/core/tracker/track/seg_track.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/track/seg_track.h"
    "${SPACE_TRACKING_PATH}/source/core/tracker/track/track.cpp"
    "${SPACE_TRACKING_PATH}/source/core/tracker/track/track.h"
)
source_group("core\\tracker\\track" FILES ${core__tracker__track})

set(core__utils__avmimage
    "${SPACE_TRACKING_PATH}/source/core/utils/avmimage/avmimage.cpp"
    "${SPACE_TRACKING_PATH}/source/core/utils/avmimage/avmimage.h"
)
source_group("core\\utils\\avmimage" FILES ${core__utils__avmimage})

set(core__utils__commkalman
    "${COMM_PATH}/source/utility/kalman/extendkalmanfilter.cpp"
    "${COMM_PATH}/source/utility/kalman/imm.cpp"
    "${COMM_PATH}/source/utility/kalman/kalmanfilter.cpp"
    "${COMM_PATH}/source/utility/math/math_matrix.cpp"
    "${COMM_PATH}/source/utility/kalman/extendkalmanfilter.h"
    "${COMM_PATH}/source/utility/kalman/ifilter.h"
    "${COMM_PATH}/source/utility/kalman/imm.h"
    "${COMM_PATH}/source/utility/kalman/kalmanfilter.h"
    "${COMM_PATH}/source/utility/math/math_matrix.h"
)
source_group("core\\utils\\commkalman" FILES ${core__utils__commkalman})

set(core__utils__datainput
    "${SPACE_TRACKING_PATH}/source/core/utils/datainput/datainput.cpp"
    "${SPACE_TRACKING_PATH}/source/core/utils/datainput/datainput.h"
)
source_group("core\\utils\\datainput" FILES ${core__utils__datainput})

set(core__utils__debug
    "${SPACE_TRACKING_PATH}/source/core/utils/debug/debug.cpp"
    "${SPACE_TRACKING_PATH}/source/core/utils/debug/debug.h"
)
source_group("core\\utils\\debug" FILES ${core__utils__debug})

set(core__utils__helper
    "${SPACE_TRACKING_PATH}/source/core/utils/helper/mdf_helper.cpp"
    "${SPACE_TRACKING_PATH}/source/core/utils/helper/mdf_helper.h"
)
source_group("core\\utils\\helper" FILES ${core__utils__helper})

set(core__utils__hunarian
    "${SPACE_TRACKING_PATH}/source/core/utils/hunarian/hungarian.cpp"
    "${SPACE_TRACKING_PATH}/source/core/utils/hunarian/hungarian.h"
)
source_group("core\\utils\\hunarian" FILES ${core__utils__hunarian})

set(core__utils__polyfit
    "${SPACE_TRACKING_PATH}/source/core/utils/polyfit/polyfit.c"
    "${SPACE_TRACKING_PATH}/source/core/utils/polyfit/polyfit.h"
)
source_group("core\\utils\\polyfit" FILES ${core__utils__polyfit})

set(core__validator
    "${SPACE_TRACKING_PATH}/source/core/validator/mdf_validator.cpp"
    "${SPACE_TRACKING_PATH}/source/core/validator/mdf_validator.h"
)
source_group("core\\validator" FILES ${core__validator})

set(framework
    "${SPACE_TRACKING_PATH}/source/framework/fw_mdf.cpp"
    "${SPACE_TRACKING_PATH}/source/framework/fw_mdf.h"
    "${SPACE_TRACKING_PATH}/source/framework/fw_stdafx.h"
)
source_group("framework" FILES ${framework})

set(ALL_FILES
    ${api}
    ${core}
    ${core__cfg}
    ${core__debug}
    ${core__main}
    ${core__perception}
    ${core__postproc}
    ${core__preproc}
    ${core__primitives}
    ${core__track_comm}
    ${core__tracker__association}
    ${core__tracker__kalman}
    ${core__tracker__noisemap}
    ${core__tracker__objectstream}
    ${core__tracker__sort_tracker}
    ${core__tracker__track}
    ${core__utils__avmimage}
    ${core__utils__commkalman}
    ${core__utils__datainput}
    ${core__utils__debug}
    ${core__utils__helper}
    ${core__utils__hunarian}
    ${core__utils__polyfit}
    ${core__validator}
    ${framework}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${SPACE_TRACKING_PATH}/source;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/utility/bev;"
        "${COMM_PATH}/source/utility/math;"
        "${COMM_PATH}/source/utility/kalman;"
        "${COMM_PATH}/source/utility/vehmdl;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/utility/mmr;"
        "${COMM_PATH}/source/utility/helper;"
        "${COMM_PATH}/source/utility/sobject;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/interface/math;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/feature;"
        "${COMM_PATH}/source/interface/cnn;"
        "${FW_SDK_PATH}/service/opencv/include"
        "${SPACE_TRACKING_PATH}/source/core"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)


################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
	${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/detection/vision")

set(LIBRARIES
    frameworkbase
    sp_comm
    opencv_service
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE
        "x_DEBUG_NO_CONTROL_;"
        "SPACE_TRACKING_;"
        "_SPACE_TRACKING_;"
        "OPENCV300=1;"
        "_MDF_;"
        "TRACK_LINEOD;"
        "xIMG_FIRST_MATCH;"
        "xTRACK_TEST_BUG;"
        "TRACK_LD;"
        "TRACK_ROADJUNCTION;"
        "TRACK_SEG;"
        "xTRACK_TEST_REPORT;"
        "xTRACK_DEBUG;"
        "x_SPACE_TRACKING_DEBUG_;"
        "_SPACE_LINEOD_TRACKING_DEBUG_;"
        "x_TRACK_SEG_DEBUG_"
        "SPOS_WIN;"
        "OPENCV=1;"
        "_TARGET_ARCH_X86_64_;"
        "MODULER_EXPORTS;"
        "NOMINMAX;"
        "_MBCS"
)
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "OPENCV=1;TRACK_LINEOD;TRACK_SEG;_SPACE_TRACKING_;_UINIT_64_T_")
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
                        /Od;
                        /W3;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                        /OPT:REF;
                        /OPT:ICF;
                    /DEBUG;
                    /SUBSYSTEM:WINDOWS
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    frameworkbase
    sp_comm
    opencv_service
)