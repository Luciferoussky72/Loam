#pragma once

/**
 * This is a tiny little header for both kinds of input
 */
#include <loam/KeyboardMouseInput.hpp>
#include <loam/GamepadInput.hpp>
namespace loam {
    enum class InputType {
        KeyboardMouse,
        Gamepad
    };
} // loam