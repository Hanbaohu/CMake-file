

###############################################################################
# 差异的源文件路径,命令方式固定：模块名字_src_directories,多个话之间用分号;隔开，不能用空格，
# 如：set( api_adaptor_src_directories  ""${FW_SDK_PATH}/adaptor/os/API/src/threadoperation.cpp";")
###############################################################################
set( spacenet_src_files     "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld2stage_inference_mdc.cpp"
                        "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_inference_mdc.cpp"
                        "${SPACENET_PATH}/source/core/feature/corner/dodcore/lane_inference_mdc.cpp"
                        "${SPACENET_PATH}/source/core/feature/corner/dodcore/seg_inference_mdc.cpp"
                        "${SPACENET_PATH}/source/core/feature/corner/dodcore/line_object_inference_mdc.cpp"
                        )

###############################################################################
# 差异的头文件路径,命令方式固定：模块名字_include_directories,多个话之间用分号;隔开，不能用空格，
# 如：set(sp_comm_include_directories ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################
set( platform_opencv_include_directories  "${COMPILER_SYSROOT_PATH}/usr/include/opencv4;")
set( spacenet_include_directories "${COMPILER_SYSROOT_PATH}/usr/local/Ascend/runtime/include;"
                                "${COMPILER_SYSROOT_PATH}/usr/include/mdc_vector/;"
                                "${COMPILER_SYSROOT_PATH}/usr/include/driver/;"
                                )
set( mp4_playback_include_directories "${COMM_PATH}/thirdparty/ffmpeg-4.4.1/include;")
set( zmq_service_include_directories
        "${COMM_PATH}/thirdparty/protobuf/include;"
        "${COMM_PATH}/thirdparty/zmq/include;"
)
set( eol_imageloader_include_directories  "${COMPILER_SYSROOT_PATH}/usr/include/opencv4;")


