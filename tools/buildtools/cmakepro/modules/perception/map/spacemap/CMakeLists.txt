project(spacemap)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${SPM_PATH}/source/spaceos_interface/spacemap_stdafx.cpp"
    "${SPM_PATH}/source/spaceos_interface/spacemap_stdafx.h"
)
source_group("" FILES ${no_group_source_files})

set(algo_core__hzpmap__mapbuilder
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/spm_hzpmapbuilder.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/spm_hzpmapbuilder.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/spm_hzpmaperrormanager.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/spm_hzpmaperrormanager.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/spm_hzpmaptool.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/spm_hzpmaptool.h"
)
source_group("algo_core\\hzpmap\\mapbuilder" FILES ${algo_core__hzpmap__mapbuilder})

set(algo_core__hzpmap__mapbuilder__closelooper
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/closelooper/spm_maplooper.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/closelooper/spm_maplooper.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/closelooper/spm_optimizer.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/closelooper/spm_optimizer.h"
)
source_group("algo_core\\hzpmap\\mapbuilder\\closelooper" FILES ${algo_core__hzpmap__mapbuilder__closelooper})

set(algo_core__hzpmap__mapbuilder__databuffer
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/databuffer/spm_databuffer.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/databuffer/spm_databuffer.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/databuffer/spm_databuffer_iofile.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/databuffer/spm_inputdata.h"
)
source_group("algo_core\\hzpmap\\mapbuilder\\databuffer" FILES ${algo_core__hzpmap__mapbuilder__databuffer})


set(algo_core__hzpmap__mapbuilder__mapdata
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/spm_ibasemap.h"
)
source_group("algo_core\\hzpmap\\mapbuilder\\mapdata" FILES ${algo_core__hzpmap__mapbuilder__mapdata})

set(algo_core__hzpmap__mapbuilder__mapdata__freespacemap
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/freespacemap/freespacemap.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/freespacemap/freespacemap.h"
)
source_group("algo_core\\hzpmap\\mapbuilder\\mapdata\\freespacemap" FILES ${algo_core__hzpmap__mapbuilder__mapdata__freespacemap})

set(algo_core__hzpmap__mapbuilder__mapdata__gnssmap
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/gnssmap/spm_gnssmap.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/gnssmap/spm_gnssmap.h"
)
source_group("algo_core\\hzpmap\\mapbuilder\\mapdata\\gnssmap" FILES ${algo_core__hzpmap__mapbuilder__mapdata__gnssmap})

set(algo_core__hzpmap__mapbuilder__mapdata__hmimap
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/hmimap/spm_hmimap.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/hmimap/spm_hmimap.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/hmimap/spm_rawmaprender.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/hmimap/spm_rawmaprender.h"
)
source_group("algo_core\\hzpmap\\mapbuilder\\mapdata\\hmimap" FILES ${algo_core__hzpmap__mapbuilder__mapdata__hmimap})

set(algo_core__hzpmap__mapbuilder__mapdata__linemap
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/linemap/lineframe.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/linemap/lineframe.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/linemap/linemap.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/linemap/linemap.h"
)
source_group("algo_core\\hzpmap\\mapbuilder\\mapdata\\linemap" FILES ${algo_core__hzpmap__mapbuilder__mapdata__linemap})

set(algo_core__hzpmap__mapbuilder__mapdata__pldmap
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/pldmap/spm_pldmap.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/pldmap/spm_pldmap.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/pldmap/spm_pldmatcher.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/pldmap/spm_pldmatcher.h"
)
source_group("algo_core\\hzpmap\\mapbuilder\\mapdata\\pldmap" FILES ${algo_core__hzpmap__mapbuilder__mapdata__pldmap})

set(algo_core__hzpmap__mapbuilder__mapdata__posemap
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/posemap/spm_curveseg.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/posemap/spm_curveseg.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/posemap/spm_posemap.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/posemap/spm_posemap.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/posemap/spm_roadform.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/posemap/spm_roadform.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/posemap/spm_timectl.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/posemap/spm_timectrl.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/posemap/spm_wprs.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/posemap/spm_wprs.h"
)
source_group("algo_core\\hzpmap\\mapbuilder\\mapdata\\posemap" FILES ${algo_core__hzpmap__mapbuilder__mapdata__posemap})

set(algo_core__hzpmap__mapbuilder__mapdata__segmap
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/segmap/spm_segmap.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/segmap/spm_segmap.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/segmap/spm_segmap_bumpmatcher.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/segmap/spm_segmap_bumpmatcher.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/segmap/spm_segmap_bumpvalidator.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/segmap/spm_segmap_bumpvalidator.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/segmap/spm_segmap_refine.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/segmap/spm_segmap_refine.h"
)
source_group("algo_core\\hzpmap\\mapbuilder\\mapdata\\segmap" FILES ${algo_core__hzpmap__mapbuilder__mapdata__segmap})

