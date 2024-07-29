project(pld)

################################################################################
# Source groups
################################################################################
set(api
    "${PLD_PATH}/source/api/pld_api.cpp"
    "${PLD_PATH}/source/api/pld_api.h"
    "${PLD_PATH}/source/api/pld_smc.h"
    "${PLD_PATH}/source/core/primitives/pld_algo_interface_typedef.h"
)
source_group("api" FILES ${api})

set(core
    "${PLD_PATH}/source/core/stdimport.h"
)
source_group("core" FILES ${core})

set(core__dataio
    "${PLD_PATH}/source/core/dataio/datainput.cpp"
    "${PLD_PATH}/source/core/dataio/datainput.h"
)
source_group("core\\dataio" FILES ${core__dataio})

set(core__diagnosis
    "${PLD_PATH}/source/core/diagnosis/diagnosis.cpp"
    "${PLD_PATH}/source/core/diagnosis/diagnosis.h"
)
source_group("core\\diagnosis" FILES ${core__diagnosis})

set(core__feature
    "${PLD_PATH}/source/core/feature/feature_detector.cpp"
    "${PLD_PATH}/source/core/feature/feature_detector.h"
)
source_group("core\\feature" FILES ${core__feature})

set(core__feature__2stage
    "${PLD_PATH}/source/core/feature/2stage/2stage_adaptor.cpp"
    "${PLD_PATH}/source/core/feature/2stage/2stage_adaptor.h"
    "${PLD_PATH}/source/core/feature/2stage/2stage_detector.cpp"
    "${PLD_PATH}/source/core/feature/2stage/2stage_detector.h"
)
source_group("core\\feature\\2stage" FILES ${core__feature__2stage})

set(core__feature__corner
    "${PLD_PATH}/source/core/feature/corner/corner_adaptor.cpp"
    "${PLD_PATH}/source/core/feature/corner/corner_adaptor.h"
    "${PLD_PATH}/source/core/feature/corner/corner_detector.cpp"
    "${PLD_PATH}/source/core/feature/corner/corner_detector.h"
)
source_group("core\\feature\\corner" FILES ${core__feature__corner})

set(core__feature__entran
    "${PLD_PATH}/source/core/feature/entran/entran_adaptor.cpp"
    "${PLD_PATH}/source/core/feature/entran/entran_adaptor.h"
    "${PLD_PATH}/source/core/feature/entran/entran_detector.cpp"
    "${PLD_PATH}/source/core/feature/entran/entran_detector.h"
)
source_group("core\\feature\\entran" FILES ${core__feature__entran})

set(core__main
    "${PLD_PATH}/source/core/main/pld_mainintf.cpp"
    "${PLD_PATH}/source/core/main/pld_mainintf.h"
)
source_group("core\\main" FILES ${core__main})

set(core__manager
    "${PLD_PATH}/source/core/manager/pldlocalmap.cpp"
    "${PLD_PATH}/source/core/manager/pldlocalmap.h"
    "${PLD_PATH}/source/core/manager/pldmanager.cpp"
    "${PLD_PATH}/source/core/manager/pldmanager.h"
)
source_group("core\\manager" FILES ${core__manager})

set(core__parkoccupy
    "${PLD_PATH}/source/core/pkoccupy/pkoccupy.cpp"
    "${PLD_PATH}/source/core/pkoccupy/pkoccupy.h"
    "${PLD_PATH}/source/core/pkoccupy/pkoccupy_sideobject.cpp"
    "${PLD_PATH}/source/core/pkoccupy/pkoccupy_wheelstop.cpp"
    "${PLD_PATH}/source/core/pkoccupy/pld_wheelstop_detector.cpp"
    "${PLD_PATH}/source/core/pkoccupy/pld_wheelstop_detector.h"
)
source_group("core\\parkoccupy" FILES ${core__parkoccupy})

set(core__parkoutslot
    "${PLD_PATH}/source/core/parkoutslot/parkoutslotfinder.cpp"
    "${PLD_PATH}/source/core/parkoutslot/parkoutslotfinder.h"
)
source_group("core\\parkoutslot" FILES ${core__parkoutslot})

set(core__primitives
    "${PLD_PATH}/source/core/primitives/cmdinfo.h"
    "${PLD_PATH}/source/core/primitives/header.h"
    "${PLD_PATH}/source/core/primitives/pldcommdef.h"
)
source_group("core\\primitives" FILES ${core__primitives})

