project(reversing_assistant)

################################################################################
# Source groups
################################################################################
set(src
    "${REVERSING_ASSISTANT_PATH}/source/algo_core/process.cpp"
    "${REVERSING_ASSISTANT_PATH}/source/algo_interface/reversing_assistant_algo_interface.cpp"
    "${REVERSING_ASSISTANT_PATH}/source/spaceos_interface/reversing_assistant_spaceos_interface.cpp"
)
source_group("源文件" FILES ${})

set(ALL_FILES
    ${src}
)
################################################################################
# Include directories
################################################################################
include_directories(
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/utility/pk_common;"
    "${REVERSING_ASSISTANT_PATH}/algo_core;"
    "${REVERSING_ASSISTANT_PATH}/algo_interface;"
    "${REVERSING_ASSISTANT_PATH}/spaceos_interface;"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${${PROJECT_NAME}_CXX_FLAGS}")

if(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS   -D_CONSOLE -D_MBCS")
endif()


################################################################################
# Target
################################################################################
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/localization/reversing_assistant")

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





#target_link_libraries(comm PUBLIC ${LIBRARIES})