set(algo_core__hzpmap__mapbuilder__mapdata__sendmap
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/sendmap/spm_sendmap.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/sendmap/spm_sendmap.h"
)
source_group("algo_core\\hzpmap\\mapbuilder\\mapdata\\sendmap" FILES ${algo_core__hzpmap__mapbuilder__mapdata__sendmap})

set(algo_core__hzpmap__mapbuilder__mapdata__sonarmap
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/sonarmap/sonarfactory.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/sonarmap/sonarfactory.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/sonarmap/sonarfilter.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/sonarmap/sonarfilter.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/sonarmap/sonarmap.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/sonarmap/sonarmap.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/sonarmap/sonarwall.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/sonarmap/sonarwall.h"
)
source_group("algo_core\\hzpmap\\mapbuilder\\mapdata\\sonarmap" FILES ${algo_core__hzpmap__mapbuilder__mapdata__sonarmap})

set(algo_core__hzpmap__mapbuilder__mapdata__staticodmap
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/staticodmap/staticodmap.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/staticodmap/staticodmap.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/staticodmap/staticodmatcher.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapdata/staticodmap/staticodmatcher.h"
)
source_group("algo_core\\hzpmap\\mapbuilder\\mapdata\\staticodmap" FILES ${algo_core__hzpmap__mapbuilder__mapdata__staticodmap})

set(algo_core__hzpmap__mapbuilder__maplogic
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/maplogic/spm_cutparkposlogic.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/maplogic/spm_cutparkposlogic.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/maplogic/spm_maplogic.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/maplogic/spm_maplogic.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/maplogic/spm_speedlogic.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/maplogic/spm_speedlogic.h"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/maplogic/spm_userparkinlogic.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/maplogic/spm_userparkinlogic.h"
)
source_group("algo_core\\hzpmap\\mapbuilder\\maplogic" FILES ${algo_core__hzpmap__mapbuilder__maplogic})

set(algo_core__hzpmap__mapbuilder__mapwriter
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapwriter/spm_hzpmapwriter.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/mapbuilder/mapwriter/spm_hzpmapwriter.h"
)
source_group("algo_core\\hzpmap\\mapbuilder\\mapwriter" FILES ${algo_core__hzpmap__mapbuilder__mapwriter})

set(algo_core__hzpmap__onlinemapbuilder
    "${SPM_PATH}/source/algo_core/hzpmap/onlinemapbuilder/spm_onlinehzpmapbuilder.cpp"
    "${SPM_PATH}/source/algo_core/hzpmap/onlinemapbuilder/spm_onlinehzpmapbuilder.h"
)
source_group("algo_core\\hzpmap\\onlinemapbuilder" FILES ${algo_core__hzpmap__onlinemapbuilder})

set(algo_core__primitives
    "${SPM_PATH}/source/algo_core/primitives/spm_algopackage.h"
    "${SPM_PATH}/source/algo_core/primitives/spm_attribute.cpp"
    "${SPM_PATH}/source/algo_core/primitives/spm_attribute.h"
    "${SPM_PATH}/source/algo_core/primitives/spm_dataforward.h"
    "${SPM_PATH}/source/algo_core/primitives/spm_lmob.h"
    "${SPM_PATH}/source/algo_core/primitives/spm_mapconfig.h"
    "${SPM_PATH}/source/algo_core/primitives/spm_waypoint.h"
)
source_group("algo_core\\primitives" FILES ${algo_core__primitives})

set(algo_core__utils__helper
    "${SPM_PATH}/source/algo_core/utils/helper/spm_bspine.cpp"
    "${SPM_PATH}/source/algo_core/utils/helper/spm_bspine.h"
    "${SPM_PATH}/source/algo_core/utils/helper/spm_helper.cpp"
    "${SPM_PATH}/source/algo_core/utils/helper/spm_helper.h"
)
source_group("algo_core\\utils\\helper" FILES ${algo_core__utils__helper})

set(algo_core__utils__tinyosm
    "${SPM_PATH}/source/algo_core/utils/tinyosm/spm_tinyosm.cpp"
    "${SPM_PATH}/source/algo_core/utils/tinyosm/spm_tinyosm.h"
    "${SPM_PATH}/source/algo_core/utils/tinyosm/spm_tinyosm_creater.cpp"
    "${SPM_PATH}/source/algo_core/utils/tinyosm/spm_tinyosm_creater.h"
)
source_group("algo_core\\utils\\tinyosm" FILES ${algo_core__utils__tinyosm})

