file(GLOB_RECURSE  c_srcs 
							"${QCD_TEST_SAMPLE_PATH}/Apps/qcd_test/src/*.c"
							"${QCD_TEST_SAMPLE_PATH}/Apps/qcd_test_util/src/*.c"
							"${QCD_TEST_SAMPLE_PATH}/Apps/qcd_test_util/src/qnx/*.c"
)

set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -DQNX             -D__QNX__ -D__EXT_QNX -D_QNX_SOURCE -D__PRINT_DEBUG -g -ggdb")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DQNX --std=c++14 -D__QNX__ -D__EXT_QNX -D_QNX_SOURCE -D__PRINT_DEBUG -g -ggdb")
set(LIBRARIES
# libqcdplatform.so
# libqcd_client.so
# libpmem_client.so
# libnpa_client.so
# libaosal.so
# libgpio_client.so
# libsmmu_client.so
# libdalconfig.so
# liblibstd.so
# libOSAbstraction.sorea
# libxml2.so.2

# A2 BSP
libqcdplatform.so
libOSAbstraction.so
libqcd_client.so
libpmem_client.so
libaosal.so
libgpio_client.so
libsmmu_client.so
libfdt_utils.so
libnpa_client.so
libdalsys.so
libdalconfig.so
libxml2.so
liblibstd.so
)

include_directories(	
						${QCD_TEST_SAMPLE_PATH}/Apps/qcd_test/src
						${QCD_TEST_SAMPLE_PATH}/Apps/qcd_test_util/inc
						${QCD_TEST_SAMPLE_PATH}/Apps/qcd_test_util/src/qnx

						#${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/multimedia/camera_safe/qcd/src/SystemServices/QCDOsal/inc 		# qcdosal_time.h
						#${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/multimedia/camera_safe/qcd/src/SystemServices/Common			# qcd_common.h
						#${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/platform/qal/libstd/1.0/protected/								# AEEStdDef.h
						#${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/multimedia/camera_safe/qcd/src/SystemServices/QCDOsal/QNX/inc	# qcdosal_logging.h
						#${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/multimedia/camera_safe/qcd/src/API/inc							# qcarcam_types.h
						#${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/platform/utilities/mem_utils/pmem_client/protected 			# pmem.h
						#${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/platform/utilities/mem_utils/pmem_client/public 				# amss/pmem_id.h

						${BSP_HEADER_A2_PATH}/apps/qnx_ap/AMSS/multimedia/camera_safe/qcd/src/SystemServices/QCDOsal/inc 		# qcdosal_timer.h
						${BSP_HEADER_A2_PATH}/apps/qnx_ap/AMSS/multimedia/camera_safe/qcd/src/SystemServices/Common 			# qcd_common.h
						${BSP_HEADER_A2_PATH}/apps/qnx_ap/AMSS/platform/qal/libstd/1.0/protected 								# AEEStdDef.h
						${BSP_HEADER_A2_PATH}/apps/qnx_ap/AMSS/multimedia/camera_safe/qcd/src/SystemServices/QCDOsal/QNX/inc	# qcdosal_logging.h
						${BSP_HEADER_A2_PATH}/apps/qnx_ap/AMSS/multimedia/camera_safe/qcd/src/API/inc 							# qcarcam_types.h
						${BSP_HEADER_A2_PATH}/apps/qnx_ap/AMSS/platform/utilities/mem_utils/pmem_client/protected				# pmem.h
						${BSP_LIBRARY_A2_PATH}/usr/include/																		# amss/pmem_id.h
						#${BSP_LIBRARY_A2_PATH}/usr/include/amss/multimedia/camera_isp 											# qcarcam_types.h
						
						)



link_directories(
				${QCD_TEST_SAMPLE_PATH}/lib

				
				
				
                #${BSP_LIBRARY_PATH}/apps/qnx_ap/install/aarch64le/lib/
                #${BSP_LIBRARY_PATH}/apps/qnx_ap/install/aarch64le/usr/lib/graphics/qc/
				#${BSP_LIBRARY_PATH}/apps/qnx_ap/install/aarch64le/lib/camera_isp		# libais.so
				#${BSP_LIBRARY_PATH}/apps/qnx_ap/install/aarch64le/lib/camera_isp		# libDTI981_QC_0.so
				#${BSP_LIBRARY_PATH}/apps/qnx_ap/install/aarch64le/lib					# libOSAbstraction.so 
				#${BSP_LIBRARY_PATH}/apps/qnx_ap/install/aarch64le/lib/camera_isp		# libais.so
				#${BSP_HEADER_PATH}/apps/qnx_ap/AMSS/multimedia/camera_adas/build/qnx/ais/libais/aarch64/so-le	#/libais.so

				# A2
				${BSP_LIBRARY_A2_PATH}/
				${BSP_LIBRARY_A2_PATH}/aarch64le/lib									# libqcdplatformS.a
				${BSP_LIBRARY_A2_PATH}/aarch64le/lib/camera_isp							# libaisS.a
)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")
SET(EXECUTABLE_OUTPUT_PATH "${OUTPUT_PATH}")
add_executable(${PROJECT_NAME} ${c_srcs} )

target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES} slog2 )
