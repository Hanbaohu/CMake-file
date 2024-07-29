project(apa_debug_monitor)

################################################################################
# Source groups
################################################################################

set(algo_core__carsonarsim
    "${APA_DEBUG_MONITOR_PATH}/source/algo_core/carsonarsim/ism_apa_comm.cpp"
    "${APA_DEBUG_MONITOR_PATH}/source/algo_core/carsonarsim/ism_apa_comm.h"
    "${APA_DEBUG_MONITOR_PATH}/source/algo_core/carsonarsim/ism_carsonarsim.cpp"
    "${APA_DEBUG_MONITOR_PATH}/source/algo_core/carsonarsim/ism_carsonarsim.h"
)
source_group("algo_core\\carsonarsim" FILES ${algo_core__carsonarsim})

set(algo_core__carsonarsim__simtype
    "${APA_DEBUG_MONITOR_PATH}/source/algo_core/carsonarsim/simtype/ism_curve.h"
    "${APA_DEBUG_MONITOR_PATH}/source/algo_core/carsonarsim/simtype/ism_sim_car.h"
    "${APA_DEBUG_MONITOR_PATH}/source/algo_core/carsonarsim/simtype/ism_sim_datatype.h"
)
source_group("algo_core\\carsonarsim\\simtype" FILES ${algo_core__carsonarsim__simtype})

set(algo_core__main
    "${APA_DEBUG_MONITOR_PATH}/source/algo_core/main/ism_algomain.cpp"
    "${APA_DEBUG_MONITOR_PATH}/source/algo_core/main/ism_algomain.h"
)
source_group("algo_core\\main" FILES ${algo_core__main})

set(algo_core__primitives
    "${APA_DEBUG_MONITOR_PATH}/source/algo_core/primitives/dataforward.h"
)
source_group("algo_core\\primitives" FILES ${algo_core__primitives})

set(algo_interface
    "${APA_DEBUG_MONITOR_PATH}/source/algo_interface/ism_algo_interface.cpp"
    "${APA_DEBUG_MONITOR_PATH}/source/algo_interface/ism_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})


set(spaceos_interface
    "${APA_DEBUG_MONITOR_PATH}/source/spaceos_interface/ism_space_interface.cpp"
    "${APA_DEBUG_MONITOR_PATH}/source/spaceos_interface/ism_space_interface.h"
    "${APA_DEBUG_MONITOR_PATH}/source/spaceos_interface/ism_space_stdafx.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(spaceos_interface__adaptor
    "${COMM_PATH}/source/utility/recorder/DataRecorder.cpp"
    "${APA_DEBUG_MONITOR_PATH}/source/spaceos_interface/ism_dataobserver.h"
    "${APA_DEBUG_MONITOR_PATH}/source/spaceos_interface/ism_io_adaptor.cpp"
    "${APA_DEBUG_MONITOR_PATH}/source/spaceos_interface/ism_io_adaptor.h"
)
source_group("spaceos_interface\\adaptor" FILES ${spaceos_interface__adaptor})

set(ALL_FILES
    ${algo_core__carsonarsim}
    ${algo_core__carsonarsim__simtype}
    ${algo_core__main}
    ${algo_core__primitives}
    ${algo_interface}
    ${spaceos_interface}
    ${spaceos_interface__adaptor}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${APA_DEBUG_MONITOR_PATH}/source/algo_interface;"
        "${APA_DEBUG_MONITOR_PATH}/source/algo_core;"
        "${APA_DEBUG_MONITOR_PATH}/spaceos_interface;"
        "${COMM_PATH}/source/interface;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/hmi/integrate_state_monitor;"
        "${COMM_PATH}/source/utility;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/utility/pk_common/include;"
        "${COMM_PATH}/source/utility/pk_common;"
        "${FW_SDK_PATH}/service/opencv/include"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${${PROJECT_NAME}_CXX_FLAGS} -DOPENCV=1  -D_UINIT_64_T_")

if(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -D_USRDLL -DOPENCV300=1 -D_MBCS")
endif()


################################################################################
# Target
################################################################################
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "hmi")

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
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
                        /INCREMENTAL:NO;
                    /DEBUG;
                    /SUBSYSTEM:WINDOWS
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################





#target_link_libraries(comm PUBLIC ${LIBRARIES})
