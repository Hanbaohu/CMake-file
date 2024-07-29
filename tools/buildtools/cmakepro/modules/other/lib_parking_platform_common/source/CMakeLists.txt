file(GLOB_RECURSE  c_srcs "${LIB_PARKING_PLATRORM_COMMON_PATH}/source/*.c")
file(GLOB_RECURSE  cxx_srcs "${LIB_PARKING_PLATRORM_COMMON_PATH}/source/*.cpp")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DOPENCV=1 -DHAVE_STRUCT_TIMESPEC") 
set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS} -DOPENCV=1 -DHAVE_STRUCT_TIMESPEC")

LIST(REMOVE_ITEM c_srcs "${LIB_PARKING_PLATRORM_COMMON_PATH}/source/pk_sensor_common/LinApp.c")
LIST(REMOVE_ITEM c_srcs "${LIB_PARKING_PLATRORM_COMMON_PATH}/source/pk_common/PK_Task.c")
LIST(REMOVE_ITEM c_srcs "${LIB_PARKING_PLATRORM_COMMON_PATH}/source/pk_common/PK_Calibration.c")


INCLUDE_DIRECTORIES(${LIB_PARKING_PLATRORM_COMMON_PATH}/include)
include_directories(
			${COMM_PATH}/source/interface/common
			${COMM_PATH}/source/interface/cv
			${COMM_PATH}/source/interface/intrinsic_modeller
			${COMM_PATH}/source/interface/avm
			${COMM_PATH}/source/interface/smc
			${COMM_PATH}/source/interface/algo
			${COMM_PATH}/source/interface/math
			${COMM_PATH}/source/interface/ml
			${COMM_PATH}/thirdparty/opencv410/include
			${COMM_PATH}/thirdparty/opencv410/include/opencv
			${COMM_PATH}/thirdparty/opencv410/include/opencv2
			${COMM_PATH}/source/utility/
			${COMM_PATH}/thirdparty/avpmap/interface
			${COMM_PATH}/thirdparty/avpmap/source
			${COMM_PATH}/source/interface/app
			${COMM_PATH}/source/interface/schedule
			${COMM_PATH}/thirdparty/Eigen
			${COMM_PATH}/source/utility/avpmap
			${COMM_PATH}/source/interface/vehmdl
			${COMM_PATH}/source/utility/TargetPosition
			${COMM_PATH}/source/utility/PathFollow/spline
			${COMM_PATH}/source/utility/PathFollow/control
			${TSML_PATH}/source/core/vehmdl
			${TSML_PATH}/source
			${TSML_PATH}/source/core
			${COMM_PATH}/source/interface/display
			${COMM_PATH}/source/utility/vehmdl
			${COMM_PATH}/source/interface/multiprocess
			${COMM_PATH}/source/utility/dim3
			${COMM_PATH}/source/interface/algo
			${COMM_PATH}/source/interface/common
			${COMM_PATH}/source/interface
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/pk_common/include
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/pk_plan/include
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/pk_plan_common
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/pk_sensorfusion
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/pk_sensorfusion/include
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/pk_sensorfusion/PK_SensorPreproc
			${LIB_PARKING_PLATRORM_COMMON_PATH}/sourcepk_sensorfusion/PK_SF_A
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/pk_sensorfusion/PK_SF_B
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/asw/include
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/asw/RTE
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/asw/RTE/PK
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/asw/RTE/Common
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/RTE/api
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/TC275/MCAL/API
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/TC275/MCAL/Integration
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/BSW/LLSW/Services_Layer/Communication_Services
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/BSW/LLSW/System_Services/PowerM
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/BSW/LLSW/Microcontroller_Abstraction_Layer/MemoryDrivers/Eep
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/TC275/MCAL/Modules/Adc/inc
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/BSW/LLSW/ECU_Abstraction_Layer/Memory_Hardware_Abstraction/MemIf
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/TC275/MCAL/Integration/Modules/Spi/inc
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/BSW/LLSW/Servies_Layer/System_Services/SchM
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/TARGET/TC275/MCAL/MCAL_Gen/inc
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/BSW/LLSW/Services_Layer/Communication_Services/Com
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/asw/RTE/RD
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/RTE/gen
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/TC275/MCAL/Modules/Uart/inc
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/BSW/LLSW/Servies_Layer/System_Services/Dem
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/sim/llva
			${LIB_PARKING_PLATRORM_COMMON_PATH}/source/bsw/BSW/LLSW/Services_Layer/System_Services/SchM
		)

SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")

ADD_LIBRARY(${PROJECT_NAME} SHARED ${c_srcs} ${cxx_srcs})# LINKER_LANGUAGE CXX)


