cmake_minimum_required(VERSION 3.5)
project(Loam VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 20)

add_library(Loam STATIC
        src/loam.cpp
        src/Coil.cpp
        src/Coil.hpp
)


target_include_directories(Loam PUBLIC include/)
find_package(SDL3 REQUIRED)
target_link_libraries(Loam PUBLIC SDL3::SDL3)