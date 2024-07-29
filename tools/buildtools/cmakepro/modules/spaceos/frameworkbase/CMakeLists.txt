project(frameworkbase)


################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${FW_BASE_PATH}/src/frameworkbase.cpp"
)
source_group("" FILES ${no_group_source_files})

set(buffer
    "${FW_BASE_PATH}/src/buffer/spos_buffer.cpp"
    "${FW_BASE_PATH}/src/buffer/spos_buffer.h"
)
source_group("buffer" FILES ${buffer})

set(comm_config_param
    "${FW_BASE_PATH}/src/comm_config_param/comm_config_param.cpp"
)
source_group("comm_config_param" FILES ${comm_config_param})

set(common
    "${FW_BASE_PATH}/src/common/base_commondef.h"
)
source_group("common" FILES ${common})

set(config
    "${FW_BASE_PATH}/src/config/cfg_config.cpp"
    "${FW_BASE_PATH}/src/config/cfg_config.h"
    "${FW_BASE_PATH}/src/config/cfg_options.cpp"
    "${FW_BASE_PATH}/src/config/cfg_options.h"
    "${FW_BASE_PATH}/src/config/configure.cpp"
    "${FW_BASE_PATH}/src/config/configure.h"
)
source_group("config" FILES ${config})

set(databank
    "${FW_BASE_PATH}/src/databank/data_manager.cpp"
    "${FW_BASE_PATH}/src/databank/data_manager.h"
    "${FW_BASE_PATH}/src/databank/databank.cpp"
    "${FW_BASE_PATH}/src/databank/databank.h"
)
source_group("databank" FILES ${databank})

set(log
    "${FW_BASE_PATH}/src/log/log.cpp"
    "${FW_BASE_PATH}/src/log/log.h"
)
source_group("log" FILES ${log})

set(memory
    "${FW_BASE_PATH}/src/memory/memory.cpp"
    "${FW_BASE_PATH}/src/memory/memory.h"
)
source_group("memory" FILES ${memory})

set(scheduler
    "${FW_BASE_PATH}/src/scheduler/databankmanager.h"
    "${FW_BASE_PATH}/src/scheduler/eventmanager.cpp"
    "${FW_BASE_PATH}/src/scheduler/eventmanager.h"
    "${FW_BASE_PATH}/src/scheduler/scheduler.cpp"
    "${FW_BASE_PATH}/src/scheduler/scheduler.h"
    "${FW_BASE_PATH}/src/scheduler/scheduler_commdef.h"
    "${FW_BASE_PATH}/src/scheduler/sharedatabank.cpp"
    "${FW_BASE_PATH}/src/scheduler/sharedatabank.h"
)
source_group("scheduler" FILES ${scheduler})

set(timestamp
    "${FW_BASE_PATH}/src/timestamp/timestamp.cpp"
    "${FW_BASE_PATH}/src/timestamp/timestamp.h"
)
source_group("timestamp" FILES ${timestamp})

set(ALL_FILES
    ${no_group_source_files}
    ${comm_config_param}
    ${buffer}
    ${common}
    ${config}
    ${databank}
    ${log}
    ${memory}
    ${scheduler}
    ${timestamp}
)

################################################################################
# Include directories
################################################################################
include_directories(
    ${easy_profiler_include_directories}
    "${FW_SDK_PATH}/service/config/include;"
    "${COMM_PATH}/source/utility/vehmdl;"
    "${FW_SDK_PATH}/service/memory/include;"
    "${FW_SDK_PATH}/service/network/include;"
    "${FW_SDK_PATH}/adaptor/os/API/include;"
    "${FW_SDK_PATH}/service/zmq/include;"
    "${COMM_PATH}/thirdparty/zmq/include;"
    "${FW_SDK_PATH}/service/media/include"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/smc;"
    "${FW_BASE_PATH}/src/common;"
    "${FW_BASE_PATH}/src/config;"
    "${FW_BASE_PATH}/src/memory;"
    "${FW_BASE_PATH}/src/scheduler;"
    "${FW_BASE_PATH}/src/timestamp;"
    #"${FW_SDK_PATH}/multiProcessTransport/src;"
    ${platform_opencv_include_directories}
)

################################################################################
# Target
################################################################################

if (WIN32)
    set(LIBRARIES
        sp_comm
        memory_service
        network_service
        config_service
        zmq_service
        media_service
        api_adaptor
        easy_profiler
    )
elseif (UNIX)
    set(LIBRARIES
        sp_comm
        memory_service
        network_service
        config_service
        zmq_service
        #media_service
        api_adaptor
        #easy_profiler TBD
        dl
    )
endif()
link_directories(
    ${easy_profiler_link_directories}
    ${${PROJECT_NAME}_link_directories}
)
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos")

################################################################################
# Compile definitions
################################################################################
#target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE _CRT_NONSTDC_NO_DEPRECATE;_CRT_SECURE_NO_WARNINGS;MODULER_EXPORTS;NODEBUG;SPOS_WIN;_USRDLL;FRAMEWORKBASE_EXPORTS;_FRAMEWORK_BASE_;BUILD_WITH_EASY_PROFILER=1;)
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE "")
endif()


################################################################################
# Compile and link options
################################################################################
if(MSVC)

target_compile_options(${PROJECT_NAME} PRIVATE
                        /GL;
                        /Oi;
                        /Gy;
                        /wd4819;
                        /wd4068;
                        /wd4244;
                        /wd4101;
                        /wd4554;
                        /wd4005;
                        /Od;
                        /sdl;
                        /W3;
                        /MD;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        /Y-
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                /OPT:REF;
                /OPT:ICF;
                /PROFILE;
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
        memory_service
        network_service
        config_service
        zmq_service
        #media_service
        api_adaptor
)



