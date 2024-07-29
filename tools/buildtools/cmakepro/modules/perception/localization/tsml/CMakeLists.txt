project(tsml)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${COMM_PATH}/thirdparty/tinyosm/flann/kdtree.cpp"
    "${COMM_PATH}/thirdparty/tinyosm/flann/kdtree.h"
    "${COMM_PATH}/thirdparty/tinyosm/logparser/log_reader.cpp"
    "${COMM_PATH}/thirdparty/tinyosm/logparser/log_reader.h"
    "${COMM_PATH}/thirdparty/tinyosm/tinyosm.cpp"
    "${COMM_PATH}/thirdparty/tinyosm/tinyosm.h"
    "${COMM_PATH}/thirdparty/tinyosm/tinyosm2.cpp"
    "${COMM_PATH}/thirdparty/tinyosm/tinyosm2.h"
    "${COMM_PATH}/thirdparty/tinyosm/tinyosm2_linemap.cpp"
    "${COMM_PATH}/thirdparty/tinyosm/tinyxml2.cpp"
    "${COMM_PATH}/thirdparty/tinyosm/tinyxml2.h"
    "${TSML_PATH}/source/LOG4ZItem.cpp"
    "${TSML_PATH}/source/LOG4ZItem.h"
    "${TSML_PATH}/source/tsml_stdafx.cpp"
    "${TSML_PATH}/source/tsml_stdafx.h"
)
source_group("" FILES ${no_group_source_files})

set(interface
    "${TSML_PATH}/adapter/windows/tsml_cfilter.cpp"
    "${TSML_PATH}/adapter/windows/tsml_cfilter.h"
    "${TSML_PATH}/adapter/windows/tsml_cfilter_initialize.cpp"
    "${TSML_PATH}/adapter/windows/tsml_cfilter_loadsetting.cpp"
    "${TSML_PATH}/adapter/windows/tsml_input_def.h"
)
source_group("interface" FILES ${interface})

set(interface__data_recorder
    "${TSML_PATH}/adapter/windows/data_record/tsml_datarecord.cpp"
    "${TSML_PATH}/adapter/windows/data_record/tsml_datarecord.h"
)
source_group("interface\\data_recorder" FILES ${interface__data_recorder})

set(interface__hmi
    "${TSML_PATH}/adapter/windows/loc_display.cpp"
    "${TSML_PATH}/adapter/windows/loc_display.h"
)
source_group("interface\\hmi" FILES ${interface__hmi})

set(interface__map
    "${TSML_PATH}/adapter/map/map_adapter.cpp"
    "${TSML_PATH}/adapter/map/map_adapter.h"
)
source_group("interface\\map" FILES ${interface__map})

set(output
    "${TSML_PATH}/interface/tsml_embed_adaptor.cpp"
    "${TSML_PATH}/interface/tsml_embed_adaptor.h"
    "${TSML_PATH}/interface/tsml_hmi_layer.cpp"
    "${TSML_PATH}/interface/tsml_hmi_layer.h"
    "${TSML_PATH}/interface/tsml_wayset.cpp"
    "${TSML_PATH}/interface/tsml_wayset.h"
)
source_group("output" FILES ${output})

set(source
    "${TSML_PATH}/source/tsml_commdef.h"
    "${TSML_PATH}/source/tsml_config.h"
    "${TSML_PATH}/source/tsml_error.h"
)
source_group("source" FILES ${source})

set(source__core__kalmanfilter
    "${TSML_PATH}/3rdparty/kalmanfilter/ekf.cpp"
    "${TSML_PATH}/3rdparty/kalmanfilter/ekf.h"
    "${TSML_PATH}/3rdparty/kalmanfilter/filter.h"
    "${TSML_PATH}/3rdparty/kalmanfilter/imm.cpp"
    "${TSML_PATH}/3rdparty/kalmanfilter/imm.h"
    "${TSML_PATH}/3rdparty/kalmanfilter/kalman_filter.cpp"
    "${TSML_PATH}/3rdparty/kalmanfilter/kalman_filter.h"
    "${TSML_PATH}/3rdparty/kalmanfilter/math_matrix.cpp"
    "${TSML_PATH}/3rdparty/kalmanfilter/math_matrix.h"
)
source_group("source\\core\\kalmanfilter" FILES ${source__core__kalmanfilter})

set(source__core__vehmdl
    "${TSML_PATH}/source/core/vehmdl/vehiclemodel.cpp"
    "${TSML_PATH}/source/core/vehmdl/vehiclemodel.h"
    "${TSML_PATH}/source/core/vehmdl/vehiclesetting.cpp"
)
source_group("source\\core\\vehmdl" FILES ${source__core__vehmdl})

