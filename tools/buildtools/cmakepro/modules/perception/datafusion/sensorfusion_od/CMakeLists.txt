project(sensorfusion_od)

################################################################################
# Source groups
################################################################################

set(algo_core
    "${SENSORFUSION_OD_PATH}/source/algo_core/sensorfusion_od_algo_core.cpp"
    "${SENSORFUSION_OD_PATH}/source/algo_core/sensorfusion_od_algo_core.h"
)
source_group("algo_core" FILES ${algo_core})

set(algo_core__framework
    "${SENSORFUSION_OD_PATH}/source/algo_core/sensorfusion_od_ibase.h"
)
source_group("algo_core\\framework" FILES ${algo_core__framework})

set(algo_core__primitives
    "${SENSORFUSION_OD_PATH}/source/algo_core/sensorfusion_od_commtypedef.h"
    "${SENSORFUSION_OD_PATH}/source/algo_core/sensorfusion_od_dataforward.h"
)
source_group("algo_core\\primitives" FILES ${algo_core__primitives})

set(algo_core__utils
    "${SENSORFUSION_OD_PATH}/source/algo_core/sensorfusion_od_debugshow.cpp"
    "${SENSORFUSION_OD_PATH}/source/algo_core/sensorfusion_od_debugshow.h"
    "${SENSORFUSION_OD_PATH}/source/algo_core/sensorfusion_od_helper.cpp"
    "${SENSORFUSION_OD_PATH}/source/algo_core/sensorfusion_od_helper.h"
    "${SENSORFUSION_OD_PATH}/source/algo_core/sensorfusion_od_transport.cpp"
    "${SENSORFUSION_OD_PATH}/source/algo_core/sensorfusion_od_transport.h"
)
source_group("algo_core\\utils" FILES ${algo_core__utils})

set(algo_interface
    "${SENSORFUSION_OD_PATH}/source/algo_interface/sensorfusion_od_algo_inputdata.h"
    "${SENSORFUSION_OD_PATH}/source/algo_interface/sensorfusion_od_algo_interface.cpp"
    "${SENSORFUSION_OD_PATH}/source/algo_interface/sensorfusion_od_algo_interface.h"
    "${SENSORFUSION_OD_PATH}/source/algo_interface/sensorfusion_od_dataconfig.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${SENSORFUSION_OD_PATH}/source/spaceos_interface/sensorfusion_od_spaceos_interface.cpp"
    "${SENSORFUSION_OD_PATH}/source/spaceos_interface/sensorfusion_od_spaceos_interface.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(spaceos_interface__dataconnect
    "${SENSORFUSION_OD_PATH}/source/spaceos_interface/sensorfusion_od_spaceos_dataconnect.cpp"
    "${SENSORFUSION_OD_PATH}/source/spaceos_interface/sensorfusion_od_spaceos_dataconnect.h"
)
source_group("spaceos_interface\\dataconnect" FILES ${spaceos_interface__dataconnect})

set(spaceos_interface__datarecord
    "${SENSORFUSION_OD_PATH}/source/spaceos_interface/sensorfusion_od_spaceos_datarecord.cpp"
    "${SENSORFUSION_OD_PATH}/source/spaceos_interface/sensorfusion_od_spaceos_datarecord.h"
)
source_group("spaceos_interface\\datarecord" FILES ${spaceos_interface__datarecord})

set(ALL_FILES
    ${algo_core}
    ${algo_core__framework}
    ${algo_core__primitives}
    ${algo_core__utils}
    ${algo_interface}
    ${spaceos_interface}
    ${spaceos_interface__dataconnect}
    ${spaceos_interface__datarecord}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${SENSORFUSION_OD_PATH}/source/algo_interface;"
    "${SENSORFUSION_OD_PATH}/source/algo_core;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/schedule;"
    "${COMM_PATH}/source/interface/math;"
    "${COMM_PATH}/source/interface/gpu3d;"
    "${COMM_PATH}/source/interface/ml;"
    "${COMM_PATH}/source/utility;"
    "${COMM_PATH}/source/utility/avm;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/utility/vehmdl;"
    "${COMM_PATH}/source/utility/kalman;"
    "${COMM_PATH}/source/utility/math;"
    "${COMM_PATH}/source/utility/data_association;"
    "${COMM_PATH}/source/utility/mmr;"
    "${COMM_PATH}/source/utility/imgmorph	;"
    "${COMM_PATH}/source/interface;"
    "${COMM_PATH}/source/utility/pk_common;"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}  ${${PROJECT_NAME}_CXX_FLAGS} -DOPENCV=1 -D_UINIT_64_T_") 

if(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -DOPENCV300=1 -DVIDEOCAPTURE_EXPORTS -D_USRDLL -D_COMM_ -D_MBCS")
endif()


################################################################################
# Target
################################################################################
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/datafusion")

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





#target_link_libraries(comm PRIVATE ${LIBRARIES})
