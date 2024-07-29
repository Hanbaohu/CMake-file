project(monitor_pro)

################################################################################
# Source groups
################################################################################
file(GLOB_RECURSE monitor_pro_foxglove_srcs "${MONITOR_PRO_PATH}/src/proto/pb/3_11_4/foxglove/*.cc")
file(GLOB_RECURSE monitor_pro_space_srcs "${MONITOR_PRO_PATH}/src/proto/pb/3_11_4/space/*.cc")


set(ALL_FILES
    ${MONITOR_PRO_PATH}/src/monitor_pro.cpp
    ${MONITOR_PRO_PATH}/src/foxglove-websocket/src/parameter.cpp
    ${MONITOR_PRO_PATH}/src/foxglove-websocket/src/serialization.cpp
    ${monitor_pro_space_srcs}
    ${monitor_pro_foxglove_srcs}
    ${${PROJECT_NAME}_src_files}
)

################################################################################
# Include directories
################################################################################
include_directories(
    ${MONITOR_PRO_PATH}/src/asio/
    ${MONITOR_PRO_PATH}/src/foxglove-websocket/include
    ${MONITOR_PRO_PATH}/src/websocketpp
    ${MONITOR_PRO_PATH}/src/
    ${MONITOR_PRO_PATH}/src/databank
    ${MONITOR_PRO_PATH}/src/foxglove-websocket
    ${COMM_PATH}/source/interface/common/
    ${COMM_PATH}/source/interface/smc/
    ${COMM_PATH}/source/interface/cv/
    ${COMM_PATH}/source/interface/display/
    ${COMM_PATH}/source/utility/dim3/
    ${COMM_PATH}/source/utility/drsync/
    ${COMM_PATH}/source/utility/pk_common/
    ${COMM_PATH}/source/interface/algo/
    ${COMM_PATH}/source/interface/iogateway/
    ${COMM_PATH}/source/utility/recorder
    ${COMM_PATH}/source/interface/algo/
    ${COMM_PATH}/source/interface/monitor_pro/
    ${COMM_PATH}/source/interface/
    ${APA_DEBUG_MONITOR_PATH}/source/algo_core/carsonarsim/simtype/
    ${SP_PK_SLOTDETECT_PATH}/source/spaceos_interface/
    ${SPACEOS_LAUNCHER}/arm_src/Interface/include/
    # ${COMM_PATH}/../../perception/datafusion/sp_pk_slotdetect/source/spaceos_interface
    ${MONITOR_PRO_PATH}/src/proto/pb/3_11_4/
    ${protobuf_include_directories}
    ${openssl_include_directories}
    ${zlib_include_directories}
    ${platform_opencv_include_directories}
    ${ffmpeg_include_directories}
    ${${PROJECT_NAME}_include_directories}
)

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${${PROJECT_NAME}_CXX_FLAGS} -D_POSIX_THREADS -fPIC -D_WEBSOCKETPP_CPP11_TYPE_TRAITS_ -DASIO_STANDALONE  -D_MONITOR_PRO_") #

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)

################################################################################
# Target
################################################################################

set(LIBRARIES
    # crypto
    # ssl
    mapservice
    protobuf
    "avcodec"
    "avdevice"
    "avfilter"
    "avformat"
    "avutil"
    "swresample"
    "swscale"
    ${openssl_link_libraries}
    ${zlib_link_libraries}
    ${${PROJECT_NAME}_link_libraries}
)

link_directories(
    ${protobuf_link_directories}
    ${openssl_link_directories}
    ${zlib_link_directories}
    ${ffmpeg_link_directories}
    ${${PROJECT_NAME}_link_directories})

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "spaceos/framework")
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
