project(sp_pk_meb)

################################################################################
# Source groups
################################################################################

set(algo_core
    "${SP_PK_MEB_PATH}/source/algo_core/meb_types.h"
    "${SP_PK_MEB_PATH}/source/algo_core/meb_util.c"
    "${SP_PK_MEB_PATH}/source/algo_core/meb_util.h"
    "${SP_PK_MEB_PATH}/source/algo_core/PK_Meb.cpp"
    "${SP_PK_MEB_PATH}/source/algo_core/PK_Meb.h"
)
source_group("algo_core" FILES ${algo_core})

set(algo_interface
    "${SP_PK_MEB_PATH}/source/algo_interface/sp_pk_meb_algo_interface.c"
    "${SP_PK_MEB_PATH}/source/algo_interface/sp_pk_meb_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${SP_PK_MEB_PATH}/../../common/comm/source/interface/algo/sp_pk_meb_interface.h"
    "${SP_PK_MEB_PATH}/source/spaceos_interface/sp_pk_meb_debug_show.cpp"
    "${SP_PK_MEB_PATH}/source/spaceos_interface/sp_pk_meb_debug_show.h"
    "${SP_PK_MEB_PATH}/source/spaceos_interface/sp_pk_meb_spaceos_interface.cpp"
    "${SP_PK_MEB_PATH}/source/spaceos_interface/sp_pk_meb_spaceos_interface.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${algo_core}
    ${algo_interface}
    ${spaceos_interface}
)
################################################################################
# Include directories
################################################################################
include_directories(
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/math;"
    "${COMM_PATH}/thirdparty/opencv410/include;"
    "${COMM_PATH}/source/utility/avmimage;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/utility/pk_common;"
    "${FW_SDK_PATH}/service/opencv/include;"
    "${SP_PK_MEB_PATH}/source;"
    "${COMM_PATH}/source/utility/helper"
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
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "decision")

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
target_compile_definitions(${PROJECT_NAME} PRIVATE  "_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_WINDOWS;_USRDLL;SPOS_WIN;VIDEOCAPTURE_EXPORTS;OPENCV=1;HAVE_STRUCT_TIMESPEC;_MEB_DISPLAY_;_SP_PK_MEB_;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE   "")

endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Oi;
                        /Gy;
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
    frameworkbase
    comm
    opencv_service
)