project(vru_producer)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${PRODUCER_PATH}/source/vru_producer_fw_int.cpp"
    "${PRODUCER_PATH}/source/vru_producer_fw_int.h"
)
source_group("" FILES ${no_group_source_files})

set(main
    "${PRODUCER_PATH}/source/main/vru_producer_defs.h"
    "${PRODUCER_PATH}/source/main/vru_producer_main.cpp"
    "${PRODUCER_PATH}/source/main/vru_producer_main.h"
    "${PRODUCER_PATH}/source/main/vru_producer_main_example.cpp"
)
source_group("main" FILES ${main})

set(serial
    "${PRODUCER_PATH}/thirdparty/serial/include/serial/serial.h"
    "${PRODUCER_PATH}/thirdparty/serial/include/serial/v8stdint.h"
    "${PRODUCER_PATH}/thirdparty/serial/src/impl/list_ports/list_ports_linux.cc"
    "${PRODUCER_PATH}/thirdparty/serial/src/impl/list_ports/list_ports_osx.cc"
    "${PRODUCER_PATH}/thirdparty/serial/src/impl/list_ports/list_ports_win.cc"
    "${PRODUCER_PATH}/thirdparty/serial/src/impl/unix.cc"
    "${PRODUCER_PATH}/thirdparty/serial/src/impl/win.cc"
    "${PRODUCER_PATH}/thirdparty/serial/src/serial.cc"
)
source_group("serial" FILES ${serial})

set(ALL_FILES
    ${no_group_source_files}
    ${main}
    ${serial}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${PRODUCER_PATH}/thirdparty/serial/include;"
        "${COMM_PATH}/source/utility;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/interface;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/sensor/vru"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${${PROJECT_NAME}_CXX_FLAGS} -D_VRU_PRODUCER_")

if(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -D_USRDLL -DVIDEOCAPTURE_EXPORTS -D_MBCS")
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
