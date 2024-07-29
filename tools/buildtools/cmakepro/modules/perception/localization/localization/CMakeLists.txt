project(localization)

################################################################################
# Source groups
################################################################################
set(algo_interface
    "${LOCALIZATION_PATH}/source/algo_interface/sp_localization_algo_interface.cpp"
    "${LOCALIZATION_PATH}/source/algo_interface/sp_localization_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${LOCALIZATION_PATH}/source/spaceos_interface/sp_localization_spaceos_interface.cpp"
    "${LOCALIZATION_PATH}/source/spaceos_interface/sp_localization_spaceos_interface.h"
    "${LOCALIZATION_PATH}/source/spaceos_interface/localization_data_recorder/localization_datarecorder.cpp"
    "${LOCALIZATION_PATH}/source/spaceos_interface/localization_data_recorder/localization_datarecord.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${algo_interface}
    ${spaceos_interface}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/utility/dim3;"
        "${LOCALIZATION_PATH}/source;"
        "${COMM_PATH}/source/utility/pk_common"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
	${LOCALIZATION_PATH}/source/spaceos_interface/
	${COMM_PATH}/source/utility/recorder/

)

################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
	${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/localization")

set(LIBRARIES
    frameworkbase
    sp_comm
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE
        "_LOG_LOCALIZATION_;"
        "_CRT_NONSTDC_NO_DEPRECATE;"
        "_CRT_SECURE_NO_WARNINGS;"
        "NDEBUG;"
        "MODULER_EXPORTS;"
        "SPOS_WIN;"
        "_MBCS"
        "_CONSOLE"
)
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "-D_LOG_LOCALIZATION_")
endif()


################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Od;
                        /Oi;
                        /Gy;
                        /permissive-;
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
                    /SUBSYSTEM:CONSOLE
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    frameworkbase
    sp_comm
)
