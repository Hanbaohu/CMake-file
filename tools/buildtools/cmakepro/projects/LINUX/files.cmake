
###############################################################################
# 差异的源文件路径,命令方式固定：模块名字_src_directories,多个话之间用分号;隔开，不能用空格，
# 如：set( api_adaptor_src_directories  ""${FW_SDK_PATH}/adaptor/os/API/src/threadoperation.cpp";")
###############################################################################
set( can_adaptor_src_files   "${FW_SDK_PATH}/adaptor/driver/can/src/platform/J3/CJ3CanSource.cpp"
                             "${FW_SDK_PATH}/adaptor/driver/can/src/platform/J3/CJ3ZmqCanSource.cpp"
                                )
set( spacenet_src_files   "${SPACENET_PATH}/source/core/feature/corner/dodcore/pld_and_seg_inference_bpu.cpp"
                                        )

# set( zmq_service_src_files
#         "${FW_SDK_PATH}/service/communication/zmq/src/platform/horizon_zmq/horizon_zmq.cpp"
#         "${FW_SDK_PATH}/service/communication/zmq/src/datacontainer/horizon/space_raw.pb.cc"
# )

###############################################################################
# 差异的头文件路径,命令方式固定：模块名字_include_directories,多个话之间用分号;隔开，不能用空格，
# 如：set(comm_include_directories ${COMM_PATH}/thirdparty/opencv300/include/tda4)
###############################################################################
# set( platform_opencv_include_directories  "${COMM_PATH}/thirdparty/opencv300/include/tda4")

if(WIN32)
   set(platform_opencv_include_directories  ${THIRD_PARTY_LIB_PATH}/opencv/windows/x64/include)
   #set(protobuf_include_directories ${THIRD_PARTY_LIB_PATH}/protobuf/include)
   set(protobuf_include_directories ${THIRD_PARTY_LIB_PATH}/protobuf-3.11.4/include)
   set(zmq_include_directories ${THIRD_PARTY_LIB_PATH}/zmq/include)
   set(mqtt_include_directories ${THIRD_PARTY_LIB_PATH}/mqtt/win/include)
   set(easy_profiler_include_directories ${THIRD_PARTY_LIB_PATH}/easy_profiler/x64/include)
   set(ffmpeg_include_directories ${THIRD_PARTY_LIB_PATH}/ffmpeg2) #TBD
   set(opengv_include_directories ${THIRD_PARTY_LIB_PATH}/OpenGV/include)
   set(g2o_include_directories ${THIRD_PARTY_LIB_PATH}/g2o)
   set(hastar_include_directories ${THIRD_PARTY_LIB_PATH}/hastar/include)
   set(pcl_include_directories ${THIRD_PARTY_LIB_PATH}/pcl-1.8.1/include/pcl-1.8) #depends Eigen Boost vtk flann
   set(eigen_include_directories  ${THIRD_PARTY_LIB_PATH}/Eigen)
   set(boost_include_directories ${THIRD_PARTY_LIB_PATH}/boost_1_73_0)
   set(flann_include_directories ${THIRD_PARTY_LIB_PATH}/flann-1.9.1/include)
   set(vtk_include_directories ${THIRD_PARTY_LIB_PATH}/vtk-7.1.1/include/vtk-7.1)
elseif (UNIX)
   set(platform_opencv_include_directories  ${THIRD_PARTY_LIB_PATH}/opencv/include/opencv4)
   set(ffmpeg_include_directories ${THIRD_PARTY_LIB_PATH}/ffmpeg/include)
   set(protobuf_include_directories ${THIRD_PARTY_LIB_PATH}/protobuf/include)
   set(zmq_include_directories ${THIRD_PARTY_LIB_PATH}/zmq/include)
   set(opengv_include_directories ${THIRD_PARTY_LIB_PATH}/opengv/include)
   set(hastar_include_directories ${THIRD_PARTY_LIB_PATH}/hastar/include)
   set(eigen_include_directories  ${THIRD_PARTY_LIB_PATH}/eigen/include/eigen3)
   set(boost_include_directories ${THIRD_PARTY_LIB_PATH}/boost/include)
   set(flann_include_directories ${THIRD_PARTY_LIB_PATH}/flann/include)
   set(pcl_include_directories ${THIRD_PARTY_LIB_PATH}/pcl/include/pcl-1.9) #depends Eigen Boost vtk flann
   set(vtk_include_directories ${THIRD_PARTY_LIB_PATH}/vtk/include/vtk-7.1)
   set(geographiclib_include_directories ${THIRD_PARTY_LIB_PATH}/geographiclib/include)
   set(g2o_include_directories ${THIRD_PARTY_LIB_PATH}/g2o/include)
   set(cereal_include_directories ${THIRD_PARTY_LIB_PATH}/cereal/include) #header only library
   set(stlplus3_include_directories ${THIRD_PARTY_LIB_PATH}/stlplus3/include)
   set(openssl_include_directories ${THIRD_PARTY_LIB_PATH}/openssl/include)
   set(zlib_include_directories ${THIRD_PARTY_LIB_PATH}/zlib/include)
endif()

set( spacenet_include_directories "${APP_MODULE_DIR}/apa/code/common/bpu-predict/release/bpu-predict/include;"
                                  "${APP_MODULE_DIR}/../deps/aarch64/bpu_predict/include;"    
                                  #"${THIRD_PARTY_LIB_PATH}/opencv/include/opencv4/"
                                  "/home/cff/develop/orin/modules/third_parties/opencv/include/opencv4/"
)

set( mp4_playback_include_directories 
   ${ffmpeg_include_directories}
)

set( io_gateway_include_directories
   ${protobuf_include_directories}
   ${platform_opencv_include_directories}
)
set( zmq_service_include_directories
   "${THIRD_PARTY_LIB_PATH}/protobuf/include;"
   "${THIRD_PARTY_LIB_PATH}/zmq/include"
)

if (WIN32)
   set( network_service_include_directories
      ${mqtt_include_directories}
      ${zmq_include_directories}
   )
elseif (UNIX)
   set( network_service_include_directories
      ${zmq_include_directories}
   )
endif()

set(slam_include_directories
   ${opengv_include_directories}
   ${g2o_include_directories}
)

set( can_include_directories
   "${FW_SDK_PATH}/service/network/include;"
)


set( can_adaptor_include_directories
                                "${FW_SDK_PATH}/adaptor/driver/can/src/platform/J3/;"
                                "${FW_SDK_PATH}/adaptor/driver/can/src/platform/J3/zmq/inc;"
                                "${COMM_PATH}/thirdparty/spi_mcu/inc;"
                                "${COMM_PATH}/source/utility/memory;"
)

set( fw_bev_include_directories
                                 #"${COMM_PATH}/thirdparty/opencv300/include/tda4"
   "/home/cff/develop/orin/modules/third_parties/opencv/include/opencv4/"
)

set (SP_PK_SensorFusion_include_directories
                                 "${COMM_PATH}/thirdparty/Eigen/"
)

set(avp_behaviorDecision_include_directories
                                 "${COMM_PATH}/thirdparty/boost_1_73_0/"
)

set(scenemanager_include_directories
                                 #"${COMM_PATH}/thirdparty/opencv300/include/tda4"
   "/home/cff/develop/orin/modules/third_parties/opencv/include/opencv4/"
)