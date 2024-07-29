project(avm)

################################################################################
# Source groups
################################################################################

# WINDOWS SPECIFIC

file(GLOB_RECURSE ALL_FILES
	"${AVM_ICU3_PATH}/src/*.c"
	"${AVM_ICU3_PATH}/src/*.c??"
)

################################################################################
# Include directories
################################################################################
include_directories(
	"${AVM_ICU3_PATH}/include;"
	"${AVM_ICU3_PATH}/src;"
	"${AVM_ICU3_PATH}/include/freetype2;"
	"${AVM_ICU3_PATH}/src/sv/HMISource;"
	"${COMM_PATH}/thirdparty/cpptime;"
)

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${${PROJECT_NAME}_CXX_FLAGS}")

################################################################################
# Target
################################################################################

add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "avm")

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}   -mcpu=cortex-a72 -Wno-psabi -O1 -Dqnx -D_TDA4_QNX_ -fpermissive  -fPIC  -std=c++11")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC -mcpu=cortex-a72 -Wno-psabi -O1 -Dqnx -D_TDA4_QNX_")

TARGET_LINK_LIBRARIES(${PROJECT_NAME} libEGL.so libGLESv2.so libsp_comm.so libframeworkbase.so)

#设置输出路径
#SET(LIBRARY_OUTPUT_PATH "${OUTPUT_PATH}")