project(diagnostic_service)

################################################################################
# Source groups
################################################################################
source_group("头文件" FILES ${})

set(src
    "${FW_SDK_PATH}/service/diagnostic/src/diagnostic.cpp"
    "${FW_SDK_PATH}/service/diagnostic/src/diagnostic_changcheng.cpp"
    "${FW_SDK_PATH}/service/diagnostic/src/diagnostic_default.cpp"
    "${FW_SDK_PATH}/service/diagnostic/src/diagnostic_hezhong.cpp"
    "${FW_SDK_PATH}/service/diagnostic/src/diagnostic_manager.cpp"
    "${FW_SDK_PATH}/service/diagnostic/src/diagnostic_tianji.cpp"
    # "dllmain.cpp"
    # "pch.cpp"
)
source_group("源文件" FILES ${})

set(ALL_FILES
    ${src}
    ${${PROJECT_NAME}_src_files}
)
################################################################################
# Include directories
################################################################################
include_directories(
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/utility/vehmdl;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/thirdparty/rapidjson/include/rapidjson;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/utility/pk_common;"
    "${COMM_PATH}/source/interface/cnn;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/avm"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${${PROJECT_NAME}_C_FLAGS} ") 

if(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS")
endif()


################################################################################
# Target
################################################################################
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/diagnostic")

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
						/Oi;
						/Gy;
						/Y-;
						/Od;
						/sdl;
						/W3;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};

                        )

target_link_options(${PROJECT_NAME} PRIVATE
					/OPT:REF;
					/OPT:ICF;
                    /SUBSYSTEM:WINDOWS
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################





#target_link_libraries(comm PRIVATE ${LIBRARIES})
