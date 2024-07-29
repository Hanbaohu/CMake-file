set(CMAKE_SYSTEM_NAME Linux)
# https://cmake.org/cmake/help/latest/variable/CMAKE_HOST_SYSTEM_PROCESSOR.html#variable:CMAKE_HOST_SYSTEM_PROCESSOR
set(CMAKE_SYSTEM_PROCESSOR x86_64)
###############################################################################
# 编译工具链
###############################################################################
# 非交叉编译，不设置CMAKE_CXX_COMPILER，CMAKE_C_COMPILER， CMAKE_LINKER，使用默认编译工具
# if (UNIX)
#     SET(CMAKE_CXX_COMPILER ${toolchain_dir}/bin/aarch64-buildroot-linux-gnu-g++)
#     SET(CMAKE_C_COMPILER ${toolchain_dir}/bin/aarch64-buildroot-linux-gnu-gcc)
#     SET(CMAKE_LINKER ${toolchain_dir}/bin/aarch64-buildroot-linux-gnu-ld)
# endif()