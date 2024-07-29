project(api_adaptor)


################################################################################
# Source groups
################################################################################
set(header
    "${FW_SDK_PATH}/adaptor/os/API/include/platform.h"
)
source_group("头文件" FILES ${header})

set(src
    "${FW_SDK_PATH}/adaptor/os/API/src/platform.cpp"
    "${FW_SDK_PATH}/adaptor/os/API/src/threadoperation.cpp"
)
source_group("源文件" FILES ${src})

set(ALL_FILES
    ${header}
    ${src}
    ${${PROJECT_NAME}_src_directories}
)


################################################################################
# Include directories
################################################################################
include_directories(
	"${FW_SDK_PATH}/adaptor/os/API/include;"
	"${COMM_PATH}/source/interface/common;"
	"${FW_BASE_PATH}/src/common"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)


################################################################################
# Target
################################################################################
add_library(${PROJECT_NAME} STATIC ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/framework")

set(LIBRARIES
    sp_comm
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "-D_CRT_NONSTDC_NO_DEPRECATE -D_CRT_SECURE_NO_WARNINGS  -D_MBCS")
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
						${DEFAULT_CXX_EXCEPTION_HANDLING}
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
add_dependencies(${PROJECT_NAME}
    sp_comm
)

