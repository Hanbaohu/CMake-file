project(segparse)

################################################################################
# Source groups
################################################################################

set(algo_core
    "${COMM_PATH}/source/interface/algo/segparse_embed_interface.h"
    "${COMM_PATH}/source/interface/cv/objpattern_datatype.h"
    "${COMM_PATH}/source/utility/data_association/data_associate.cpp"
    "${COMM_PATH}/source/utility/data_association/data_associate.h"
    "${COMM_PATH}/source/utility/imgmorph/imgmorph_ccana.cpp"
    "${COMM_PATH}/source/utility/imgmorph/imgmorph_ccana.h"
    "${COMM_PATH}/source/utility/imgmorph/imgmorph_img_proc.cpp"
    "${COMM_PATH}/source/utility/imgmorph/imgmorph_img_proc.h"
    "${COMM_PATH}/source/utility/math/Matrix.cpp"
    "${COMM_PATH}/source/utility/math/Matrix.h"
    "${SEGPARSE_PATH}/source/core/segparse_logger.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_logger.h"
    "${SEGPARSE_PATH}/source/core/segparse_main.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_main.h"
)
source_group("algo_core" FILES ${algo_core})

set(algo_interface
    "${SEGPARSE_PATH}/source/algo_interface/segparse_algo_interface_typedef.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(source
    "${SEGPARSE_PATH}/source/core/segparse_datatype.h"
)
source_group("source" FILES ${source})

set(source__core
    "${SEGPARSE_PATH}/source/core/segparse_parsecar.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_parsecurb.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_parsefspace.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_parseobstaclebound.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_parseparklock.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_parseped.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_parsepillar.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_parsespdbumps.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_parsestoper.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_parsetrafficcone.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_utils.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_utils.h"
)
source_group("source\\core" FILES ${source__core})

set(source__core__helper
    "${SEGPARSE_PATH}/source/core/segparse_parsecar_shape.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_parsecar_shape.h"
)
source_group("source\\core\\helper" FILES ${source__core__helper})

set(source__io
    "${SEGPARSE_PATH}/source/interface/segparse_fw.cpp"
    "${SEGPARSE_PATH}/source/interface/segparse_fw.h"
    "${SEGPARSE_PATH}/source/interface/segparse_od_warpper.cpp"
)
source_group("source\\io" FILES ${source__io})

set(source__line
    "${SEGPARSE_PATH}/source/core/segparse_line_descriptor.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_line_descriptor.h"
    "${SEGPARSE_PATH}/source/core/segparse_linefit.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_linefit.h"
)
source_group("source\\line" FILES ${source__line})

set(source__track
    "${SEGPARSE_PATH}/source/core/segparse_ekf.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_ekf.h"
    "${SEGPARSE_PATH}/source/core/segparse_tracker.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_tracker.h"
    "${SEGPARSE_PATH}/source/core/segparse_vehmm.cpp"
    "${SEGPARSE_PATH}/source/core/segparse_vehmm.h"
)
source_group("source\\track" FILES ${source__track})

set(source__windows
    "${SEGPARSE_PATH}/source/platform/windows/dllmain.cpp"
    "${SEGPARSE_PATH}/source/platform/windows/stdafx.cpp"
    "${SEGPARSE_PATH}/source/platform/windows/stdafx.h"
    "${SEGPARSE_PATH}/source/platform/windows/targetver.h"
)
source_group("source\\windows" FILES ${source__windows})

set(spaceos_interface__datarecord
    "${SEGPARSE_PATH}/source/spaceos_interface/segparse_datarecord.cpp"
    "${SEGPARSE_PATH}/source/spaceos_interface/segparse_datarecord.h"
)
source_group("spaceos_interface\\datarecord" FILES ${spaceos_interface__datarecord})

set(ALL_FILES
    ${algo_core}
    ${algo_interface}
    ${source}
    ${source__core}
    ${source__core__helper}
    ${source__io}
    ${source__line}
    ${source__track}
    ${source__windows}
    ${spaceos_interface__datarecord}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${SEGPARSE_PATH}/source/platform/windows;"
        "${SEGPARSE_PATH}/source/core;"
        "${SEGPARSE_PATH}/source/interface;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/interface/intrinsic_modeller;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/math;"
        "${COMM_PATH}/source/interface/ml;"
        "${COMM_PATH}/source/utility/imgmorph;"
        "${COMM_PATH}/source/utility/math;"
        "${COMM_PATH}/source/utility/data_association;"
        "${COMM_PATH}/source/utility/vehmdl;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/utility/helper;"
        "${COMM_PATH}/source/utility/pk_common;"
        "${FW_SDK_PATH}/service/opencv/include"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
    ${platform_launcher_include_directories}
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
            "X_SINGLE_BEV_FREESPACE_OUTPUT_;"
            "_SEGPARSE_;"
            "WIN32;"
            "NDEBUG;"
            "SPOS_WIN;"
            "VIDEOCAPTURE_EXPORTS;"
            "OPENCV;"
            "FCN_CAFFE=1;"
            "PC"
            "_CRT_SECURE_NO_WARNINGS;"
            "MODULER_EXPORTS;"
            "_WINDOWS;"
            "_USRDLL;"
            "_SCL_SECURE_NO_WARNINGS;"
            "_MBCS"
)
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "BEV_VER;_SEGPARSE_;OPENCV=1;_ON_TDA4_OPENCV_;_UINIT_64_T_")
endif()


################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Oi;
                        /Gy;
                        /wd4819;
                        /Od;
                        /sdl;
                        /W3;
                        /Y-;
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
    frameworkbase
    sp_comm
    opencv_service
)
