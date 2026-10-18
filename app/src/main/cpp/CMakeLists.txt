cmake_minimum_required(VERSION 3.22.1)
project(bare_native_lib LANGUAGES CXX)

add_library(native-lib SHARED native-lib.cpp)
target_compile_features(native-lib PRIVATE cxx_std_17)
target_compile_options(native-lib PRIVATE -Wall -Wextra -Werror=return-type)
target_link_libraries(native-lib PRIVATE android dl log)

# Independent BΛR☰ SBA JNI library. This target deliberately does not link or
# package SwiftBackup's prebuilt libsba_archive.so: its exported JNI symbols
# refer to com.swiftapps.sba and cannot bind to the BΛR☰ package.
add_library(sba_archive SHARED sba_archive.cpp)
target_compile_features(sba_archive PRIVATE cxx_std_17)
target_compile_options(sba_archive PRIVATE -Wall -Wextra -Werror=return-type)
target_link_libraries(sba_archive PRIVATE android log)