set(source__modules__polymer
    "${TSML_PATH}/source/modules/polymer/loc_mastuner.cpp"
    "${TSML_PATH}/source/modules/polymer/loc_mastuner.h"
    "${TSML_PATH}/source/modules/polymer/loc_sensgroup.cpp"
    "${TSML_PATH}/source/modules/polymer/loc_sensgroup.h"
    "${TSML_PATH}/source/modules/polymer/loc_vmfilter.cpp"
    "${TSML_PATH}/source/modules/polymer/loc_vmfilter.h"
    "${TSML_PATH}/source/modules/polymer/mdl_master.cpp"
    "${TSML_PATH}/source/modules/polymer/mdl_master.h"
)
source_group("source\\modules\\polymer" FILES ${source__modules__polymer})

set(source__modules__vsmloc
    "${TSML_PATH}/source/modules/vsmloc/mdl_vsmloc.cpp"
    "${TSML_PATH}/source/modules/vsmloc/mdl_vsmloc.h"
    "${TSML_PATH}/source/modules/vsmloc/vsml_map.cpp"
    "${TSML_PATH}/source/modules/vsmloc/vsml_map.h"
)
source_group("source\\modules\\vsmloc" FILES ${source__modules__vsmloc})

set(source__modules__vsmloc__datafusion
    "${TSML_PATH}/source/modules/vsmloc/datafusion/data_adapter.h"
    "${TSML_PATH}/source/modules/vsmloc/datafusion/data_adapter_freespace.cpp"
    "${TSML_PATH}/source/modules/vsmloc/datafusion/data_adapter_freespace.h"
    "${TSML_PATH}/source/modules/vsmloc/datafusion/data_adapter_line.cpp"
    "${TSML_PATH}/source/modules/vsmloc/datafusion/data_adapter_line.h"
    "${TSML_PATH}/source/modules/vsmloc/datafusion/data_adapter_pld.cpp"
    "${TSML_PATH}/source/modules/vsmloc/datafusion/data_adapter_pld.h"
    "${TSML_PATH}/source/modules/vsmloc/datafusion/data_adapter_seg.cpp"
    "${TSML_PATH}/source/modules/vsmloc/datafusion/data_adapter_seg.h"
    "${TSML_PATH}/source/modules/vsmloc/datafusion/data_adapter_sonar.cpp"
    "${TSML_PATH}/source/modules/vsmloc/datafusion/data_adapter_sonar.h"
    "${TSML_PATH}/source/modules/vsmloc/datafusion/data_adapter_staticobj.cpp"
    "${TSML_PATH}/source/modules/vsmloc/datafusion/data_adapter_staticobj.h"
    "${TSML_PATH}/source/modules/vsmloc/datafusion/vsml_contactfusion.cpp"
    "${TSML_PATH}/source/modules/vsmloc/datafusion/vsml_contactfusion.h"
)
source_group("source\\modules\\vsmloc\\datafusion" FILES ${source__modules__vsmloc__datafusion})

set(source__modules__vsmloc__particals
    "${TSML_PATH}/source/modules/vsmloc/particals/pfAnalysis.cpp"
    "${TSML_PATH}/source/modules/vsmloc/particals/pfAnalysis.h"
    "${TSML_PATH}/source/modules/vsmloc/particals/pfloc_core.cpp"
    "${TSML_PATH}/source/modules/vsmloc/particals/pfloc_core.h"
    "${TSML_PATH}/source/modules/vsmloc/particals/pfloc_mew2.cpp"
    "${TSML_PATH}/source/modules/vsmloc/particals/pfloc_mew2.h"
    "${TSML_PATH}/source/modules/vsmloc/particals/pfloc_randgen.cpp"
    "${TSML_PATH}/source/modules/vsmloc/particals/pfloc_randgen.h"
    "${TSML_PATH}/source/modules/vsmloc/particals/pfloc_spyder.cpp"
    "${TSML_PATH}/source/modules/vsmloc/particals/pfloc_spyder.h"
    "${TSML_PATH}/source/modules/vsmloc/particals/pfloc_sum.cpp"
    "${TSML_PATH}/source/modules/vsmloc/particals/pfloc_sum.h"
    "${TSML_PATH}/source/modules/vsmloc/particals/pfloc_typedef.h"
)
source_group("source\\modules\\vsmloc\\particals" FILES ${source__modules__vsmloc__particals})

set(source__modules__vsmloc__refposer
    "${TSML_PATH}/source/modules/vsmloc/refposer/vsml_refpose.cpp"
    "${TSML_PATH}/source/modules/vsmloc/refposer/vsml_refpose.h"
)
source_group("source\\modules\\vsmloc\\refposer" FILES ${source__modules__vsmloc__refposer})

set(source__modules__vsmloc__reloc
    "${TSML_PATH}/source/modules/vsmloc/reloc/reloc.cpp"
    "${TSML_PATH}/source/modules/vsmloc/reloc/reloc.h"
)
source_group("source\\modules\\vsmloc\\reloc" FILES ${source__modules__vsmloc__reloc})

