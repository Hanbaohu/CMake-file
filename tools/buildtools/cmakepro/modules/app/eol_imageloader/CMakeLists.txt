project(eol_imageloader)

################################################################################
# Source groups
################################################################################
set(header_files
    "${EOL_IMAGELOADE_PATH}/source/eol_imageloader.h"
    "${EOL_IMAGELOADE_PATH}/source/eol_imageloader_stdafx.h"
)
source_group("header_files" FILES ${header_files})

set(src_files
    "${EOL_IMAGELOADE_PATH}/source/eol_imageloader_stdafx.cpp"
    "${EOL_IMAGELOADE_PATH}/source/imageloader.cpp"
)
source_group("src_files" FILES ${src_files})

set(ALL_FILES
    ${header_files}
    ${src_files}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${EOL_IMAGELOADE_PATH}/source/;"
	"${COMM_PATH}/source/interface/common;"
	"${FW_SDK_PATH}/service/opencv/include;"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
)

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}  -DCV__ENABLE_C_API_CTORS")
if(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_LIB -DUNICODE -D_UNICODE")
endif()

################################################################################
# Target
################################################################################
set(LIBRARIES
    sp_comm
    frameworkbase
    ${${PROJECT_NAME}_link_libraries}
)

link_directories(${${PROJECT_NAME}_link_directories})
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "app/imageloader")

################################################################################
# Compile definitions
################################################################################

target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "_CRT_SECURE_NO_WARNINGS;_WINDLL;SPOS_WIN")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /GL-;
                        /Oi;
                        /Gy;
                        /permissive-;
                        /Od;
                        /sdl;
                        /W3;                
						${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
						${DEFAULT_CXX_EXCEPTION_HANDLING};
						)

target_link_options(${PROJECT_NAME} PRIVATE
                        /OPT:REF;
                        /OPT:ICF
                        /SUBSYSTEM:CONSOLE
						)
endif()

################################################################################
# Dependencies
################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
    frameworkbase
)