
###############################################################################
# 平台依赖的路径
###############################################################################
if (WIN32)
    SET(APP_MODULE_DIR "${MY_ROOT_DIR}/modules")
    SET(THIRD_PARTY_LIB_PATH "${MY_ROOT_DIR}/modules/third_parties")
    SET(AVM_ICU3_PATH "${MY_ROOT_DIR}/spaceos/app/AVM_ICU3")
elseif (UNIX)
    SET(toolchain_dir "${MY_ROOT_DIR}/modules/toolchain/aarch64--glibc--stable-final")
    SET(APP_MODULE_DIR "${MY_ROOT_DIR}/modules")
    SET(THIRD_PARTY_LIB_PATH "${MY_ROOT_DIR}/modules/third_parties")
    SET(AVM_ICU3_PATH "${MY_ROOT_DIR}/spaceos/app/AVM_ICU3")
endif()

