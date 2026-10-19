cmake_minimum_required(VERSION 3.22.1)
project(bare_native_lib LANGUAGES C CXX)

include(FetchContent)

# Pin the upstream, portable AEGIS implementation rather than reimplementing
# the primitive locally. SBA's chunk framing is layered above this API and is
# kept fail-closed until the reference framing is verified independently.
set(BUILD_SHARED_LIBS OFF CACHE BOOL "" FORCE)
set(FAVOR_PERFORMANCE OFF CACHE BOOL "" FORCE)
FetchContent_Declare(
    libaegis
    GIT_REPOSITORY https://github.com/aegis-aead/libaegis.git
    GIT_TAG 48d7ddfc5c9182d6b3c8cf284f12483209289cb1
    GIT_SHALLOW FALSE
)
FetchContent_MakeAvailable(libaegis)

add_library(native-lib SHARED native-lib.cpp)
target_compile_features(native-lib PRIVATE cxx_std_17)
target_compile_options(native-lib PRIVATE -Wall -Wextra -Werror=return-type)
target_link_libraries(native-lib PRIVATE android dl log)

# Independent BΛR☰ SBA JNI library. This target deliberately does not link or
# package SwiftBackup's prebuilt libsba_archive.so: its exported JNI symbols
# refer to com.swiftapps.sba and cannot bind to the BΛR☰ package.
add_library(sba_archive SHARED sba_archive.cpp sba_aegis.cpp)
target_compile_features(sba_archive PRIVATE cxx_std_17)
target_compile_options(sba_archive PRIVATE -Wall -Wextra -Werror=return-type)
target_link_libraries(sba_archive PRIVATE aegis android log)
