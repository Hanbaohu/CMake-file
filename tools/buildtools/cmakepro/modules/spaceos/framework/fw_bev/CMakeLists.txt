project(fw_bev)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${FW_SDK_PATH}/fw_bev/src/fw_bev.cpp"
    "${FW_SDK_PATH}/fw_bev/src/fw_bev.h"
)
source_group("" FILES ${no_group_source_files})

set(core
    "${FW_SDK_PATH}/fw_bev/src/bev_datainput.cpp"
    "${FW_SDK_PATH}/fw_bev/src/bev_datainput.h"
)
source_group("core" FILES ${core})

set(ALL_FILES
    ${no_group_source_files}
    ${core}
)

################################################################################
# Include directories
################################################################################
include_directories(
    " ${COMM_PATH}/source/interface/common;"
    " ${COMM_PATH}/source/interface/algo;"
    " ${COMM_PATH}/source/interface/avm;"
    " ${COMM_PATH}/source/interface/cv;"
    " ${COMM_PATH}/source/interface/smc;"
    "${FW_SDK_PATH}/service/opencv/include;"
    " ${COMM_PATH}/source/utility/avmimage;"
    " ${COMM_PATH}/source/utility/dim3;"
    " ${COMM_PATH}/source/utility/helper;"
    " ${COMM_PATH}/source/utility/bev"
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
    ${${PROJECT_NAME}_link_libraries}
)
link_directories(${${PROJECT_NAME}_link_directories})
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/framework")

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "BEV_DEBUG_SHOW=0;_CRT_NONSTDC_NO_DEPRECATE;_CRT_SECURE_NO_WARNINGS;NODEBUG;SPOS_WIN;_USRDLL;MODULER_EXPORTS;_fw_bev_;OPENCV=1;OPENCV300=1;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "BEV_DEBUG_SHOW=0;OPENCV=1;_UINIT_64_T_;_fw_bev_")
endif()


################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /O2;
                        /Oi;
                        /Gy;
                        /sdl;
                        /W3;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        /Y-
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
)
