project(SP_PK_StateManager_all)

################################################################################
# Source groups
################################################################################
set(apa_algo_core
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/apa_algo_core/APAStateManage.cpp"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/apa_algo_core/APAStateManage.h"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/apa_algo_core/rtwtypes.h"
)
source_group("apa_algo_core" FILES ${apa_algo_core})

set(apa_algo_interface
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/apa_algo_interface/apa_matlab_real.cpp"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/apa_algo_interface/sp_pk_statemanager_apa_algo_interface.cpp"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/apa_algo_interface/sp_pk_statemanager_apa_algo_interface.h"
)
source_group("apa_algo_interface" FILES ${apa_algo_interface})

set(attribute
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/attribute/sm_get.cpp"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/attribute/sm_set.cpp"
)
source_group("attribute" FILES ${attribute})

set(havp_algo_core
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/havp_algo_core/HAVPStateManage.c"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/havp_algo_core/HAVPStateManage.h"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/havp_algo_core/rtwtypes.h"
)
source_group("havp_algo_core" FILES ${havp_algo_core})

set(havp_algo_interface
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/havp_algo_interface/sp_pk_statemanager_havp_algo_interface.cpp"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/havp_algo_interface/sp_pk_statemanager_havp_algo_interface.h"
)
source_group("havp_algo_interface" FILES ${havp_algo_interface})

set(meb_algo_core
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/meb_algo_core/MEBStateManage.c"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/meb_algo_core/MEBStateManage.h"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/meb_algo_core/rtwtypes.h"
)
source_group("meb_algo_core" FILES ${meb_algo_core})

set(meb_algo_interface
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/meb_algo_interface/sp_pk_statemanager_meb_algo_interface.c"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/meb_algo_interface/sp_pk_statemanager_meb_algo_interface.h"
)
source_group("meb_algo_interface" FILES ${meb_algo_interface})

set(pas_algo_core
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/pas_algo_core/PASStateManage.c"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/pas_algo_core/PASStateManage.h"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/pas_algo_core/rtwtypes.h"
)
source_group("pas_algo_core" FILES ${pas_algo_core})

set(pas_algo_interface
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/pas_algo_interface/sp_pk_statemanager_pas_algo_interface.c"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/pas_algo_interface/sp_pk_statemanager_pas_algo_interface.h"
)
source_group("pas_algo_interface" FILES ${pas_algo_interface})

set(pavp_algo_core
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/pavp_algo_core/PAVPStateManage.c"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/pavp_algo_core/PAVPStateManage.h"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/pavp_algo_core/rtwtypes.h"
)
source_group("pavp_algo_core" FILES ${pavp_algo_core})

set(pavp_algo_interface
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/pavp_algo_interface/sp_pk_statemanager_pavp_algo_interface.c"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/pavp_algo_interface/sp_pk_statemanager_pavp_algo_interface.h"
)
source_group("pavp_algo_interface" FILES ${pavp_algo_interface})

set(rpa_algo_core
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/rpa_algo_core/RPAStateManage.c"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/rpa_algo_core/RPAStateManage.h"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/rpa_algo_core/rtwtypes.h"
)
source_group("rpa_algo_core" FILES ${rpa_algo_core})

set(rpa_algo_interface
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/rpa_algo_interface/sp_pk_statemanager_rpa_algo_interface.c"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/rpa_algo_interface/sp_pk_statemanager_rpa_algo_interface.h"
)
source_group("rpa_algo_interface" FILES ${rpa_algo_interface})

set(rpf_algo_interface
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/rpf_algo_interface/sp_pk_statemanager_rpf_algo_interface.cpp"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/rpf_algo_interface/sp_pk_statemanager_rpf_algo_interface.h"
)
source_group("rpf_algo_interface" FILES ${rpf_algo_interface})

set(spaceos_interface
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/spaceos_interface/sp_pk_statemanager_all_spaceos_interface.cpp"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/spaceos_interface/sp_pk_statemanager_all_spaceos_interface.h"
)
source_group("spaceos_interface" FILES ${spaceos_interface})

