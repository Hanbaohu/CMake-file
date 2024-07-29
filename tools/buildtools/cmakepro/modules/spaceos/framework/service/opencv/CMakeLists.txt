project(opencv_service)

################################################################################
# Source groups
################################################################################
set(header
    "${FW_SDK_PATH}/service/opencv/include/opencv_service.h"
)
source_group("头文件" FILES ${header})

set(src
    "${FW_SDK_PATH}/service/opencv/src/opencv_service.cpp"
)
source_group("源文件" FILES ${src})

set(ALL_FILES
    ${header}
    ${src}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${FW_SDK_PATH}/service/opencv/include;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/cv"
    ${platform_opencv_include_directories}

)

################################################################################
# Target
################################################################################
link_directories(
    ${opencv_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/framework/service")

set(LIBRARIES
    sp_comm
    ${opencv_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE SPOS_WIN;OPENCV=1;OPENCV300=1;MODULER_EXPORTS;NDEBUG;_WINDOWS;_USRDLL;OPENCV_IM_SHOW=1;)
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE "OPENCV=1;_UINT64_DEFINED;OPENCV_IM_SHOW=1;")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /O2;
                        /Oi;
                        /Gy;
                        /Y-;
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
                    /SUBSYSTEM:WINDOWS
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
)