set(core__primitives__data
    "${PLD_PATH}/source/core/primitives/dataconfig.cpp"
    "${PLD_PATH}/source/core/primitives/dataconfig.h"
    "${PLD_PATH}/source/core/primitives/dataforward.h"
    "${PLD_PATH}/source/core/primitives/datain.h"
    "${PLD_PATH}/source/core/primitives/datalgo.h"
)
source_group("core\\primitives\\data" FILES ${core__primitives__data})

set(core__primitives__feature
    "${PLD_PATH}/source/core/primitives/2stagefeat.h"
    "${PLD_PATH}/source/core/primitives/afeature.h"
    "${PLD_PATH}/source/core/primitives/cornerfeat.h"
    "${PLD_PATH}/source/core/primitives/entranfeat.h"
    "${PLD_PATH}/source/core/primitives/linefeat.h"
    "${PLD_PATH}/source/core/primitives/objectfeat.h"
    "${PLD_PATH}/source/core/primitives/pillarfeat.h"
    "${PLD_PATH}/source/core/primitives/segmentfeat.h"
)
source_group("core\\primitives\\feature" FILES ${core__primitives__feature})

set(core__primitives__parkslot
    "${PLD_PATH}/source/core/primitives/obstacle.h"
    "${PLD_PATH}/source/core/primitives/parkslot.cpp"
    "${PLD_PATH}/source/core/primitives/parkslot.h"
)
source_group("core\\primitives\\parkslot" FILES ${core__primitives__parkslot})

set(core__slotbuilder
    "${PLD_PATH}/source/core/slotbuilder/slotbuilder.cpp"
    "${PLD_PATH}/source/core/slotbuilder/slotbuilder.h"
)
source_group("core\\slotbuilder" FILES ${core__slotbuilder})

set(core__slotbuilder__mff
    "${PLD_PATH}/source/core/slotbuilder/mff/hybridfeature.cpp"
    "${PLD_PATH}/source/core/slotbuilder/mff/hybridfeature.h"
    "${PLD_PATH}/source/core/slotbuilder/mff/pldmff.cpp"
    "${PLD_PATH}/source/core/slotbuilder/mff/pldmff.h"
    "${PLD_PATH}/source/core/slotbuilder/mff/pldmff_cornerbuilder.cpp"
    "${PLD_PATH}/source/core/slotbuilder/mff/pldmff_cornerbuilder.h"
    "${PLD_PATH}/source/core/slotbuilder/mff/pldmff_entranbuilder.cpp"
    "${PLD_PATH}/source/core/slotbuilder/mff/pldmff_entranbuilder.h"
)
source_group("core\\slotbuilder\\mff" FILES ${core__slotbuilder__mff})

set(core__utils__commkalman
    "${COMM_PATH}/source/utility/kalman/extendkalmanfilter.cpp"
    "${COMM_PATH}/source/utility/kalman/extendkalmanfilter.h"
    "${COMM_PATH}/source/utility/kalman/ifilter.h"
    "${COMM_PATH}/source/utility/kalman/kalmanfilter.cpp"
    "${COMM_PATH}/source/utility/kalman/kalmanfilter.h"
    "${COMM_PATH}/source/utility/math/math_matrix.cpp"
    "${COMM_PATH}/source/utility/math/math_matrix.h"
)
source_group("core\\utils\\commkalman" FILES ${core__utils__commkalman})

set(core__utils__debug
    "${PLD_PATH}/source/core/utils/debug/debug.cpp"
    "${PLD_PATH}/source/core/utils/debug/debug.h"
)
source_group("core\\utils\\debug" FILES ${core__utils__debug})

set(core__utils__geom
    "${PLD_PATH}/source/core/utils/geom/pldgeometry.cpp"
    "${PLD_PATH}/source/core/utils/geom/pldgeometry.h"
)
source_group("core\\utils\\geom" FILES ${core__utils__geom})

set(core__utils__pldlog
    "${PLD_PATH}/source/core/utils/pldlog/pldlog.cpp"
    "${PLD_PATH}/source/core/utils/pldlog/pldlog.h"
)
source_group("core\\utils\\pldlog" FILES ${core__utils__pldlog})

set(core__utils__slotfitting
    "${PLD_PATH}/source/core/utils/slotfitting/pldslotfitting.cpp"
    "${PLD_PATH}/source/core/utils/slotfitting/pldslotfitting.h"
)
source_group("core\\utils\\slotfitting" FILES ${core__utils__slotfitting})

set(core__utils__validator
    "${PLD_PATH}/source/core/utils/validator/geomvalidator.cpp"
    "${PLD_PATH}/source/core/utils/validator/geomvalidator.h"
)
source_group("core\\utils\\validator" FILES ${core__utils__validator})

