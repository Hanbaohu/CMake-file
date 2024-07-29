#!/bin/sh
export QNX_BASE=/opt/qnx710/
export QNX_CROSS_COMPILER_TOOL=aarch64-unknown-nto-qnx7.1.0-
export QNX_HOST=${QNX_BASE}/host/linux/x86_64
export QNX_TARGET=${QNX_BASE}/target/qnx7
export GCC_QNX_ROOT=${QNX_HOST}/usr/bin
export GCC_QNX_ARM_ROOT=${QNX_HOST}/usr/bin
export GCC_QNX_ARM=${QNX_HOST}/usr/bin
PATH=${QNX_BASE}/host/linux/x86_64/usr/bin:${PATH}

#docker环境需要以下设置, ubuntu virtualbox的需要注释掉
export CPLUS_INCLUDE_PATH=${QNX_BASE}/target/qnx7/usr/include/c++/8.3.0:${QNX_BASE}/target/qnx7/usr/include/c++/8.3.0/aarch64-unknown-nto-qnx7.1.0/
