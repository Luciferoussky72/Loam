cmake_minimum_required(VERSION 4.1)
set(CMAKE_CXX_COMPILER g++-16)
project(Loam VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 26)

# Loam relies on SDL3 for rendering, so it refuses to compile without you having it installed
find_package(SDL3 QUIET)
if (NOT SDL3_FOUND)
    message(FATAL_ERROR "Loam relies on SDL3 for rendering, so it refuses to compile without you having it installed.
        Get it at https://github.com/libsdl-org/SDL")
endif()
# And Loam relies on SDL_mixer for sounds...
find_package(SDL3_mixer QUIET)
if (NOT SDL3_mixer_FOUND)
    message(FATAL_ERROR "And Loam relies on SDL_mixer for sounds...
    Get it at https://github.com/libsdl-org/SDL_mixer")
endif()

# Loam uses Python for compile scripts, although it will still compile without it (for now)
find_package(Python3 QUIET COMPONENTS Interpreter)
if (NOT Python3_FOUND)
    message(WARNING "Python wasn't found, and Loam uses Python for compile scripts, although it will still compile without it (for now)")
endif()

add_library(loam STATIC
        # ImGui stuff, as Loam uses ImGui's SDL implementation for debug UI
        libraries/imgui/imgui.cpp
        libraries/imgui/imgui_draw.cpp
        libraries/imgui/imgui_tables.cpp
        libraries/imgui/imgui_widgets.cpp
        libraries/imgui/imgui_demo.cpp
        libraries/imgui/backends/imgui_impl_sdl3.cpp
        libraries/imgui/backends/imgui_impl_sdlgpu3.cpp

        # Actual Loam stuff
        src/Gamepad.cpp
        src/Loader.cpp
        src/Random.cpp
        src/Sprites.cpp
        src/Timing.cpp
        src/KeyboardMouse.cpp
        src/Vec2.cpp
        src/Collisions.cpp
        src/Shapes.cpp
        src/Sound.cpp
)

# Any custom compile commands should go here; be sure to add warnings for each command for if Python wasn't found
if (Python3_FOUND)
    add_custom_command(
            TARGET loam PRE_BUILD
            COMMAND ${Python3_EXECUTABLE} ${CMAKE_SOURCE_DIR}/compile_scripts/loam_hpp_generator.py
            COMMENT "Auto-generating loam.hpp based on the headers in include/loam/"
    )
else()
    message(WARNING "loam.hpp will not be auto-generated. If you've added new headers, run compile_scripts/loam_hpp_generator.py manually")
endif()

# end custom compile commands

target_compile_options(loam PRIVATE
        # Set the STL to the C++26 STL
        -std=c++26
        # Turn on reflection (has no runtime cost, thankfully, but we still need to tell the compiler to turn it on)
        -freflection
        # Turn off exceptions
        -fno-exceptions
        # Turn off errno to speed up math functions
        -fno-math-errno
        # The warning flags
        -Wall -Wextra -Wpedantic -Werror
        # Conditionally compile based on whether it's a debug or release build
        $<$<CONFIG:Debug>: -O0 -g>
        $<$<CONFIG:Release>: -O2>
)

target_include_directories(loam PUBLIC include/)
target_include_directories(loam PUBLIC "libraries/")
target_include_directories(loam PUBLIC "libraries/imgui/")
target_include_directories(loam PUBLIC "libraries/imgui/backends/")
target_include_directories(loam PUBLIC "libraries/tomlplusplus/")

target_link_libraries(loam PUBLIC SDL3::SDL3 SDL3_mixer::SDL3_mixer)