project(SP_PK_SlotDetect)

################################################################################
# Source groups
################################################################################

set(algo_core
    "${SP_PK_SLOTDETECT_PATH}/source/algo_core/AVM_SlotDetect.cpp"
    "${SP_PK_SLOTDETECT_PATH}/source/algo_core/AVM_SlotDetect.h"
    "${SP_PK_SLOTDETECT_PATH}/source/algo_core/GridMap_SlotDetect.cpp"
    "${SP_PK_SLOTDETECT_PATH}/source/algo_core/GridMap_SlotDetect.h"
    "${SP_PK_SLOTDETECT_PATH}/source/algo_core/PK_Calibration_SlotDetect.cpp"
    "${SP_PK_SLOTDETECT_PATH}/source/algo_core/PK_Calibration_SlotDetect.h"
    "${SP_PK_SLOTDETECT_PATH}/source/algo_core/PK_SD_Common.cpp"
    "${SP_PK_SLOTDETECT_PATH}/source/algo_core/PK_SD_Common.h"
    "${SP_PK_SLOTDETECT_PATH}/source/algo_core/PK_SlotDetect.cpp"
    "${SP_PK_SLOTDETECT_PATH}/source/algo_core/PK_SlotDetect.h"
    "${SP_PK_SLOTDETECT_PATH}/source/algo_core/SlotInfo_Manager.cpp"
    "${SP_PK_SLOTDETECT_PATH}/source/algo_core/SlotInfo_Manager.h"
    "${SP_PK_SLOTDETECT_PATH}/source/algo_core/URadar_SlotDetect.cpp"
    "${SP_PK_SLOTDETECT_PATH}/source/algo_core/URadar_SlotDetect.h"
)
source_group("algo_core" FILES ${algo_core})

set(algo_interface
    "${SP_PK_SLOTDETECT_PATH}/source/algo_interface/sp_pk_slotdetect_algo_interface.cpp"
    "${SP_PK_SLOTDETECT_PATH}/source/algo_interface/sp_pk_slotdetect_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${SP_PK_SLOTDETECT_PATH}/source/spaceos_interface/sp_pk_slotdetect_spaceos_interface.cpp"
    "${SP_PK_SLOTDETECT_PATH}/source/spaceos_interface/sp_pk_slotdetect_spaceos_interface.h"
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
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/utility/avmimage;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/interface;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/cnn;"
        "${COMM_PATH}/source/interface/debug;"
        "${FW_SDK_PATH}/service/opencv/include;"
        "${COMM_PATH}/source/utility/pk_common"
	    "${COMM_PATH}/source/utility/recorder"
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
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/datafusion")

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
target_compile_definitions(${PROJECT_NAME} PRIVATE  _TRUST_AVM_;_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_WINDOWS;_USRDLL;SPOS_WIN;VIDEOCAPTURE_EXPORTS;OPENCV=1;HAVE_STRUCT_TIMESPEC;_DEBUG_DISPLAY_;_SP_PK_SLOTDETECT_;)
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE  "OPENCV=1;HAVE_STRUCT_TIMESPEC;_UINT64_DEFINED;_DEBUG_DISPLAY_;_SP_PK_SLOTDETECT_;_ON_TDA4_OPENCV_;")

endif()


################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Oi;
                        /Gy;
                        /wd4819;
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
                        /INCREMENTAL:NO;
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

