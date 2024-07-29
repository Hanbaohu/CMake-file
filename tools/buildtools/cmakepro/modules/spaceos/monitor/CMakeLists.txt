project(monitor)

################################################################################
# Source groups
################################################################################
set(headers
    "${MONITOR_PATH}/port/vc2019/monitor/vehicle_test.h"
    "${MONITOR_PATH}/port/vc2019/monitor/SysProcessMng.h"
)
source_group("header" FILES ${headers})

set(sources
    "${MONITOR_PATH}/port/vc2019/monitor/acc_filter.h"
    "${MONITOR_PATH}/port/vc2019/monitor/vehicle_test.cpp"
    "${MONITOR_PATH}/port/vc2019/monitor/SysProcessMng.cpp"
    "${MONITOR_PATH}/port/vc2019/monitor/main.cpp"
)
source_group("source" FILES ${sources})


set(ALL_FILES
    ${headers}
    ${sources}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/utility/memory;"
    "${CAN}/include/"
    "${FW_SDK_PATH}/multiProcessTransport/src;"
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}
)


################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    "../../../../spaceos_launcher/port/vs2019/x64/Release"
    ${zmq_link_directories}
    ${opencv_link_directories}
    ${${PROJECT_NAME}_link_directories}
)

add_executable(${PROJECT_NAME} ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/monitor")

set(LIBRARIES
    sp_comm
    frameworkbase
    zmq
    multiProcessTransport
    can
    ${opencv_link_libraries}
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE  "SPOS_DEBUG_WINDOW; _CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;WIN32;NDEBUG;_WINDOWS;_USRDLL;SPOS_WIN;NOMINMAX;BOOST_USE_WINDOWS_H;_CONSOLE")
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE  "xSPOS_DEBUG_WINDOW")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
    /Oi;
    /Gy;
    /Y-;
    /permissive-;
    /Od;
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
    /SUBSYSTEM:WINDOWS
)
endif()

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
    frameworkbase
    multiProcessTransport
    can
)