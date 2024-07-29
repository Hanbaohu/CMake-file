include(${ALL_PROJECTS_PATH}/${subdir}/paths.cmake)  #####  加载顺序 1
include(${ALL_PROJECTS_PATH}/${subdir}/tools.cmake)  #####  加载顺序 2

include(${ALL_PROJECTS_PATH}/${subdir}/files.cmake)
include(${ALL_PROJECTS_PATH}/${subdir}/cxxflags.cmake)
include(${ALL_PROJECTS_PATH}/${subdir}/libs.cmake)
include(${ALL_PROJECTS_PATH}/${subdir}/options.cmake)
