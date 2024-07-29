project(webots_connector)

################################################################################
# Source groups
################################################################################
set(algo_core__webots_sim
    "${TOOLS_PATH}/webots_simulation/webots_connector/src/algo_core/webots_sim/webots_sim_avp.cpp"
    "${TOOLS_PATH}/webots_simulation/webots_connector/src/algo_core/webots_sim/webots_sim_avp.h"
    "${TOOLS_PATH}/webots_simulation/webots_connector/src/algo_core/webots_sim/webots_sim_core.cpp"
    "${TOOLS_PATH}/webots_simulation/webots_connector/src/algo_core/webots_sim/webots_sim_core.h"
)
source_group("algo_core\\webots_sim" FILES ${algo_core__webots_sim})

set(algo_interface
    "${TOOLS_PATH}/webots_simulation/webots_connector/src/algo_interface/wbtcnt_algo_interface.cpp"
    "${TOOLS_PATH}/webots_simulation/webots_connector/src/algo_interface/wbtcnt_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${TOOLS_PATH}/webots_simulation/webots_connector/src/spaceos_interface/webots_connector_io_adaptor.cpp"
    "${TOOLS_PATH}/webots_simulation/webots_connector/src/spaceos_interface/webots_connector_spaceos.cpp"
    "${TOOLS_PATH}/webots_simulation/webots_connector/src/spaceos_interface/webots_connector_spaceos.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(ALL_FILES
    ${algo_core__webots_sim}
    ${algo_interface}
    ${spaceos_interface}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${TOOLS_PATH}/webots_simulation/webots_connector/src/algo_interface/"
    "${TOOLS_PATH}/webots_simulation/webots_connector/src/spaceos_interface/"
    "${TOOLS_PATH}/webots_simulation/webots_connector/src/"
    "${COMM_PATH}/source/interface;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/cnn;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/utility;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/utility/pk_common;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/tools/"
    "${COMM_PATH}/thirdparty/opencv300/include"
    "${COMM_PATH}/source/utility/vehmdl"

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
    opencv_world300
    ${${PROJECT_NAME}_link_libraries}
)

link_directories(
    "${COMM_PATH}/thirdparty/opencv300/lib/x64/vc11/lib;"
    ${${PROJECT_NAME}_link_directories})
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "hmi")

################################################################################
# Compile definitions
################################################################################

target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;SPOS_WIN;_USRDLL;VIDEOCAPTURE_EXPORTS;_SCL_SECURE_NO_WARNINGS;OPENCV=1;OPENCV300=1")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "")
endif()

################################################################################
# Dependencies
################################################################################
add_dependencies(${PROJECT_NAME}
    comm
    frameworkbase
)
