project(SpaceOS_Launcher)


################################################################################
# Source groups
################################################################################
set(Sources
    "${MY_ROOT_DIR}/spaceos/SpaceOS_Launcher/source/SpaceOS_Launcher/maincontrol.cpp"
    "${MY_ROOT_DIR}/spaceos/SpaceOS_Launcher/source/SpaceOS_Launcher/stdafx.cpp"
)
source_group("Sources" FILES ${Sources})

set(ALL_FILES
    ${Sources}
)


################################################################################
# Include directories
################################################################################
include_directories(
	"${MY_ROOT_DIR}/SpaceOS_Launcher/source/SpaceOS_Launcher"
	"${COMM_PATH}/source/interface/common;"
	"${COMM_PATH}/thirdparty/easy_profiler/x64/include/"

	${${PROJECT_NAME}_include_directories}
	# ${platform_opencv_include_directories}

)


################################################################################
# Target
################################################################################
add_executable(${PROJECT_NAME} ${ALL_FILES})

set(LIBRARIES
    comm
	frameworkbase
	easy_profiler
	"kernel32;"
	"user32;"
	"gdi32;"
	"winspool;"
	"comdlg32;"
	"advapi32;"
	"shell32;"
	"ole32;"
	"oleaut32;"
	"uuid;"
	"odbc32;"
	"odbccp32"
    ${${PROJECT_NAME}_link_libraries}
)
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
target_link_directories(${PROJECT_NAME} PRIVATE
			"${COMM_PATH}/thirdparty/protobuf/lib/x86_64"
			"${COMM_PATH}/thirdparty/ffmpeg/lib/x64"
			"${COMM_PATH}/thirdparty/easy_profiler/x64/lib"
)

################################################################################
# Compile definitions
################################################################################
target_compile_definitions(${PROJECT_NAME} PRIVATE "BEV_VER;WIN32;_CRT_SECURE_NO_WARNINGS;NODEBUG;_CONSOLE;SPOS_WIN;_MAIN_;_CRT_SECURE_NON_WARNINGS;BUILD_WITH_EASY_PROFILER=1")

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
					/MP;
					/GL-;
					/Oi;
					/Gy;
					/Od;
					/sdl;
					/W3;
						${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
						${DEFAULT_CXX_EXCEPTION_HANDLING}
						)

target_link_options(${PROJECT_NAME} PRIVATE
					/OPT:REF;
					/OPT:ICF;
					/PROFILE;
					/INCREMENTAL:NO
					/DEBUG;
					/SUBSYSTEM:CONSOLE
                    )
endif()

# ################################################################################
# # Dependencies
# ################################################################################
add_dependencies(${PROJECT_NAME}
	comm
	frameworkbase
)



