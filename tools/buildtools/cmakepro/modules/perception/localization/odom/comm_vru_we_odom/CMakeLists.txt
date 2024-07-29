project(comm_vru_we_odom)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${WE_ODOM_PATH}/source/comm_vru_we_odom_fw_int.cpp"
    "${WE_ODOM_PATH}/source/comm_vru_we_odom_fw_int.h"
)
source_group("" FILES ${no_group_source_files})

set(main
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odom_dataset.cpp"
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odom_utils.h"
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odomer.cpp"
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odomer.h"
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odomer_compensate_bias2D.cpp"
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odomer_compensate_bias2D.h"
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odomer_factory.cpp"
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odomer_factory.h"
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odomer_fix_yaw2D.cpp"
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odomer_fix_yaw2D.h"
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odomer_fix_yaw3D.cpp"
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odomer_fix_yaw3D.h"
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odomer_simple2D.cpp"
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odomer_simple2D.h"
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odomer_simple3D.cpp"
    "${WE_ODOM_PATH}/source/main/comm_vru_we_odomer_simple3D.h"
)
source_group("main" FILES ${main})

set(ALL_FILES
    ${no_group_source_files}
    ${main}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${WE_ODOM_PATH}/thirdparty;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/utility/vehmdl;"
        "${COMM_PATH}/thirdparty/Eigen;"
        "${COMM_PATH}/source/interface;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/sensor/vru;"
        "${COMM_PATH}/source/interface/sensor/vru_we_packer"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

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
target_compile_definitions(${PROJECT_NAME} PRIVATE "_COMM_VRU_WE_ODOM_;MODULER_EXPORTS;SPOS_WIN;_USRDLL;_CRT_NONSTDC_NO_DEPRECATE;_CRT_SECURE_NO_WARNINGS;VIDEOCAPTURE_EXPORTS;_SCL_SECURE_NO_WARNINGS;OPENCV;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "_COMM_VRU_WE_ODOM_")
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
                        /wd4099;
                        /wd4267;
                        /wd4244;
                        /wd4251;
                        /wd4005;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                        /SUBSYSTEM:CONSOLE;
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