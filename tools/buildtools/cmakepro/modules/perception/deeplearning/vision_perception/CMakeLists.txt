project(vision_perception)

################################################################################
# Source groups
################################################################################
set(algo_interface
    "${VISION_PERCEPTION_PATH}/source/algo_interface/vision_perception_algo_interface.cpp"
    "${VISION_PERCEPTION_PATH}/source/algo_interface/vision_perception_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${VISION_PERCEPTION_PATH}/source/spaceos_interface/fw_vision_perception.cpp"
    "${VISION_PERCEPTION_PATH}/source/spaceos_interface/fw_vision_perception.h"
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
        "${VISION_PERCEPTION_PATH}/source;"
        "${COMM_PATH}/source/utility/pk_common;"
        "${COMM_PATH}/source/interface/cnn;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/interface/avm;"
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
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/deeplearning")

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
        "__VISION_PERCEPTION__DEBUG_;"
        "_VISION_PERCEPTION_;"
        "_CRT_NONSTDC_NO_DEPRECATE;"
        "_CRT_SECURE_NO_WARNINGS;"
        "NDEBUG;"
        "MODULER_EXPORTS;"
        "SPOS_WIN"
        "_CONSOLE;"
        "UNICODE;"
        "_UNICODE"
)
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "-D_VISION_PERCEPTION_")
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
                        /INCREMENTAL:NO
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
