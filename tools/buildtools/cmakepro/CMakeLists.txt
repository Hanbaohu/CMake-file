CMAKE_MINIMUM_REQUIRED(VERSION 3.02)

set(ALL_PROJECTS_PATH ${CMAKE_CURRENT_SOURCE_DIR}/projects)

################################################################################
#  查找projects目录下面的项目文件夹
################################################################################
MACRO(SUBDIRLIST result curdir)
  FILE(GLOB children RELATIVE ${curdir} ${curdir}/*)
  SET(dirlist "")
  FOREACH(child ${children})
    IF(IS_DIRECTORY ${curdir}/${child})
      LIST(APPEND dirlist ${child})
    ENDIF()
  ENDFOREACH()
  SET(${result} ${dirlist})
ENDMACRO()
SUBDIRLIST(SUBDIRS ${ALL_PROJECTS_PATH})


################################################################################
# 加载子模块路径
################################################################################
include(${ALL_PROJECTS_PATH}/common/spaceos_path.cmake)

################################################################################
# 设置lib库输出路径
################################################################################
# set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG ${OUTPUT_PATH}/debug)
# set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE ${OUTPUT_PATH}/release)
# set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${OUTPUT_PATH}/debug/bin)
# set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${OUTPUT_PATH}/release/bin)
SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
SET(EXECUTABLE_OUTPUT_PATH "${OUTPUT_PATH}")

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

option(BUILD_SHARED_LIBS "Create shared libraries by default" ON)

message("")
message("*********************************************************************************")
message("*** Sample: cmake -DCMAKE_BUILD_TYPE=<Debug/Release> -DCMAKE_PROJECT=<project name> ..")
message("")

################################################################################
# 根据 CMAKE_PROJECT，调用对应projects目录下面的项目文件夹cmakelist
################################################################################
message("*** Current support projects are:")
FOREACH(subdir ${SUBDIRS})
        if (subdir STREQUAL "common")
          continue()
        endif()

        message("***                              " ${subdir})
        if(CMAKE_PROJECT STREQUAL ${subdir})
                include(${ALL_PROJECTS_PATH}/common/cflags.cmake)
                include(${ALL_PROJECTS_PATH}/${subdir}/all.cmake)
                include(${ALL_PROJECTS_PATH}/common/option_modules.cmake)
                set(find_cmake_project YES)
        endif()
ENDFOREACH()
message("")

message("*** The current cmake project: ${CMAKE_PROJECT}")

message("*********************************************************************************")
message("")

if( NOT find_cmake_project )
        message(FATAL_ERROR " CMAKE_PROJECT:'${CMAKE_PROJECT}' did not find in ${PROJECT_SOURCE_DIR}/projects ! ")
endif()


################################################################################
# 暂时全部动态库、静态库统一到一个目录里面，再链接
################################################################################
link_directories(${OUTPUT_PATH})


project(spaceos)


