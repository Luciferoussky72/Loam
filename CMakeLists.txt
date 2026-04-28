cmake_minimum_required(VERSION 4.1)
set(CMAKE_CXX_COMPILER g++-16)
project(Loam VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++26 -freflection")

add_library(Loam STATIC
        src/loam.cpp
        src/Engine.cpp
        src/Gamepad.cpp
        src/Loader.cpp
        src/Random.cpp
        src/Sprite.cpp
        src/Timer.cpp
        src/Player.cpp
        src/KeyboardMouse.cpp
)


target_include_directories(Loam PUBLIC include/)
find_package(SDL3 REQUIRED)
target_link_libraries(Loam PUBLIC SDL3::SDL3)