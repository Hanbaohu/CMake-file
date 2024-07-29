
###############################################################################
# 编译工具链
###############################################################################
SET(CMAKE_CXX_COMPILER ${toolchain_dir}/bin/aarch64-target-linux-gnu-g++)
SET(CMAKE_C_COMPILER ${toolchain_dir}/bin/aarch64-target-linux-gnu-gcc)
SET(CMAKE_LINKER ${toolchain_dir}/bin/aarch64-target-linux-gnu-ld)
SET(CMAKE_AR ${toolchain_dir}/bin/aarch64-target-linux-gnu-ar)
