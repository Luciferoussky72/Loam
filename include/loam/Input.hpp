#pragma once

/**
 * This is a tiny little header for both kinds of input
 */
#include <loam/KeyboardMouse.hpp>
#include <loam/Gamepad.hpp>
namespace loam {
    enum class InputType {
        KeyboardMouse,
        Gamepad
    };
} // loam