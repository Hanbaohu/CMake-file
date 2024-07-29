project(data_visualization)

################################################################################
# Source groups
################################################################################
set(header
    "${HMI_DATA_VISUALIZATION_PATH}/source/data_visualization.h"
    "${HMI_DATA_VISUALIZATION_PATH}/source/data_visualization_changcheng.h"
    "${HMI_DATA_VISUALIZATION_PATH}/source/data_visualization_default.h"
    "${HMI_DATA_VISUALIZATION_PATH}/source/data_visualization_hezhong.h"
    "${HMI_DATA_VISUALIZATION_PATH}/source/data_visualization_interface.h"
    "${HMI_DATA_VISUALIZATION_PATH}/source/data_visualization_manager.h"
    "${HMI_DATA_VISUALIZATION_PATH}/source/data_visualization_tianji.h"
    "${HMI_DATA_VISUALIZATION_PATH}/source/parkinglot.h"
    "${HMI_DATA_VISUALIZATION_PATH}/source/upload_data_manager.h"
#     "framework.h"
)
source_group("头文件" FILES ${header})

set(src
    "${HMI_DATA_VISUALIZATION_PATH}/source/data_visualization.cpp"
    "${HMI_DATA_VISUALIZATION_PATH}/source/data_visualization_changcheng.cpp"
    "${HMI_DATA_VISUALIZATION_PATH}/source/data_visualization_default.cpp"
    "${HMI_DATA_VISUALIZATION_PATH}/source/data_visualization_hezhong.cpp"
    "${HMI_DATA_VISUALIZATION_PATH}/source/data_visualization_manager.cpp"
    "${HMI_DATA_VISUALIZATION_PATH}/source/data_visualization_tianji.cpp"
    "${HMI_DATA_VISUALIZATION_PATH}/source/upload_data_manager.cpp"
#     "dllmain.cpp"
)
source_group("源文件" FILES ${})

set(ALL_FILES
    ${header}
    ${src}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${HMI_DATA_VISUALIZATION_PATH}/source/algo_interface;"
        "${HMI_DATA_VISUALIZATION_PATH}/source/algo_core;"
        "${HMI_DATA_VISUALIZATION_PATH}/spaceos_interface;"
        "${COMM_PATH}/source/interface;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/utility;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/utility/pk_common;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/utility/operational_design_domain"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${${PROJECT_NAME}_CXX_FLAGS}")

if(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -D_USRDLL -D_MBCS")
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
