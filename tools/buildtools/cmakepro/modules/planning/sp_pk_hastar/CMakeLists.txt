project(sp_pk_hastar)

################################################################################
# Source groups
################################################################################
set(algo_core
    "${SP_PK_HASTAR_PATH}/source/algo_core/clc_apa_para_planner.cpp"
    "${SP_PK_HASTAR_PATH}/source/algo_core/clc_apa_para_planner.h"
    "${SP_PK_HASTAR_PATH}/source/algo_core/clc_apa_vert_planner.cpp"
    "${SP_PK_HASTAR_PATH}/source/algo_core/clc_apa_vert_planner.h"
    "${SP_PK_HASTAR_PATH}/source/algo_core/hastar_apa_planner.cpp"
    "${SP_PK_HASTAR_PATH}/source/algo_core/hastar_apa_planner.h"
    # "${SP_PK_HASTAR_PATH}/source/algo_core/hastar_planner_tester.cpp"
    # "${SP_PK_HASTAR_PATH}/source/algo_core/hastar_planner_tester.h"
)
source_group("algo_core" FILES ${algo_core})

set(algo_interface
    "${SP_PK_HASTAR_PATH}/source/algo_interface/sp_pk_hastar_algo_interface.cpp"
    "${SP_PK_HASTAR_PATH}/source/algo_interface/sp_pk_hastar_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${SP_PK_HASTAR_PATH}/source/spaceos_interface/sp_pk_hastar_spaceos_interface.cpp"
    "${SP_PK_HASTAR_PATH}/source/spaceos_interface/sp_pk_hastar_spaceos_interface.h"
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
    "${SP_PK_HASTAR_PATH}/source;"
    "${FW_SDK_PATH}/service/opencv/include;"

    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/interface/avpmap;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/utility/pk_common;"
    "${COMM_PATH}/thirdparty/Eigen;"
    # "${COMM_PATH}/thirdparty/opencv300/include;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/thirdparty/hastar;"
    "${COMM_PATH}/source/utility/helper;"
    "${COMM_PATH}/source/utility/math"

	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
	${platform_launcher_include_directories}
)

################################################################################
# Target
################################################################################
set(LIBRARIES
    sp_comm
    frameworkbase
    opencv_service
    libhastar
    ${${PROJECT_NAME}_link_libraries}
)

link_directories(${${PROJECT_NAME}_link_directories} ${OUTPUT_PATH})
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "planning")

################################################################################
# Compile definitions
################################################################################

target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "NDEBUG;_CONSOLE;MODULER_EXPORTS;SPOS_WIN;_SP_PK_HASTAR_;_CRT_SECURE_NO_WARNINGS;OPENCV;_SP_PK_HASTAR_;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "_SP_PK_HASTAR_;OPENCV=1;")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /MP;
                        /GL-;
                        /Od;
                        /Oi;
                        /Gy;
                        /openmp;
                        /permissive-;
                        /sdl;
                        /W3;
                        /MD;
						${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
						${DEFAULT_CXX_EXCEPTION_HANDLING};
						)

target_link_options(${PROJECT_NAME} PRIVATE
                        /OPT:REF;
                        /OPT:ICF;
                        /INCREMENTAL:NO;
                        /DEBUG;
                        /SUBSYSTEM:WINDOWS;
						)
endif()

################################################################################
# Dependencies
################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
    frameworkbase
)