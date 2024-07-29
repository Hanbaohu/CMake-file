project(comdr)

################################################################################
# Source groups
################################################################################
set(core__comm
    "${COM_DR}/source/core/comdr_comm.h"
    "${COM_DR}/source/core/comdr_error.h"
)
source_group("core\\comm" FILES ${core__comm})

set(core__helper
    "${COM_DR}/source/core/comdr_helper.h"
    "${COM_DR}/source/core/dr_power_down_record.cpp"
)
source_group("core\\helper" FILES ${core__helper})

set(core__main
    "${COM_DR}/source/core/comdr_main.cpp"
    "${COM_DR}/source/core/comdr_main.h"
)
source_group("core\\main" FILES ${core__main})

set(interface__fw
    "${COM_DR}/source/interface/framework/comdr_declare.cpp"
    "${COM_DR}/source/interface/framework/comdr_declare.h"
    "${COM_DR}/source/interface/framework/comdr_fw.h"
    "${COM_DR}/source/interface/framework/comdr_fw_build.cpp"
    "${COM_DR}/source/interface/framework/comdr_fw_process.cpp"
    "${COM_DR}/source/interface/framework/comdr_stdafx.h"
)
source_group("interface\\fw" FILES ${interface__fw})

set(ALL_FILES
    ${core__comm}
    ${core__helper}
    ${core__main}
    ${interface__fw}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${COM_DR}/source/interface/framework;"
        "${COM_DR}/source/core;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/utility/vehmdl;"
        "${COMM_PATH}/source/utility/logparser;"
        "${COMM_PATH}/source/utility/pk_common;"
        "${COMM_PATH}/source/interface;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/common;"
        "${APA_COMM_MATH_PATH}/include;"
        "${COMM_PATH}/thirdparty/Eigen"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
	"${COMM_PATH}/source/utility/"

)


################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
	${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/localization/odom")

set(LIBRARIES
    frameworkbase
    sp_comm
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE
        "_COMDR_;"
        "ENABLE_REMOTE=0;"
        "_PLATFORM_FW030_;"
        "_LOC_DEBUG_=0;"
        "CPU_ONLY;"
        "OPENCV"
        "_CRT_SECURE_NO_WARNINGS;"
        "MODULER_EXPORTS;"
        "WIN32;"
        "NDEBUG;"
        "SPOS_WIN;"
        "_USRDLL;"
        "VIDEOCAPTURE_EXPORTS;"
        "_SCL_SECURE_NO_WARNINGS;"
        "_MBCS"
)
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "OPENCV=0;_COMDR_;ENABLE_REMOTE=0;_LOC_DEBUG_=0")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Od;
                        /Oi;
                        /sdl;
                        /Gy;
                        /W3;
                        /wd4819;
                        /wd4005;
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
    frameworkbase
    sp_comm
)
