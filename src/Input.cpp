#include "loam/Input.hpp"
#include <cmath>

namespace loam {
    Input::Input()
    : mouse_x(0), mouse_y(0), current_mouse_state(0), previous_mouse_state(0), mouse_active(false),
    keyboard_active(false),
    gamepad_active(false) {
        current_key_state = SDL_GetKeyboardState(nullptr);
        for (bool& k : previous_key_state) {
            k = false;
        }

        for (int i = 0; i < SDL_GAMEPAD_BUTTON_COUNT; i++) {
            current_gamepad_buttons[i] = 0;
            previous_gamepad_buttons[i] = 0;
        }

        int numGamepads = 0;
        SDL_JoystickID* gamepads = SDL_GetGamepads(&numGamepads);
        SDL_Log("Number of gamepads detected: %d", numGamepads);
        if (numGamepads > 0) {
            gamepad = SDL_OpenGamepad(gamepads[0]);
            if (gamepad) {
                SDL_Log("Gamepad connected: %s", SDL_GetGamepadName(gamepad));
            }
        } else {
            gamepad = nullptr;
        }
        SDL_free(gamepads);
    }

    Input::~Input() {
        if (gamepad) {
            SDL_CloseGamepad(gamepad);
        }
    }

    void Input::update() {
        for (int i = 0; i < SDL_SCANCODE_COUNT; i++) {
            if (current_key_state[i] != previous_key_state[i] and !keyboard_active) {
                SDL_Log("Keyboard/Mouse active.");
                keyboard_active = true;
                mouse_active = true;
                gamepad_active = false;
            }
            previous_key_state[i] = current_key_state[i];
        }
        if (current_mouse_state != previous_mouse_state and !mouse_active) {
            SDL_Log("Keyboard/Mouse active.");
            keyboard_active = true;
            mouse_active = true;
            gamepad_active = false;
        }
        previous_mouse_state = current_mouse_state;
        current_mouse_state = SDL_GetMouseState(&mouse_x, &mouse_y);

        if (gamepad) {
            for (int i = 0; i < SDL_GAMEPAD_BUTTON_COUNT; i++) {
                if ((current_gamepad_buttons[i] != previous_gamepad_buttons[i] or (get_gamepad_axis(SDL_GAMEPAD_AXIS_LEFTX) != 0.0f or get_gamepad_axis(SDL_GAMEPAD_AXIS_LEFTY) != 0.0f)) and !gamepad_active) {
                    SDL_Log("Gamepad active.");
                    gamepad_active = true;
                    keyboard_active = false;
                    mouse_active = false;
                }
                previous_gamepad_buttons[i] = current_gamepad_buttons[i];
                current_gamepad_buttons[i] = SDL_GetGamepadButton(gamepad, static_cast<SDL_GamepadButton>(i));
            }
        }
    }

    void Input::process_event(const SDL_Event* event) {
        if (event->type == SDL_EVENT_GAMEPAD_ADDED) {
            if (!gamepad) {
                gamepad = SDL_OpenGamepad(event->gdevice.which);
                if (gamepad) {
                    SDL_Log("Gamepad connected: %s", SDL_GetGamepadName(gamepad));
                } else {
                    SDL_Log("FAILED to open gamepad: %s", SDL_GetError());
                }
            }
        }
        if (event->type == SDL_EVENT_GAMEPAD_REMOVED) {
            if (gamepad and event->gdevice.which == SDL_GetGamepadID(gamepad)) {
                SDL_Log("Gamepad disconnected: %s", SDL_GetGamepadName(gamepad));
                SDL_CloseGamepad(gamepad);
                gamepad = nullptr;
            }
        }
    }

    bool Input::is_key_down(SDL_Scancode key) const {
        return current_key_state[key];
    }

    bool Input::is_key_pressed(SDL_Scancode key) const {
        return current_key_state[key] and !previous_key_state[key];
    }

    bool Input::is_key_released(SDL_Scancode key) const {
        return !current_key_state[key] and previous_key_state[key];
    }

    bool Input::is_keyboard_active() const {
        return keyboard_active;
    }

    bool Input::is_mouse_button_down(int button) const {
        return current_mouse_state & SDL_BUTTON_MASK(button);
    }

    bool Input::is_mouse_button_pressed(int button) const {
        return (current_mouse_state & SDL_BUTTON_MASK(button)) and
               !(previous_mouse_state & SDL_BUTTON_MASK(button));
    }

    bool Input::is_mouse_button_released(int button) const {
        return !(current_mouse_state & SDL_BUTTON_MASK(button)) and
               (previous_mouse_state & SDL_BUTTON_MASK(button));
    }

    float Input::get_mouse_x() const {
        return mouse_x;
    }

    float Input::get_mouse_y() const {
        return mouse_y;
    }

    bool Input::is_mouse_active() const {
        return mouse_active;
    }

    bool Input::is_gamepad_button_down(SDL_GamepadButton button) const {
        return gamepad and current_gamepad_buttons[button];
    }

    bool Input::is_gamepad_button_pressed(SDL_GamepadButton button) const {
        return gamepad and current_gamepad_buttons[button] and !previous_gamepad_buttons[button];
    }

    bool Input::is_gamepad_button_released(SDL_GamepadButton button) const {
        return gamepad and !current_gamepad_buttons[button] and previous_gamepad_buttons[button];
    }

    float Input::get_gamepad_axis(SDL_GamepadAxis axis) const {
        if (!gamepad) return 0.0f;

        Sint16 value = SDL_GetGamepadAxis(gamepad, axis);

        float normalized = value / 32767.0f;
        constexpr float deadzone = 0.15f;

        if (std::fabs(normalized) < deadzone) {
            return 0.0f;
        }

        return normalized;
    }

    bool Input::is_gamepad_connected() const {
        return gamepad;
    }

    bool Input::is_gamepad_active() const {
        return gamepad_active;
    }
} //loam