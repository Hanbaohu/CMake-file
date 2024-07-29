project(SNAVI_Lane_Analysis)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${SNAVI_LANE_ANALYSIS_PATH}/source/snavi_lane_analysis_embed_interface.h"
)
source_group("" FILES ${no_group_source_files})

set(algo_core
    "${SNAVI_LANE_ANALYSIS_PATH}/source/algo_core/snavi_lane_analysis_algo_core.cpp"
    "${SNAVI_LANE_ANALYSIS_PATH}/source/algo_core/snavi_lane_analysis_algo_core.h"
)
source_group("algo_core" FILES ${algo_core})

set(algo_interface
    "${SNAVI_LANE_ANALYSIS_PATH}/source/algo_interface/snavi_lane_analysis_algo_inputdata.h"
    "${SNAVI_LANE_ANALYSIS_PATH}/source/algo_interface/snavi_lane_analysis_algo_interface.cpp"
    "${SNAVI_LANE_ANALYSIS_PATH}/source/algo_interface/snavi_lane_analysis_algo_interface.h"
    "${SNAVI_LANE_ANALYSIS_PATH}/source/algo_interface/snavi_lane_analysis_dataconfig.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${SNAVI_LANE_ANALYSIS_PATH}/source/spaceos_interface/snavi_lane_analysis_spaceos_dataconnect.cpp"
    "${SNAVI_LANE_ANALYSIS_PATH}/source/spaceos_interface/snavi_lane_analysis_spaceos_dataconnect.h"
    "${SNAVI_LANE_ANALYSIS_PATH}/source/spaceos_interface/snavi_lane_analysis_spaceos_datarecord.cpp"
    "${SNAVI_LANE_ANALYSIS_PATH}/source/spaceos_interface/snavi_lane_analysis_spaceos_datarecord.h"
    "${SNAVI_LANE_ANALYSIS_PATH}/source/spaceos_interface/snavi_lane_analysis_spaceos_interface.cpp"
    "${SNAVI_LANE_ANALYSIS_PATH}/source/spaceos_interface/snavi_lane_analysis_spaceos_interface.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${no_group_source_files}
    ${algo_core}
    ${algo_interface}
    ${spaceos_interface}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${SNAVI_LANE_ANALYSIS_PATH}/source/algo_interface;"
    "${SNAVI_LANE_ANALYSIS_PATH}/source/algo_core;"
    "${SNAVI_LANE_ANALYSIS_PATH}/source/spaceos_interface;"
    "${SNAVI_LANE_ANALYSIS_PATH}/source;"

    "${COMM_PATH}/source/interface;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/utility;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/utility/pk_common;"
    "${COMM_PATH}/source/interface/cv;"
    "${FW_PATH}/service/opencv/include;"
    "${COMM_PATH}/thirdparty/opencv300/include;"
    "${COMM_PATH}/thirdparty/opencv300/include/opencv;"
    "${COMM_PATH}/thirdparty/opencv300/include/opencv2"

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
    comm
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
                        "_CRT_SECURE_NO_WARNINGS;"
                        "MODULER_EXPORTS;"
                        "WIN32;"
                        "NDEBUG;"
                        "SPOS_WIN;"
                        "VIDEOCAPTURE_EXPORTS;"
                        "_SCL_SECURE_NO_WARNINGS;"
                        "OPENCV=1;"
                        "OPENCV300=1;"
                        "_LANE_DEBUG_SHOW;"
                        "_MBCS"
)
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /GL-;
                        /Oi;
                        /Gy;
                        /wd4819;
                        /wd4005;
                        /Y-;
                        /permissive-;
                        /Od;
                        /sdl;
                        /W3;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                    /OPT:REF;
                    /OPT:ICF;
                    /INCREMENTAL:NO
                    /DEBUG;
                    /SUBSYSTEM:WINDOWS
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    frameworkbase
    comm
    opencv_service
)
