IF(NOT rootfs_FOUND)
	IF(NOT DEFINED $ENV{VENUS_ROOTFS})
		SET(VENUS_ROOTFS "")
		SET(DEPS_ROOT "")
		SET(rootfs_FOUND TRUE)
	ELSE()
		SET(VENUS_ROOTFS $ENV{VENUS_ROOTFS})
	ENDIF()

ENDIF()
	
