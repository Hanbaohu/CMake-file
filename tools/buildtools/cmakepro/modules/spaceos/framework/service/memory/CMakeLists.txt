project(memory_service)

################################################################################
# Source groups
################################################################################
set(data_manager
    "${FW_SDK_PATH}/service/memory/src/data_manager/data_manager.cpp"
    "${FW_SDK_PATH}/service/memory/src/data_manager/data_manager.h"
)
source_group("data_manager" FILES ${data_manager})

set(header
    "${FW_SDK_PATH}/service/memory/include/memory_service.h"
)
source_group("头文件" FILES ${header})

set(src
    "${FW_SDK_PATH}/service/memory/src/memory_srvice.cpp"
)
source_group("源文件" FILES ${src})

set(ALL_FILES
    ${data_manager}
    ${header}
    ${src}
)


################################################################################
# Include directories
################################################################################
include_directories(
	"${FW_SDK_PATH}/service/memory/include;"
	"${FW_SDK_PATH}/config/include;"
	"${FW_BASE_PATH}/src/scheduler;"
	"${COMM_PATH}/source/interface;"
	"${FW_BASE_PATH}/src/common;"
	"${COMM_PATH}/source/interface/common;"
	"${COMM_PATH}/thirdparty/gtest/x64/include;"
	"${FW_SDK_PATH}/service/memory/src/data_manager;"
	"${FW_SDK_PATH}/adaptor/os/API/include"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
	"${COMM_PATH}/source/interface/algo"

)

################################################################################
# Target
################################################################################
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/framework/service")
set(LIBRARIES
    sp_comm
	api_adaptor
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "-DMODULER_EXPORTS -D_USRDLL -D_MBCS")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
						/Od;
						/Oi;
						/Gy;
						/Y-;
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
                    /SUBSYSTEM:WINDOWS
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################

add_dependencies(${PROJECT_NAME}
    api_adaptor
    sp_comm
)



