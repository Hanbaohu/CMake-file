

###############################################################################
# 差异的源文件路径,命令方式固定：模块名字_src_directories,多个话之间用分号;隔开，不能用空格，
# 如：set( api_adaptor_src_directories  ""${FW_SDK_PATH}/adaptor/os/API/src/threadoperation.cpp";")
###############################################################################
file(GLOB_RECURSE config_cxx_srcs can_adaptor_src_files  "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ENOVATE_TDA4/*.cpp"
                                "${FW_SDK_PATH}/adaptor/driver/can/src/platform/GWM_V71/*.cpp"
                                "${FW_SDK_PATH}/adaptor/driver/can/src/platform/GWM_V71/proto/*.cc"
                                )


###############################################################################
# 差异的头文件路径,命令方式固定：模块名字_include_directories,多个话之间用分号;隔开，不能用空格，
# 如：set(sp_comm_include_directories ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################
set( platform_opencv_include_directories  "${COMM_PATH}/thirdparty/opencv300/include/tda4;")
set( hmi_icu3_include_directories  "${SP_INTERFACE_PATH}/include;")
set( mp4_playback_include_directories "${THIRD_PARTY_LIB_PATH}/ffmpeg/include/;")
set( segparse_include_directories  "${SP_INTERFACE_PATH}/include;")
set( SP_PK_VehicleControl_include_directories  "${SP_INTERFACE_PATH}/include;")
set( spacenet_include_directories
                "${BSP_LIBRARY_A2_ES10_PATH}/usr/include/AMSS/platform/utilities/qnp_include/public/amss/core;"
                "${BSP_LIBRARY_A2_ES10_PATH}/usr/include;"
                "${BSP_LIBRARY_A2_ES10_PATH}/usr/include/amss;"
                "${BSP_LIBRARY_A2_ES10_PATH}/usr/include/AMSS/platform/utilities/mem_utils/pmem_client/protected;"
                "${BSP_LIBRARY_A2_ES10_PATH}/usr/include/AMSS/platform/utilities/mem_utils/fastrpc_pmem/protected;"
                "${BSP_LIBRARY_A2_ES10_PATH}/usr/include/AMSS/platform/qal/libstd/1.0/protected;"
                "${BSP_LIBRARY_A2_ES10_PATH}/usr/include/AMSS/qaic/inc;"
                "${BSP_LIBRARY_A2_ES10_PATH}/usr/include/AMSS/platform/utilities/mem_utils/pmem_client/public;"
                "${HAOMO_IPC}/thirdparty/protobuf/include;"
                "${SP_INTERFACE_PATH}/include;"
                "${BSP_LIBRARY_A2_ES10_PATH}/usr/include/AMSS/platform/utilities/mem_utils/pmem_client/protected;"
                )
set( avp_behaviorDecision_include_directories   "/home/lxpizza/workspace/ICU3_0/icu3_0_adapt_203/space_modules/spaceos/decision/avp_behaviorDecision/source/;")
set( can_adaptor_include_directories
                                        "${FW_SDK_PATH}/adaptor/driver/can/include;"
                                        "${FW_SDK_PATH}/adaptor/driver/can/src/platform/;"
                                        "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ENOVATE_TDA4/;"
                                        "${FW_SDK_PATH}/adaptor/driver/can/src/platform/GWM_V71;"
                                        "${FW_SDK_PATH}/adaptor/driver/can/src/platform/GWM_V71/;"
                                        "${FW_SDK_PATH}/adaptor/driver/can/src/platform/GWM_V71/proto;"
                                        "${COMM_PATH}/source/utility/memory;"
                                        "${COMM_PATH}/source/interface/algo;"
                                        "${COMM_PATH}/source/utility/pk_common;"

                                        "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ES8_PC;"
                                        "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ES8_PC/ecan_basic;"
                                        "${FW_SDK_PATH}/adaptor/driver/can/src/platform/VV6_PC;"
                                        "${FW_SDK_PATH}/adaptor/driver/can/src/platform/VV6_PC/pcan_basic;"
                                        "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ECANFD_PC/ecanfd_basic;"
                                        "${FW_SDK_PATH}/adaptor/driver/can/src/platform/ECANFD_PC"

                                        "${SP_INTERFACE_PATH}/include;"
                                        "${HAOMO_IPC}/thirdparty/protobuf/include;"
                                        #"${HAOMO_LIBS}/ipc;"
                                        "${HAOMO_LIBS}/comm;"
                                        "${HAOMO_LIBS}/rte;"
                                        "${HAOMO_LIBS}/comm/proto;"
)

set( zmq_service_include_directories
        "${COMM_PATH}/thirdparty/protobuf/include;"
        "${COMM_PATH}/thirdparty/zmq/include;"
)

