cmake_minimum_required(VERSION 3.8)

SET(CMAKE_BUILD_TYPE "RELEASE")

include_directories(${PROJECT_SOURCE_DIR}/include)
aux_source_directory(. SRC_LIST)

set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/lib)

set(CMAKE_C_VISIBILITY_PRESET hidden)
set(CMAKE_CXX_VISIBILITY_PRESET hidden)

add_library(RC4_static STATIC ${SRC_LIST})
set_target_properties (RC4_static PROPERTIES OUTPUT_NAME "rc4encrypt")
add_library(RC4_shared SHARED ${SRC_LIST})
set_target_properties (RC4_shared PROPERTIES OUTPUT_NAME "rc4encrypt")
