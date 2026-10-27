cmake_minimum_required(VERSION 3.22)
project(libsba_archive_cpp LANGUAGES C CXX)

if(NOT ANDROID)
  message(FATAL_ERROR "This prototype is intended to be cross-compiled with the Android NDK.")
endif()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(BUILD_SHARED_LIBS OFF CACHE BOOL "" FORCE)

include(FetchContent)
set(ZSTD_BUILD_SHARED OFF CACHE BOOL "" FORCE)
set(ZSTD_BUILD_STATIC ON CACHE BOOL "" FORCE)
set(ZSTD_BUILD_PROGRAMS OFF CACHE BOOL "" FORCE)
set(ZSTD_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(ZSTD_MULTITHREAD_SUPPORT OFF CACHE BOOL "" FORCE)

FetchContent_Declare(
  zstd
  GIT_REPOSITORY https://github.com/facebook/zstd.git
  GIT_TAG v1.5.7
  GIT_SHALLOW TRUE
)
FetchContent_MakeAvailable(zstd)

add_library(sba_archive_cpp SHARED src/libsba_archive.cpp)
target_include_directories(sba_archive_cpp PRIVATE "${zstd_SOURCE_DIR}/lib")
target_link_libraries(sba_archive_cpp PRIVATE libzstd_static log)
target_compile_options(sba_archive_cpp PRIVATE -Wall -Wextra -Wpedantic -Werror=return-type)
set_target_properties(sba_archive_cpp PROPERTIES OUTPUT_NAME "sba_archive_cpp")
