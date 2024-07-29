project(parkoccupy)

################################################################################
# Source groups
################################################################################
set(no_group_source_files
    "${PARKOCCUPY}/source/core/pkoccupy_main.cpp"
    "${PARKOCCUPY}/source/core/pkoccupy_main.h"
    "${PARKOCCUPY}/source/core/pkoccupy_main_sonar.cpp"
    "${PARKOCCUPY}/source/core/pkoccupy_main_sonar.h"
)
source_group("" FILES ${no_group_source_files})

set(source__io
    "${PARKOCCUPY}/source/interface/pkoccupy_fw.cpp"
    "${PARKOCCUPY}/source/interface/pkoccupy_fw.h"
)
source_group("source\\io" FILES ${source__io})

set(windows
    "${PARKOCCUPY}/source/platform/windows/dllmain.cpp"
    "${PARKOCCUPY}/source/platform/windows/stdafx.cpp"
    "${PARKOCCUPY}/source/platform/windows/stdafx.h"
    "${PARKOCCUPY}/source/platform/windows/targetver.h"
)
source_group("windows" FILES ${windows})

set(ALL_FILES
    ${no_group_source_files}
    ${source__io}
    ${windows}
)

################################################################################
# Include directories
################################################################################
include_directories(
        "${PARKOCCUPY}/source/platform/windows;"
        "${PARKOCCUPY}/source/core;"
        "${PARKOCCUPY}/source/interface;"
        "${COMM_PATH}/source/interface/common;"
        "${COMM_PATH}/source/interface/cv;"
        "${COMM_PATH}/source/interface/intrinsic_modeller;"
        "${COMM_PATH}/source/interface/avm;"
        "${COMM_PATH}/source/interface/smc;"
        "${COMM_PATH}/source/interface/algo;"
        "${COMM_PATH}/source/interface/math;"
        "${COMM_PATH}/source/interface/ml;"
        "${COMM_PATH}/source/utility/imgmorph;"
        "${COMM_PATH}/source/utility/math;"
        "${COMM_PATH}/source/utility/data_association;"
        "${COMM_PATH}/source/utility/dim3;"
        "${COMM_PATH}/source/utility/vehmdl;"
        # "${CMAKE_CURRENT_SOURCE_DIR}/${PARKOCCUPY}/${PARKOCCUPY}/spaceos;"
        "${APA_COMM_MATH_PATH}/include;"
        "${FW_SDK_PATH}/service/opencv/include;"
        "${COMM_PATH}/source/interface/cnn"
	${${PROJECT_NAME}_include_directories}
	${platform_opencv_include_directories}

)

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}  ${${PROJECT_NAME}_CXX_FLAGS}") 

if(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_CRT_SECURE_NO_WARNINGS -DMODULER_EXPORTS -D_USRDLL -D_PARKOCCUPY_ -D_AEB_ -DVIDEOCAPTURE_EXPORTS -D_MBCS")
endif()


################################################################################
# Target
################################################################################
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "perception/datafusion")

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Oi;
                        /Gy;
                        /wd4819;
                        /Od;
                        /sdl;
                        /W3;
                        /Y-;
                        ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                        ${DEFAULT_CXX_EXCEPTION_HANDLING};
                        )

target_link_options(${PROJECT_NAME} PRIVATE
                /OPT:REF;
                /OPT:ICF;
                /INCREMENTAL:NO;
                    /DEBUG;
                    /SUBSYSTEM:WINDOWS
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################





#target_link_libraries(comm PRIVATE ${LIBRARIES})
