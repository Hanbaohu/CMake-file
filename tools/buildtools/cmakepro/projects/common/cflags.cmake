# target platform architecture
if (CMAKE_SYSTEM_PROCESSOR MATCHES "aarch64")
    add_definitions(-DARM64)
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "x86_64")
    add_definitions(-DX86_64)
endif()

if(WIN32)
    SET(CMAKE_CXX_FLAGS_RELEASE  "-O2 -DNODEBUG -DNDEBUG -D_CRT_NONSTDC_NO_WARNINGS -D_CRT_SECURE_NO_WARNINGS")
    SET(CMAKE_CXX_FLAGS_DEBUG  "-g -ggdb -O2 -D_DEBUG -D_CRT_NONSTDC_NO_WARNINGS -fpermissive")
else()
    SET(CMAKE_CXX_FLAGS_DEBUG  "-fPIC -g -ggdb -std=c++14 -D_DEBUG -D_CRT_NONSTDC_NO_WARNINGS -fpermissive") # -fpermissive  #-Wno-psabi
    SET(CMAKE_CXX_FLAGS_RELEASE  "-fPIC -O2 -DNODEBUG  -std=c++14 -s -D_CRT_NONSTDC_NO_WARNINGS -fpermissive") #-fpermissive #-Wno-psabi
endif()