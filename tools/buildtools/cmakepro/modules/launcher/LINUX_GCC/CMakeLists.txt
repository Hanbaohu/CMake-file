project(spaceos_launcher)

if (WIN32)
    #SET(CMAKE_C_FLAGS   " -fpermissive       -g -ggdb -Werror")
    #SET(CMAKE_CXX_FLAGS " -fpermissive -fPIC -g -ggdb -Werror --std=c++14 ")
elseif (UNIX)
    SET(CMAKE_C_FLAGS   " -fpermissive       -g -ggdb -Werror")
    SET(CMAKE_CXX_FLAGS " -fpermissive -fPIC -g -ggdb -Werror --std=c++14 ")
endif()

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    ${SPACEOS_LAUNCHER_LINUX_PATH}/source/SpaceOS_Launcher/maincontrol.cpp
    # ${SPACEOS_LAUNCHER_LINUX_PATH}/source/SpaceOS_Launcher/stdafx.cpp
    # ${SPACEOS_LAUNCHER_LINUX_PATH}/source/SpaceOS_Launcher/stdafx.h
    # ${SPACEOS_LAUNCHER_LINUX_PATH}/source/SpaceOS_Launcher/targetver.h
)
source_group("" FILES ${no_group_source_files})

set(ALL_FILES
    ${no_group_source_files}
)

link_directories(
    ${SPACEOS_THIRDPARTY_LIBS_PATH}/opencv/lib/
    ${SPACEOS_THIRDPARTY_LIBS_PATH}/zmq/lib/
    ${SPACEOS_THIRDPARTY_LIBS_PATH}/jsoncpp/lib/
    ${OUTPUT_PATH}
)

################################################################################
# Include directories
################################################################################

if (MSVC)
    include_directories(
        "${MY_ROOT_DIR}/SpaceOS_Launcher/source/SpaceOS_Launcher"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/thirdparty/easy_profiler/x64/include/"
        ${${PROJECT_NAME}_include_directories}
        # ${platform_opencv_include_directories}
    )
elseif (UNIX)
    include_directories(
        "${MY_ROOT_DIR}/SpaceOS_Launcher/source/SpaceOS_Launcher"
        "${COMM_PATH}/source/interface/common"
        #"${COMM_PATH}/thirdparty/easy_profiler/x64/include/"
        ${${PROJECT_NAME}_include_directories}
        # ${platform_opencv_include_directories}
    )
endif()



################################################################################
# Target
################################################################################
add_executable(${PROJECT_NAME} ${ALL_FILES})

if (MSVC)
    set(LIBRARIES
        sp_comm
        frameworkbase
        easy_profiler
        "kernel32;"
        "user32;"
        "gdi32;"
        "winspool;"
        "comdlg32;"
        "advapi32;"
        "shell32;"
        "ole32;"
        "oleaut32;"
        "uuid;"
        "odbc32;"
        "odbccp32"
        ${${PROJECT_NAME}_link_libraries}
    )
    target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
    target_link_directories(${PROJECT_NAME} PRIVATE
                "${COMM_PATH}/thirdparty/protobuf/lib/x86_64"
                "${COMM_PATH}/thirdparty/ffmpeg/lib/x64"
                "${COMM_PATH}/thirdparty/easy_profiler/x64/lib"
    )
elseif (UNIX)
    set(LIBRARIES
        sp_comm
        frameworkbase
        multiProcessTransport
        zmq
        #easy_profiler
        ${${PROJECT_NAME}_link_libraries}
    )
    target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
    target_link_directories(${PROJECT_NAME} PRIVATE
        ${zmq_link_directories}
        ${opencv_link_directories}
        ${protobuf_link_directories}
        ${ffmpeg_link_directories}
        ${opengv_link_directories}
        # "${COMM_PATH}/thirdparty/protobuf/lib/x86_64"
        # "${COMM_PATH}/thirdparty/ffmpeg/lib/x64"
        # #"${COMM_PATH}/thirdparty/easy_profiler/x64/lib"
    )
endif()

################################################################################
# Compile definitions
################################################################################
if (MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE "BEV_VER;WIN32;_CRT_SECURE_NO_WARNINGS;NODEBUG;_CONSOLE;SPOS_WIN;_MAIN_;_CRT_SECURE_NON_WARNINGS;BUILD_WITH_EASY_PROFILER=1")
elseif (UNIX)
    target_compile_definitions(${PROJECT_NAME} PRIVATE "BEV_VER;_CRT_SECURE_NO_WARNINGS;NODEBUG;_CONSOLE;_MAIN_;_CRT_SECURE_NON_WARNINGS;BUILD_WITH_EASY_PROFILER=0")
endif()
################################################################################
# Compile and link options
################################################################################
if(MSVC)
    target_compile_options(${PROJECT_NAME} PRIVATE
                        /MP;
                        /GL-;
                        /Oi;
                        /Gy;
                        /Od;
                        /sdl;
                        /W3;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING}
    )

    target_link_options(${PROJECT_NAME} PRIVATE
                        /OPT:REF;
                        /OPT:ICF;
                        /PROFILE;
                        /INCREMENTAL:NO
                        /DEBUG;
                        /SUBSYSTEM:CONSOLE
    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
    frameworkbase
)

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin)
