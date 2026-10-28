cmake_minimum_required(VERSION 3.22)
project(libsba_archive LANGUAGES C CXX)

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
  SOURCE_SUBDIR build/cmake
)
FetchContent_MakeAvailable(zstd)

# Pinned upstream AEGIS implementation; the original SBA binary statically
# includes AEGIS-128X2 and AEGIS-256 support.
FetchContent_Declare(
  libaegis
  GIT_REPOSITORY https://github.com/aegis-aead/libaegis.git
  GIT_TAG 0bb16395782de7d3b0ec28735c5e7e09e6551c93
  GIT_SHALLOW FALSE
)
FetchContent_MakeAvailable(libaegis)

# Reference Argon2 implementation, pinned to the 2019-07-02 release. The
# library is built in no-thread mode for portable Android NDK builds; Argon2
# still computes the same result, with lanes scheduled serially.
FetchContent_Declare(
  argon2
  GIT_REPOSITORY https://github.com/P-H-C/phc-winner-argon2.git
  GIT_TAG 20190702
  GIT_SHALLOW TRUE
)
FetchContent_GetProperties(argon2)
if(NOT argon2_POPULATED)
  FetchContent_Populate(argon2)
endif()

add_library(argon2_ref STATIC
  "${argon2_SOURCE_DIR}/src/argon2.c"
  "${argon2_SOURCE_DIR}/src/core.c"
  "${argon2_SOURCE_DIR}/src/encoding.c"
  "${argon2_SOURCE_DIR}/src/ref.c"
  "${argon2_SOURCE_DIR}/src/blake2/blake2b.c"
)
target_include_directories(argon2_ref PUBLIC "${argon2_SOURCE_DIR}/include")
target_include_directories(argon2_ref PRIVATE "${argon2_SOURCE_DIR}/src")
target_compile_definitions(argon2_ref PRIVATE ARGON2_NO_THREADS)

add_library(sba_archive SHARED src/libsba_archive.cpp)
target_include_directories(sba_archive PRIVATE "${zstd_SOURCE_DIR}/lib" "${argon2_SOURCE_DIR}/include")
target_link_libraries(sba_archive PRIVATE libzstd_static argon2_ref aegis log)
target_compile_options(sba_archive PRIVATE -Wall -Wextra -Wpedantic -Werror=return-type)
set_target_properties(sba_archive PROPERTIES OUTPUT_NAME "sba_archive")