set(state_management_new_apaparkin
    "${SP_PK_STATEMANAGER_NEW_PATH}/01_ApaParkIn/ApaParkInStateManage_Debug.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/01_ApaParkIn/ApaParkInStateManage_Debug.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/01_ApaParkIn/ApaParkInStateManage_Input.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/01_ApaParkIn/ApaParkInStateManage_Input.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/01_ApaParkIn/ApaParkInStateManage_Output.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/01_ApaParkIn/ApaParkInStateManage_Output.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/01_ApaParkIn/ApaParkInStateManage_Process.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/01_ApaParkIn/ApaParkInStateManage_Process.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/01_ApaParkIn/ApaParkInStateManage.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/01_ApaParkIn/ApaParkInStateManage.h"
)
source_group("state_management_new\\apaparkin" FILES ${state_management_new_apaparkin}) 

set(state_management_new_havpcruis
    "${SP_PK_STATEMANAGER_NEW_PATH}/03_HavpCruis/HavpCruisStateManage_Debug.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/03_HavpCruis/HavpCruisStateManage_Debug.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/03_HavpCruis/HavpCruisStateManage_Input.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/03_HavpCruis/HavpCruisStateManage_Input.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/03_HavpCruis/HavpCruisStateManage_Output.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/03_HavpCruis/HavpCruisStateManage_Output.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/03_HavpCruis/HavpCruisStateManage_Process.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/03_HavpCruis/HavpCruisStateManage_Process.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/03_HavpCruis/HavpCruisStateManage.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/03_HavpCruis/HavpCruisStateManage.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/03_HavpCruis/rtwtypes.h"
)
source_group("state_management_new\\havpcruis" FILES ${state_management_new_havpcruis})

set(state_management_new_havpmap
    "${SP_PK_STATEMANAGER_NEW_PATH}/02_HavpMap/HavpMapStateManage_Debug.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/02_HavpMap/HavpMapStateManage_Debug.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/02_HavpMap/HavpMapStateManage_Input.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/02_HavpMap/HavpMapStateManage_Input.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/02_HavpMap/HavpMapStateManage_Output.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/02_HavpMap/HavpMapStateManage_Output.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/02_HavpMap/HavpMapStateManage_Process.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/02_HavpMap/HavpMapStateManage_Process.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/02_HavpMap/HavpMapStateManage.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/02_HavpMap/HavpMapStateManage.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/02_HavpMap/rtwtypes.h"
)
source_group("state_management_new\\havpmap" FILES ${state_management_new_havpmap})

set(state_management_new_remtcntrl
    "${SP_PK_STATEMANAGER_NEW_PATH}/04_RemtCntrl/RemtCntrlStateManage_Debug.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/04_RemtCntrl/RemtCntrlStateManage_Debug.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/04_RemtCntrl/RemtCntrlStateManage_Input.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/04_RemtCntrl/RemtCntrlStateManage_Input.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/04_RemtCntrl/RemtCntrlStateManage_Output.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/04_RemtCntrl/RemtCntrlStateManage_Output.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/04_RemtCntrl/RemtCntrlStateManage_Process.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/04_RemtCntrl/RemtCntrlStateManage_Process.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/04_RemtCntrl/RemtCntrlStateManage.cpp"
    "${SP_PK_STATEMANAGER_NEW_PATH}/04_RemtCntrl/RemtCntrlStateManage.h"
    "${SP_PK_STATEMANAGER_NEW_PATH}/04_RemtCntrl/rtwtypes.h"
)
source_group("state_management_new\\remtcntrl" FILES ${state_management_new_remtcntrl})

set(super_state_algo_core
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/super_state_algo_core/rtwtypes.h"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/super_state_algo_core/StateManage.c"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/super_state_algo_core/StateManage.h"
)
source_group("super_state_algo_core" FILES ${super_state_algo_core})

set(super_state_algo_interface
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/super_state_algo_interface/sp_pk_statemanager_super_state_algo_interface.cpp"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/super_state_algo_interface/sp_pk_statemanager_super_state_algo_interface.h"
)
source_group("super_state_algo_interface" FILES ${super_state_algo_interface})

