IF(NOT rootfs_FOUND)
	IF(NOT DEFINED $ENV{VENUS_ROOTFS})
		SET(VENUS_ROOTFS "/opt/psdk_rtos_auto_j7_07_00_00_11/targetfs")
		SET(DEPS_ROOT "/opt/psdk_rtos_auto_j7_07_00_00_11/targetfs")
		SET(rootfs_FOUND TRUE)
	ELSE()
		SET(VENUS_ROOTFS $ENV{VENUS_ROOTFS})
	ENDIF()

ENDIF()
	