set(source__utils
    "${TSML_PATH}/source/utils/gnss_havp.cpp"
    "${TSML_PATH}/source/utils/gnss_havp.h"
    "${TSML_PATH}/source/utils/icp_loc.cpp"
    "${TSML_PATH}/source/utils/icp_loc.h"
    "${TSML_PATH}/source/utils/locPostionAnalysis.cpp"
    "${TSML_PATH}/source/utils/locPostionAnalysis.h"
    "${TSML_PATH}/source/utils/map_reloc_analysis.cpp"
    "${TSML_PATH}/source/utils/map_reloc_analysis.h"
    "${TSML_PATH}/source/utils/power_down_record.cpp"
    "${TSML_PATH}/source/utils/power_down_record.h"
    "${TSML_PATH}/source/utils/regtype.cpp"
    "${TSML_PATH}/source/utils/regtype.h"
    "${TSML_PATH}/source/utils/sliding_window.cpp"
    "${TSML_PATH}/source/utils/sliding_window.h"
    "${TSML_PATH}/source/utils/tsml_dim3.cpp"
    "${TSML_PATH}/source/utils/tsml_dim3.h"
    "${TSML_PATH}/source/utils/tsml_helper.cpp"
    "${TSML_PATH}/source/utils/tsml_helper.h"
    "${TSML_PATH}/source/utils/tsml_mmr.cpp"
    "${TSML_PATH}/source/utils/tsml_mmr.h"
    "${TSML_PATH}/source/utils/validation_check.cpp"
    "${TSML_PATH}/source/utils/validation_check.h"
    "${TSML_PATH}/source/utils/lidar_havp.cpp"
    "${TSML_PATH}/source/utils/lidar_havp.h"
)
source_group("source\\utils" FILES ${source__utils})

set(ALL_FILES
    ${no_group_source_files}
    ${interface}
    ${interface__data_recorder}
    ${interface__hmi}
    ${interface__map}
    ${output}
    ${source}
    ${source__core__kalmanfilter}
    ${source__core__vehmdl}
    ${source__modules__polymer}
    ${source__modules__vsmloc}
    ${source__modules__vsmloc__datafusion}
    ${source__modules__vsmloc__particals}
    ${source__modules__vsmloc__refposer}
    ${source__modules__vsmloc__reloc}
    ${source__utils}
)


################################################################################
# Include directories
################################################################################
include_directories(
        "${TSML_PATH}/adapter/map;"
        "${TSML_PATH}/adapter/windows;"
        "${TSML_PATH}/source;"
        "${TSML_PATH}/interface;"
        "${TSML_PATH}/3rdparty;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/utility/helper;"
        "${COMM_PATH}/thirdparty/avpmap/interface;"
        "${COMM_PATH}/thirdparty;"
        "${COMM_PATH}/source/utility;"
        "${COMM_PATH}/source/interface;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/thirdparty/avpmap/source;"
        "${COMM_PATH}/source/interface/schedule;"
        "${TSML_PATH}/3rdparty/avpmap/source;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/interface/hmi;"
        "${FW_SDK_PATH}/service/opencv/include;"
        "${COMM_PATH}/source/interface/math;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/interface/avpmap;"
        "${COMM_PATH}/thirdparty/Eigen"
        "${COMM_PATH}/source/utility/pk_common"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
	${COMM_PATH}/source/interface/iogateway
	${COMM_PATH}/source/CommunicationManager/CommonComm
 
)


################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
	${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/localization/")

if(MSVC)
    set(LIBRARIES
        sp_comm
        frameworkbase
        display
        mapservice
        ${${PROJECT_NAME}_link_libraries}
    )
else()
    set(LIBRARIES
        sp_comm
        frameworkbase
        #display #TBD
        mapservice
        ${${PROJECT_NAME}_link_libraries}
    )
endif()

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE
            "_PLATFORM_FW030_;"
            "_LOC_DISPLAY_=1;"
            "CPU_ONLY;"
            "OPENCV;"
            "_TSML_;"
            "_USE_COMDR_;"
            "x_VSML_COMDR_GT_DEBUG_;"
            "x_VSML_INIT_POSE_CHECK_"
            "_CRT_SECURE_NO_WARNINGS;"
            "MODULER_EXPORTS;"
            "WIN32;"
            "NDEBUG;"
            "SPOS_WIN;"
            "_USRDLL;"
            "VIDEOCAPTURE_EXPORTS;"
            "_SCL_SECURE_NO_WARNINGS;"
            "_MBCS"
)
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE "OPENCV=1;_USE_COMDR_;_TSML_;_UINIT_64_T_") #_LOC_DISPLAY_ ENABLE_FOXGLOVE_SHOW
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /MD;
                        /GL-;
                        /sdl-;
                        /wd4091
                        /Od;
                        /Oi;
                        /Gy;
                        /W3;
                        /wd4819;
                        /wd4005;
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

if(MSVC)
    add_dependencies(${PROJECT_NAME}
        frameworkbase
        display
        sp_comm
        mapservice
    )
else()
    add_dependencies(${PROJECT_NAME}
        frameworkbase
        #display #TBD
        sp_comm
        mapservice
    )
endif()
