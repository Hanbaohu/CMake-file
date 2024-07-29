CMAKE_MINIMUM_REQUIRED(VERSION 3.02)
project(libhastar)

#file(GLOB_RECURSE c_srcs "${COMM_LIB_HASTAR_PATH}/source/*.c")

file(GLOB_RECURSE cxx_srcs 
    "${COMM_LIB_HASTAR_PATH}/src/Common/*.cpp"
    "${COMM_LIB_HASTAR_PATH}/src/OpenSpacePlanning/*.cpp"
    "${COMM_LIB_HASTAR_PATH}/src/RearWheelTracker/*.cpp"
)

set(ALL_FILES
    ${cxx_srcs}
)
    
include_directories(
    ${COMM_PATH}/source/interface
    ${COMM_PATH}/source/interface/common
    ${COMM_PATH}/source/interface/smc
    ${COMM_PATH}/source/interface/utils
    ${COMM_PATH}/source/interface/avm
    ${COMM_PATH}/source/interface/hmi
    ${COMM_PATH}/source/interface/math
    ${COMM_PATH}/source/interface/cv
    ${COMM_PATH}/source/interface/cuda
    ${COMM_PATH}/source/interface/feature
    ${COMM_PATH}/source/interface/algo
    ${COMM_PATH}/source/interface/ml/classifier 
    ${COMM_PATH}/source/interface/ml/classifier/LightCNN/archit 
    ${COMM_PATH}/source/interface/ml/classifier/LightCNN/tools
    ${COMM_PATH}/source/interface/ml
    ${COMM_PATH}/source/interface/neon
    ${COMM_PATH}/source/interface/tracker 
    ${COMM_PATH}/source/utility/dim3
    ${COMM_PATH}/source/utility/vehmdl
    ${COMM_PATH}/source/utility/math 
    ${COMM_PATH}/source/utility/helper
    ${COMM_PATH}/source/utility/logparser
    ${COMM_PATH}/source/utility/bev
    ${COMM_PATH}/source/utility/avm
    ${COMM_PATH}/source/utility/pk_common
    ${COMM_PATH}/source/utility
    ${COMM_PATH}/thirdparty/Eigen
    ${COMM_LIB_HASTAR_PATH}/include
    ${COMM_LIB_HASTAR_PATH}/RearWheelTracker
    ${COMM_LIB_HASTAR_PATH}/OpenSpacePlanning
    ${COMM_LIB_HASTAR_PATH}/Common
)

#set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -D_tda4_qnx_ -D_QNX_SOURCE -DSIM_VS -DSPOS_QNX_ARM_QUALCOMM_8540 ") 
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_tda4_qnx_ -D_QNX_SOURCE -DSIM_VS -DSPOS_QNX_ARM_QUALCOMM_8540 ") #  -DOPENCV=1  -D_ON_TDA4_OPENCV_  -D_STATIC_LIB_ 

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -DOPENCV=1  -D_ON_TDA4_ -DHAVE_STRUCT_TIMESPEC -D_SP_PK_HASTAR_ -D_UINIT_64_T_") 

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
#设置输出路径
SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")

#target_link_libraries(comm PUBLIC ${LIBRARIES})