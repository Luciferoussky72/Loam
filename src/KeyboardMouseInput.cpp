#include "loam/KeyboardMouseInput.hpp"

#include <cstring>

namespace loam {
    /**
     * Meant to give a cleaner way to refer to SDL mouse buttons
     */
    enum class MouseButtons {
        left_click = 1,
        middle_click,
        right_click,
        button_x1,
        button_x2
    };

    KeyboardMouseInput::KeyboardMouseInput() {
        if (keyboard_mouse_instance_exists_please_do_not_make_another) {
            throw keyboard_initialization_input_error();
        }
        keyboard_mouse_instance_exists_please_do_not_make_another = true;
        current_key_state = SDL_GetKeyboardState(nullptr);

        current_mouse_state = SDL_GetMouseState(&mouse_x, &mouse_y);
    }

    void KeyboardMouseInput::update() {
        std::memcpy(previous_key_state, current_key_state, SDL_SCANCODE_COUNT);
        current_key_state = SDL_GetKeyboardState(nullptr);

        previous_mouse_state = current_mouse_state;
        current_mouse_state = SDL_GetMouseState(&mouse_x, &mouse_y);

    }

    bool KeyboardMouseInput::is_key_down(SDL_Scancode key) const {
        return current_key_state[key];
    }

    bool KeyboardMouseInput::is_key_pressed(SDL_Scancode key) const {
        return current_key_state[key] and !previous_key_state[key];
    }

    bool KeyboardMouseInput::is_key_released(SDL_Scancode key) const {
        return !current_key_state[key] and previous_key_state[key];
    }

    bool KeyboardMouseInput::is_mouse_button_down(int button) const {
        return current_mouse_state & SDL_BUTTON_MASK(button);
    }

    bool KeyboardMouseInput::is_mouse_button_pressed(int button) const {
        return (current_mouse_state & SDL_BUTTON_MASK(button)) and
               !(previous_mouse_state & SDL_BUTTON_MASK(button));
    }

    bool KeyboardMouseInput::is_mouse_button_released(int button) const {
        return !(current_mouse_state & SDL_BUTTON_MASK(button)) and
               (previous_mouse_state & SDL_BUTTON_MASK(button));
    }
} // loam