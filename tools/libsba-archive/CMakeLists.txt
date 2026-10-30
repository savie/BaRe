cmake_minimum_required(VERSION 3.22)
project(libsba_archive LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
include(CTest)

include(FetchContent)
set(BUILD_SHARED_LIBS OFF CACHE BOOL "" FORCE)
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

FetchContent_Declare(
  libaegis
  GIT_REPOSITORY https://github.com/aegis-aead/libaegis.git
  GIT_TAG 0bb16395782de7d3b0ec28735c5e7e09e6551c93
  GIT_SHALLOW FALSE
)
FetchContent_MakeAvailable(libaegis)

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

if(BUILD_TESTING AND NOT ANDROID)
  add_executable(sba1_format_test tests/sba1_format_test.cpp src/sba1_format.cpp)
  add_test(NAME sba1_format COMMAND sba1_format_test)

  add_executable(argon2id_kat tests/argon2id_kat.c)
  target_link_libraries(argon2id_kat PRIVATE argon2_ref)
  add_test(NAME argon2id_known_answers COMMAND argon2id_kat)

  add_executable(aegis_smoke tests/aegis_smoke.c)
  target_include_directories(aegis_smoke PRIVATE "${libaegis_SOURCE_DIR}/src/include")
  target_link_libraries(aegis_smoke PRIVATE aegis)
  add_test(NAME aegis_authentication_smoke COMMAND aegis_smoke)
endif()

if(ANDROID)
  add_library(sba_archive SHARED src/libsba_archive.cpp src/sba1_format.cpp)
  target_include_directories(sba_archive PRIVATE
    "${zstd_SOURCE_DIR}/lib"
    "${argon2_SOURCE_DIR}/include"
    "${libaegis_SOURCE_DIR}/src/include"
  )
  target_link_libraries(sba_archive PRIVATE libzstd_static argon2_ref aegis log)
  target_compile_options(sba_archive PRIVATE -Wall -Wextra -Wpedantic -Werror=return-type)
  # Release APKs do not need DWARF/debug sections. Keep the JNI export map intact;
  # only remove non-runtime debug metadata from the final shared object.
  target_compile_options(sba_archive PRIVATE
    $<$<CONFIG:Release>:-g0>
    $<$<CONFIG:RelWithDebInfo>:-g0>
    -ffunction-sections
    -fdata-sections
  )
  target_link_options(sba_archive PRIVATE
    $<$<CONFIG:Release>:-Wl,--gc-sections>
    $<$<CONFIG:RelWithDebInfo>:-Wl,--gc-sections>
    -Wl,--strip-debug
  )
  target_link_options(sba_archive PRIVATE "-Wl,--version-script=${CMAKE_CURRENT_SOURCE_DIR}/src/jni_exports.map")
  set_target_properties(sba_archive PROPERTIES
    OUTPUT_NAME "sba_archive"
    CXX_VISIBILITY_PRESET hidden
    VISIBILITY_INLINES_HIDDEN YES
  )
endif()
