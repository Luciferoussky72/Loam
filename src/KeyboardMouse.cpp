#include "loam/KeyboardMouse.hpp"

#include <cstdlib>
#include <cstring>

namespace loam {
    KeyboardMouse::KeyboardMouse() {
        if (keyboard_mouse_instance_exists_please_do_not_make_another_unless_you_want_to_summon_a_time_worm) {
            SDL_Log("You can't make more than one KeyboardMouse instance!");
            std::abort();
        }
        keyboard_mouse_instance_exists_please_do_not_make_another_unless_you_want_to_summon_a_time_worm = true;
        current_key_state = SDL_GetKeyboardState(nullptr);

        current_mouse_state = SDL_GetMouseState(&mouse_x, &mouse_y);
    }

    KeyboardMouse::~KeyboardMouse() {
        keyboard_mouse_instance_exists_please_do_not_make_another_unless_you_want_to_summon_a_time_worm = false;
    }

    void KeyboardMouse::update() {
        std::memcpy(previous_key_state, current_key_state, SDL_SCANCODE_COUNT);
        current_key_state = SDL_GetKeyboardState(nullptr);

        previous_mouse_state = current_mouse_state;
        current_mouse_state = SDL_GetMouseState(&mouse_x, &mouse_y);
    }

    bool KeyboardMouse::is_key_down(SDL_Scancode key) const {
        return current_key_state[key];
    }

    bool KeyboardMouse::is_key_pressed(SDL_Scancode key) const {
        return current_key_state[key] and !previous_key_state[key];
    }

    bool KeyboardMouse::is_key_released(SDL_Scancode key) const {
        return !current_key_state[key] and previous_key_state[key];
    }

    bool KeyboardMouse::is_mouse_button_down(MouseButton button) const {
        return current_mouse_state & SDL_BUTTON_MASK(static_cast<uint>(button));
    }

    bool KeyboardMouse::is_mouse_button_pressed(MouseButton button) const {
        return (current_mouse_state & SDL_BUTTON_MASK(static_cast<uint>(button))) and
               !(previous_mouse_state & SDL_BUTTON_MASK(static_cast<uint>(button)));
    }

    bool KeyboardMouse::is_mouse_button_released(MouseButton button) const {
        return !(current_mouse_state & SDL_BUTTON_MASK(static_cast<uint>(button))) and
               (previous_mouse_state & SDL_BUTTON_MASK(static_cast<uint>(button)));
    }
}