project(zmq_service)

 
################################################################################
# Source groups
################################################################################
set(header
    "${FW_SDK_PATH}/service/zmq/include/zmq_common.h"
    "${FW_SDK_PATH}/service/zmq/include/zmq_interface.h"
    "${FW_SDK_PATH}/service/zmq/include/zmq_service.h"
)
source_group("头文件" FILES ${header})

set(src
    "${FW_SDK_PATH}/service/zmq/src/zmq_interface.cpp"
    "${FW_SDK_PATH}/service/zmq/src/zmq_service.cpp"
)
source_group("源文件" FILES ${src})


set(ALL_FILES
    ${header}
    ${src}
    ${${PROJECT_NAME}_src_files}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${COMM_PATH}/source/interface/common;"
    #"${FW_SDK_PATH}/service/communication/zmq/include;"
    "${FW_SDK_PATH}/service/zmq/include;"
    "${FW_SDK_PATH}/service/zmq/protoData;"

    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}

)


################################################################################
# Target
################################################################################
if (UNIX)
    set(LIBRARIES
        ${${PROJECT_NAME}_link_libraries}
        libzmq.so
        pthread 
        dl
    )
elseif (WIN32)
    set(LIBRARIES
        ${${PROJECT_NAME}_link_libraries}
        # libzmq.so
        # pthread 
        # dl
        libprotobuf
        libprotoc
        libzmq-mt-4_3_4
    )
endif()

link_directories(${${PROJECT_NAME}_link_directories})
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/framework/service")
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
#target_compile_definitions(${PROJECT_NAME} PRIVATE )

if (UNIX)
    SET(CMAKE_CXX_FLAGS  ${${PROJECT_NAME}_CXX_FLAGS})
endif()

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS)
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /GL-;
                        /Od;
                        /Oi;
                        /Gy;
                        /permissive-;
                        /sdl;
                        /W3;
                        /MT;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                    /SUBSYSTEM:WINDOWS;
                    /OPT:REF;
                    /OPT:ICF;
                    /INCREMENTAL:NO;
                    /DEBUG;
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################





#target_link_libraries(comm PRIVATE ${LIBRARIES})
