cmake_minimum_required(VERSION 4.1)
set(CMAKE_CXX_COMPILER g++-16)
project(Loam VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 26)

add_library(Loam STATIC
        src/loam.cpp
        src/Engine.cpp
        src/Gamepad.cpp
        src/Loader.cpp
        src/Random.cpp
        src/Sprite.cpp
        src/Timer.cpp
        src/KeyboardMouse.cpp
        include/loam/Vec2.hpp
)

target_compile_options(Loam PRIVATE
        -std=c++26
        -freflection
        -Wall -Wextra -Wpedantic
        $<$<CONFIG:Debug>: -O0 -g -Wshadow>
        $<$<CONFIG:Release>: -O2>
)

target_include_directories(Loam PUBLIC include/)
find_package(SDL3 REQUIRED)
target_link_libraries(Loam PUBLIC SDL3::SDL3)