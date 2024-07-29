project(config_service)


################################################################################
# Source groups
################################################################################
set(header
    "${FW_SDK_PATH}/service/config/include/config_service.h"
)
source_group("头文件" FILES ${header})

set(src
    "${FW_SDK_PATH}/service/config/src/config_service.cpp"
)
source_group("源文件" FILES ${src})

set(__vehmotion
    # "${COMM_PATH}/source/utility/vehmdl/vm_motion.cpp"
    "${FW_SDK_PATH}/service/config/src/vehmotion/vehmotion.cpp"
    "${FW_SDK_PATH}/service/config/src/vehmotion/vehmotion.h"
)
source_group("源文件\\vehmotion" FILES ${__vehmotion})

set(__xml
    "${COMM_PATH}/thirdparty/tinyosm/tinyxml2.cpp"
    "${COMM_PATH}/thirdparty/tinyosm/tinyxml2.h"
    "${FW_SDK_PATH}/service/config/src/xml/xml.cpp"
    "${FW_SDK_PATH}/service/config/src/xml/xml.h"
)
source_group("源文件\\xml" FILES ${__xml})

set(ALL_FILES
    ${header}
    ${src}
    ${__vehmotion}
    ${__xml}
)


################################################################################
# Include directories
################################################################################
include_directories(
	"${COMM_PATH}/source/interface/common;"
	"${FW_SDK_PATH}/service/config/include;"
	"${FW_SDK_PATH}/service/config/src/xml;"
	"${FW_SDK_PATH}/service/config/src/vehmotion;"
	"${COMM_PATH}/source/utility/vehmdl;"
	"${COMM_PATH}/source/utility/dim3;"
	"${COMM_PATH}/thirdparty/rapidjson/include/rapidjson;"
	"${COMM_PATH}/source/interface/smc"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
	${COMM_PATH}/thirdparty/tinyosm/

)


################################################################################
# Target
################################################################################
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/framework/service")
set(LIBRARIES
    sp_comm
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  ${${PROJECT_NAME}_CXX_FLAGS})

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE  -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -DCONFIGSERVICE_EXPORTS -DUNICODE -D_UNICODE -DWIN32 -D_CRT_SECURE_NO_WARNINGS)
endif()

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
                        /MD;
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
add_dependencies(${PROJECT_NAME}
    sp_comm
)