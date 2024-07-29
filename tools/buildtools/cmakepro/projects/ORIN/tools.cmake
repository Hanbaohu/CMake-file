
###############################################################################
# 编译工具链
###############################################################################
if (UNIX)
    SET(CMAKE_CXX_COMPILER ${toolchain_dir}/bin/aarch64-buildroot-linux-gnu-g++)
    SET(CMAKE_C_COMPILER ${toolchain_dir}/bin/aarch64-buildroot-linux-gnu-gcc)
    SET(CMAKE_LINKER ${toolchain_dir}/bin/aarch64-buildroot-linux-gnu-ld)
endif()