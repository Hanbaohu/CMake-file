project(apa_comm_math)

################################################################################
# Source groups
################################################################################
set( header
    "${APA_COMM_MATH_PATH}/include/acc_filter.h"
    "${APA_COMM_MATH_PATH}/include/apa_comm_data_type.h"
    "${APA_COMM_MATH_PATH}/include/apa_comm_def.h"
    "${APA_COMM_MATH_PATH}/include/car.h"
    "${APA_COMM_MATH_PATH}/include/geometry_comm.h"
    "${APA_COMM_MATH_PATH}/include/io_filter.h"
    "${APA_COMM_MATH_PATH}/include/lwp_filter.h"
    "${APA_COMM_MATH_PATH}/include/mean_filter.h"
    "${APA_COMM_MATH_PATH}/include/pid.h"
)
source_group("头文件" FILES ${header})

set(src
    "${APA_COMM_MATH_PATH}/source/apa_comm.cpp"
    "${APA_COMM_MATH_PATH}/source/geometry_comm.c"
    "${APA_COMM_MATH_PATH}/source/geometry_wrapper.c"
)
source_group("源文件" FILES ${src})

set(ALL_FILES
    ${header}
    ${src}
)

################################################################################
# Target
################################################################################
add_library(${PROJECT_NAME} SHARED ${ALL_FILES})
set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "common")

################################################################################
# Compile definitions
################################################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ")
if(MSVC)
target_compile_definitions(${PROJECT_NAME} PRIVATE "${CMAKE_CXX_FLAGS} -D_LIB -DUNICODE -D_UNICODE")
endif()

################################################################################
# Compile and link options
################################################################################
if(MSVC)
target_compile_options(${PROJECT_NAME} PRIVATE
                        /Oi;
                        /Gy;
                        /Y-;
                    /permissive-;
                    /sdl;
                    /W3;
                    ${DEFAULT_CXX_DEBUG_INFORMATION_FORMAT};
                    ${DEFAULT_CXX_EXCEPTION_HANDLING}
                    )
target_link_options(${PROJECT_NAME} PRIVATE
                        /OPT:REF;
                        /OPT:ICF;
                    /SUBSYSTEM:WINDOWS
                    )
endif()


#target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})

