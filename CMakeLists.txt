cmake_minimum_required(VERSION 4.1)
set(CMAKE_CXX_COMPILER g++-16)
project(Loam VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 26)

# Loam relies on SDL3 for rendering, so it refuses to compile without you having it installed
find_package(SDL3 QUIET)
if (NOT SDL3_FOUND)
    message(FATAL_ERROR "Loam requires SDL3. Get it at https://github.com/libsdl-org/SDL")
endif()
# And SDL_mixer for sounds...
find_package(SDL3_mixer QUIET)
if (NOT SDL3_mixer_FOUND)
    message(FATAL_ERROR "Loam requires SDL3_mixer for audio. Get it at https://github.com/libsdl-org/SDL_mixer")
endif()

# Loam uses Python for compile scripts, although it will still compile without it (for now)
find_package(Python3 QUIET COMPONENTS Interpreter)
if (NOT Python3_FOUND)
    message(WARNING "Python not found; install Python if you want Loam to automatically handle certain parts of compilation")
endif()

add_library(Loam STATIC
        src/Engine.cpp
        src/Gamepad.cpp
        src/Loader.cpp
        src/Random.cpp
        src/Spritesheet.cpp
        src/Timing.cpp
        src/KeyboardMouse.cpp
        src/Vec2.cpp
        src/Collisions.cpp
        src/Shapes.cpp
        src/Audio.cpp
)

# Any custom compile commands should go here wrap them in if (Python3_FOUND) so CMake can properly sort them out
if (Python3_FOUND)
    add_custom_command(
            TARGET Loam PRE_BUILD
            COMMAND ${Python3_EXECUTABLE} ${CMAKE_SOURCE_DIR}/compile_scripts/loam_hpp_generator.py
            COMMENT "Auto-generating loam.hpp"
    )
else()
    message(WARNING "loam.hpp will not be auto-generated. If you've added new headers, run compile_scripts/loam_hpp_generator.py manually")
endif()

# end custom compile commands


target_compile_options(Loam PRIVATE
        -std=c++26
        -freflection
        -Wall -Wextra -Wpedantic
        $<$<CONFIG:Debug>: -O0 -g>
        $<$<CONFIG:Release>: -O2>
)

target_include_directories(Loam PUBLIC include/)
target_link_libraries(Loam PUBLIC SDL3::SDL3 SDL3_mixer::SDL3_mixer)