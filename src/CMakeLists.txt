cmake_minimum_required(VERSION 3.8)

SET(CMAKE_BUILD_TYPE "RELEASE")

include_directories(${PROJECT_SOURCE_DIR}/include)
aux_source_directory(. SRC_LIST)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/lib/static)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/lib/dynamic)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)

set(CMAKE_C_VISIBILITY_PRESET hidden)
set(CMAKE_CXX_VISIBILITY_PRESET hidden)

add_library(RC4_static STATIC ${SRC_LIST})
set_target_properties (RC4_static PROPERTIES OUTPUT_NAME "rc4encrypt")
add_library(RC4_shared SHARED ${SRC_LIST})
set_target_properties (RC4_shared PROPERTIES OUTPUT_NAME "rc4encrypt")
