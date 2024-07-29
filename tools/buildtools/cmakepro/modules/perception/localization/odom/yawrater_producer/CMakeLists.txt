project(yawrater_producer)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${YAWRATER_PATH}/source/yawrater_producer_fw_int.cpp"
    "${YAWRATER_PATH}/source/yawrater_producer_fw_int.h"
)
source_group("" FILES ${no_group_source_files})

set(main
    "${YAWRATER_PATH}/source/main/yawrater_producer_main.cpp"
    "${YAWRATER_PATH}/source/main/yawrater_producer_main.h"
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
        "${COMM_PATH}/source/utility;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/utility/vehmdl;"
        "${COMM_PATH}/source/interface;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/sensor/vru"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${${PROJECT_NAME}_CXX_FLAGS} -D_YAWRATER_PRODUCER_")

if(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -D_USRDLL -D_MBCS -DVIDEOCAPTURE_EXPORTS")
endif()


################################################################################
# Target
################################################################################
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/localization/odom")

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
