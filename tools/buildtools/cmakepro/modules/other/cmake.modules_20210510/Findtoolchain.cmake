
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
			SET(toolchain_dir "/opt/psdk_rtos_auto_j7_07_00_00_11/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu")
			# SET(toolchain_dir "/home/lxpizza/workspace/j3/gcc-linaro-6.5.0-2018.12-x86_64_aarch64-linux-gnu")	
	    ELSE()
			SET(toolchain_dir $ENV{TOOLCHAIN_DIR})
	    ENDIF()

if(BUILD_TDA4_A72_LIBS)
	 	#set(CMAKE_BUILD_TYPE "Release")
		#set(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -std=c++11 -O3 -D_QNX_SOURCE -Wall  -g -fPIC -fopenmp -fpermissive")
 		SET(CMAKE_CXX_COMPILER ${toolchain_dir}/bin/aarch64-none-linux-gnu-g++)
	    SET(CMAKE_C_COMPILER ${toolchain_dir}/bin/aarch64-none-linux-gnu-gcc)
        SET(CMAKE_LINKER ${toolchain_dir}/bin/aarch64-none-linux-gnu-ld)
		# SET(CMAKE_CXX_COMPILER ${toolchain_dir}/bin/aarch64-linux-gnu-g++)
	    # SET(CMAKE_C_COMPILER ${toolchain_dir}/bin/aarch64-linux-gnu-gcc)
        # SET(CMAKE_LINKER ${toolchain_dir}/bin/aarch64-linux-gnu-ld)
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