set(algo_core__utils__tinyxml2
    "${SPM_PATH}/source/algo_core/utils/tinyxml2/tinyxml2.cpp"
    "${SPM_PATH}/source/algo_core/utils/tinyxml2/tinyxml2.h"
)
source_group("algo_core\\utils\\tinyxml2" FILES ${algo_core__utils__tinyxml2})

set(algo_interface
    "${SPM_PATH}/source/algo_interface/spacemap_config.h"
    "${SPM_PATH}/source/algo_interface/spacemap_embed_intf.h"
    "${SPM_PATH}/source/algo_interface/spm_algo_interface.cpp"
    "${SPM_PATH}/source/algo_interface/spm_algo_interface.h"
    "${SPM_PATH}/source/algo_interface/spmol_algo_interface.cpp"
    "${SPM_PATH}/source/algo_interface/spmol_algo_interface.h"
)
source_group("algo_interface" FILES ${algo_interface})

set(spaceos_interface
    "${SPM_PATH}/source/spaceos_interface/spm_spaceos_interface.cpp"
    "${SPM_PATH}/source/spaceos_interface/spm_spaceos_interface.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(spaceos_interface__data_record
    "${SPM_PATH}/source/spaceos_interface/data_record/spm_datarecord.cpp"
    "${SPM_PATH}/source/spaceos_interface/data_record/spm_datarecord.h"
)
source_group("spaceos_interface\\data_record" FILES ${spaceos_interface__data_record})

set(ALL_FILES
    ${no_group_source_files}
    ${algo_core__hzpmap__mapbuilder}
    ${algo_core__hzpmap__mapbuilder__closelooper}
    ${algo_core__hzpmap__mapbuilder__databuffer}
    ${algo_core__hzpmap__mapbuilder__mapdata}
    ${algo_core__hzpmap__mapbuilder__mapdata__freespacemap}
    ${algo_core__hzpmap__mapbuilder__mapdata__gnssmap}
    ${algo_core__hzpmap__mapbuilder__mapdata__hmimap}
    ${algo_core__hzpmap__mapbuilder__mapdata__linemap}
    ${algo_core__hzpmap__mapbuilder__mapdata__pldmap}
    ${algo_core__hzpmap__mapbuilder__mapdata__posemap}
    ${algo_core__hzpmap__mapbuilder__mapdata__segmap}
    ${algo_core__hzpmap__mapbuilder__mapdata__sendmap}
    ${algo_core__hzpmap__mapbuilder__mapdata__sonarmap}
    ${algo_core__hzpmap__mapbuilder__mapdata__staticodmap}
    ${algo_core__hzpmap__mapbuilder__maplogic}
    ${algo_core__hzpmap__mapbuilder__mapwriter}
    ${algo_core__hzpmap__onlinemapbuilder}
    ${algo_core__primitives}
    ${algo_core__utils__helper}
    ${algo_core__utils__tinyosm}
    ${algo_core__utils__tinyxml2}
    ${algo_interface}
    ${spaceos_interface}
    ${spaceos_interface__data_record}
)


################################################################################
# Include directories
################################################################################
include_directories(
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/utility;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/cv;"
    "${FW_SDK_PATH}/service/opencv/include;"
    "${SPM_PATH}/source;"
    "${SCENE_RECOGNITION_PATH}/source;"
    "${MAPLIBS_PATH}/space_havpmap/source"
    "${COMM_PATH}/thirdparty/hastar/include"
    "${COMM_PATH}/source/utility/pk_common"
    # "${COMM_PATH}/thirdparty/Eigen;"
    ${eigen_include_directories}
    ${g2o_include_directories}
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}
    "${COMM_PATH}/source/utility/recorder"
    ${SPM_PATH}/source/algo_core/utils/tinyxml2/

)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)

################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    ${g2o_link_directories}
    ${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/map")

# target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES}
#             ${${PROJECT_NAME}_link_libraries}
# )
set(LIBRARIES
    sp_comm
    opencv_service
    frameworkbase
    space_havpmap
    ${g2o_link_libraries}
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE  "SPOS_WIN;OPENCV=1;OPENCV300=1;MODULER_EXPORTS;NOMINMAX;_TARGET_ARCH_X86_64_;_CRT_SECURE_NO_WARNINGS;_SPM_;")
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE  "OPENCV=1;_SPM_ -D_UINIT_64_T_")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Oi;
                        /Gy;
                        /wd4819;
                        /wd4005;
                        /Od;
                        /W3;
                        /Y-;
                        /MD;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                        /SUBSYSTEM:CONSOLE;
                        /OPT:REF;
                        /OPT:ICF;
                    /DEBUG;
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    sp_comm
    opencv_service
    space_havpmap
    frameworkbase
)