set(ALL_FILES
    ${apa_algo_core}
    ${apa_algo_interface}
    ${attribute}
    ${havp_algo_core}
    ${havp_algo_interface}
    ${meb_algo_core}
    ${meb_algo_interface}
    ${pas_algo_core}
    ${pas_algo_interface}
    ${pavp_algo_core}
    ${pavp_algo_interface}
    ${rpa_algo_core}
    ${rpa_algo_interface}
    ${rpf_algo_interface}
    ${spaceos_interface}
    ${state_management_new_apaparkin}
    ${state_management_new_havpcruis}
    ${state_management_new_havpmap}
    ${state_management_new_remtcntrl}
    ${super_state_algo_core}
    ${super_state_algo_interface}
)

################################################################################
# Include directories
################################################################################
include_directories(
    "${SP_PK_STATEMANAGER_ALL_PATH}/include;"
    "${SP_PK_STATEMANAGER_ALL_PATH}/include/common;"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/utility/DeltaMovements;"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/utility/Heuristics;"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/utility/HybridAStar;"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/utility/Pathstitching;"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/utility/liner;"
    "${COMM_PATH}/source/interface/common;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/intrinsic_modeller;"
    "${COMM_PATH}/source/interface/avm;"
    "${COMM_PATH}/source/interface/smc;"
    "${COMM_PATH}/source/interface/algo;"
    "${COMM_PATH}/source/interface/math;"
    "${COMM_PATH}/source/interface/ml;"
    "${COMM_PATH}/source/interface/cv;"
    "${COMM_PATH}/source/interface/v2x;"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/utility;"
    "${COMM_PATH}/thirdparty/avpmap/interface;"
    "${COMM_PATH}/thirdparty/avpmap/source;"
    "${COMM_PATH}/source/interface/app;"
    "${COMM_PATH}/source/interface/schedule;"
    "${COMM_PATH}/thirdparty/Eigen;"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/utility/avpmap;"
    "${COMM_PATH}/source/interface/vehmdl;"
    "${SP_PK_STATEMANAGER_ALL_PATH}/../radar/source;"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/utility/TargetPosition;"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/utility/PathFollow/spline;"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/utility/PathFollow/control;"
    "${SP_PK_STATEMANAGER_ALL_PATH}/../tsml/source/core/vehmdl;"
    "${COMM_PATH}/source/interface/display;"
    "${COMM_PATH}/source/utility/vehmdl;"
    "${COMM_PATH}/source/interface/multiprocess;"
    "${COMM_PATH}/source/utility/dim3;"
    "${COMM_PATH}/source/interface/algo;"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source/interface;"
    "${COMM_PATH}/source/interface;"
    "${COMM_PATH}/source/utility/pk_common;"
    "${APA_COMM_MATH_PATH}/include;"
    "${SP_PK_STATEMANAGER_ALL_PATH}/source"
    "${COMM_PATH}/source/interface/cnn;"
    ${${PROJECT_NAME}_include_directories}
    ${platform_opencv_include_directories}
    ${COMM_PATH}/source/interface/iogateway
    ${COMM_PATH}/source/CommunicationManager/CommonComm
    ${COMM_PATH}/thirdparty/rapidjson/include/rapidjson
)
 

################################################################################
# Target
################################################################################
LINK_DIRECTORIES(
    ${${PROJECT_NAME}_link_directories}
)

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "decision")

set(LIBRARIES
    frameworkbase
    sp_comm
    mapservice
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE  "${${PROJECT_NAME}_CXX_FLAGS}" )

if(MSVC)
    target_compile_definitions(${PROJECT_NAME} PRIVATE   -DOPENCV=1)
    target_compile_definitions(${PROJECT_NAME} PRIVATE   -D_CRT_SECURE_NO_WARNINGS -DWIN32 -D_USRDLL -D_WINDOWS -DSPOS_WIN -DMODULER_EXPORTS -D_SP_PK_STATEMANAGER_ -DES6 -DHAVE_STRUCT_TIMESPEC -DVIDEOCAPTURE_EXPORTS -D_USRDLL -D_WINDOWS -D_MBCS)
else()
    target_compile_definitions(${PROJECT_NAME} PRIVATE   "-DOPENCV=1 ")
    target_compile_definitions(${PROJECT_NAME} PRIVATE   "-DHAVE_STRUCT_TIMESPEC -D_SP_PK_STATEMANAGER_  -D_UINIT_64_T_")
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
    frameworkbase
    sp_comm
    mapservice
)
