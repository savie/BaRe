cmake_minimum_required(VERSION 3.22.1)
project(bare_native_lib LANGUAGES CXX)

add_library(native-lib SHARED native-lib.cpp)

target_compile_features(native-lib PRIVATE cxx_std_17)
target_compile_options(native-lib PRIVATE -Wall -Wextra -Werror=return-type)
target_link_libraries(native-lib PRIVATE android dl log)