set(core__workmode__detmode
    "${PLD_PATH}/source/core/workmode/detmode/detmode.cpp"
    "${PLD_PATH}/source/core/workmode/detmode/detmode.h"
)
source_group("core\\workmode\\detmode" FILES ${core__workmode__detmode})

set(core__workmode__trkmode
    "${PLD_PATH}/source/core/workmode/trkmode/trkmode.cpp"
    "${PLD_PATH}/source/core/workmode/trkmode/trkmode.h"
)
source_group("core\\workmode\\trkmode" FILES ${core__workmode__trkmode})

set(core__workmode__trkmode__parkscene
    "${PLD_PATH}/source/core/workmode/trkmode/trkmode_parkscene.cpp"
    "${PLD_PATH}/source/core/workmode/trkmode/trkmode_parkscene.h"
)
source_group("core\\workmode\\trkmode\\parkscene" FILES ${core__workmode__trkmode__parkscene})

set(core__workmode__trkmode__pldfilter
    "${PLD_PATH}/source/core/workmode/trkmode/pldfilter/pldfilter_kalman.cpp"
    "${PLD_PATH}/source/core/workmode/trkmode/pldfilter/pldfilter_kalman.h"
)
source_group("core\\workmode\\trkmode\\pldfilter" FILES ${core__workmode__trkmode__pldfilter})

set(framework
    "${PLD_PATH}/source/framework/fw_pld.cpp"
    "${PLD_PATH}/source/framework/fw_pld.h"
    "${PLD_PATH}/source/framework/fw_pld_support.cpp"
    "${PLD_PATH}/source/framework/fw_pld_support.h"
    "${PLD_PATH}/source/framework/fw_stdafx.h"
)
source_group("framework" FILES ${framework})

set(framework__datarecord
    "${PLD_PATH}/source/framework/fw_pld_datarecord.cpp"
    "${PLD_PATH}/source/framework/fw_pld_datarecord.h"
)
source_group("framework\\datarecord" FILES ${framework__datarecord})

set(ALL_FILES
    ${api}
    ${core}
    ${core__dataio}
    ${core__diagnosis}
    ${core__feature}
    ${core__feature__2stage}
    ${core__feature__corner}
    ${core__feature__entran}
    ${core__main}
    ${core__manager}
    ${core__parkoccupy}
    ${core__parkoutslot}
    ${core__primitives}
    ${core__primitives__data}
    ${core__primitives__feature}
    ${core__primitives__parkslot}
    ${core__slotbuilder}
    ${core__slotbuilder__mff}
    ${core__utils__commkalman}
    ${core__utils__debug}
    ${core__utils__geom}
    ${core__utils__pldlog}
    ${core__utils__slotfitting}
    ${core__utils__validator}
    ${core__workmode__detmode}
    ${core__workmode__trkmode}
    ${core__workmode__trkmode__parkscene}
    ${core__workmode__trkmode__pldfilter}
    ${framework}
    ${framework__datarecord}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${PLD_PATH}/source;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/utility/bev;"
        "${COMM_PATH}/source/utility/math;"
        "${COMM_PATH}/source/utility/kalman;"
        "${COMM_PATH}/source/utility/vehmdl;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/utility/mmr;"
        "${COMM_PATH}/source/utility/helper;"
        "${COMM_PATH}/source/utility/pk_common;"
        "${COMM_PATH}/source/utility/sobject;"
        "${COMM_PATH}/source/interface/cnn;"
        "${FW_SDK_PATH}/service/opencv/include"
        "${PLD_PATH}/source/core;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/interface/math;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/feature;"
        "${PLD_PATH}/source/core/pkoccupy"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}
	"${PLD_PATH}/source/core/utils/slotfitting/"

)


################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
	${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/detection/vision")

set(LIBRARIES
    frameworkbase
    sp_comm
    opencv_service
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE
            "OPENCV300=1;"
            "_CRT_SECURE_NO_WARNINGS"
            "_PLD_;"
            "_PLD_DEBUG_;"
            "SPOS_WIN;"
            "OPENCV=1;"
            "MODULER_EXPORTS;"
            "NOMINMAX;"
            "_MBCS"
)
else()
target_compile_definitions(${PROJECT_NAME} PRIVATE "OPENCV=1;_PLD_")
endif()

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")

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
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                        /OPT:REF;
                        /OPT:ICF;
                    /DEBUG;
                    /SUBSYSTEM:WINDOWS
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
    frameworkbase
    sp_comm
    opencv_service
)
