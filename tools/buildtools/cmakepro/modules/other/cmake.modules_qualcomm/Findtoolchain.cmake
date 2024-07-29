
IF(NOT toolchain_FOUND)

	option(BUILD_TDA4_A72_LIBS "Build tda4 a72 library." ON)

	#如果没设置ARCH环境变量，默认为ARM编译
	IF(NOT DEFINED ARCH)
	    IF(NOT DEFINED ENV{ARCH})
		SET(ENV{ARCH} "arm")
	    ENDIF()
    
	    SET(arch $ENV{ARCH})
	ELSE()
	    SET(arch $ENV{ARCH})
	    SET(ENV{ARCH} ${arch})
	ENDIF()

	IF(${arch} MATCHES "arm")
	    MESSAGE("Compile for ARM")
	    if(NOT DEFINED ENV{TOOLCHAIN_DIR}) 
			SET(toolchain_dir "/home/lxpizza/qnx700/host/linux/x86_64/usr")	
	    ELSE()
			SET(toolchain_dir $ENV{TOOLCHAIN_DIR})
	    ENDIF()

if(BUILD_TDA4_A72_LIBS)
		SET(CMAKE_CXX_COMPILER ${toolchain_dir}/bin/aarch64-linux-gnu-g++)
	    SET(CMAKE_C_COMPILER ${toolchain_dir}/bin/aarch64-linux-gnu-gcc)
        SET(CMAKE_LINKER ${toolchain_dir}/bin/aarch64-linux-gnu-ld)
	    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -fpermissive -fPIC -Wall -fms-extensions -Wno-write-strings -Wno-format-security -fno-short-enums -ggdb -ggdb3 -gdwarf-2 -mlittle-endian -mcpu=cortex-a72  -Wno-format-truncation")
	    SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu99 -fPIC -Wall -fms-extensions -Wno-write-strings -Wno-format-security -fno-short-enums -ggdb -ggdb3 -gdwarf-2 -mlittle-endian -mcpu=cortex-a72  -Wno-format-truncation")
        #SET(OUTPUT_LINK_MODE "armelf_linux_eabi")
else()
	    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -fpermissive -fPIC -Wall  -ggdb ")
	    SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu99 -fPIC -Wall -ggdb ")
endif()

		set(toolchain_FOUND TRUE)
	ENDIF()

ENDIF()
