#include "loam/Gamepad.hpp"

#include <cmath>
#include <cstring>
#include <SDL3/SDL_log.h>

namespace loam {
    [[nodiscard]] std::optional<Gamepad> probe_for_gamepads(const SDL_Event& event) {
        if (event.type == SDL_EVENT_GAMEPAD_ADDED) {
            if (SDL_Gamepad* gamepad = SDL_OpenGamepad(event.gdevice.which)) {
                return Gamepad(gamepad);
            }
            SDL_Log("Failed to open gamepad: %s", SDL_GetError());
        }
        return std::nullopt;
    }

    Gamepad::Gamepad(SDL_Gamepad* gamepad) : gamepad_pointer(gamepad) {
        for (size_t i = 0; i < SDL_GAMEPAD_BUTTON_COUNT; ++i) {
            current_gamepad_buttons[i] = SDL_GetGamepadButton(gamepad, static_cast<SDL_GamepadButton>(i));
        }
    }

    Gamepad::Gamepad(Gamepad&& other) noexcept {
        gamepad_pointer = other.gamepad_pointer;
        other.gamepad_pointer = nullptr;

        std::memcpy(current_gamepad_buttons, other.current_gamepad_buttons, SDL_GAMEPAD_BUTTON_COUNT);
        std::memcpy(previous_gamepad_buttons, other.previous_gamepad_buttons, SDL_GAMEPAD_BUTTON_COUNT);
    }

    Gamepad& Gamepad::operator=(Gamepad&& other) noexcept {
        if (gamepad_pointer) {
            SDL_CloseGamepad(gamepad_pointer);
        }

        gamepad_pointer = other.gamepad_pointer;
        other.gamepad_pointer = nullptr;

        std::memcpy(current_gamepad_buttons, other.current_gamepad_buttons, SDL_GAMEPAD_BUTTON_COUNT);
        std::memcpy(previous_gamepad_buttons, other.previous_gamepad_buttons, SDL_GAMEPAD_BUTTON_COUNT);

        return *this;
    }

    Gamepad::~Gamepad() {
        if (gamepad_pointer) {
            SDL_CloseGamepad(gamepad_pointer);
        }
    }

    void Gamepad::update() {
        for (size_t i = 0; i < SDL_GAMEPAD_BUTTON_COUNT; ++i) {
            previous_gamepad_buttons[i] = current_gamepad_buttons[i];
            current_gamepad_buttons[i] = SDL_GetGamepadButton(gamepad_pointer, static_cast<SDL_GamepadButton>(i));
        }
    }

    void Gamepad::process_event(const SDL_Event& event) {
        if (event.type == SDL_EVENT_GAMEPAD_REMOVED) {
            if (gamepad_pointer == SDL_GetGamepadFromID(event.gdevice.which)) {
                SDL_CloseGamepad(gamepad_pointer);
                gamepad_pointer = nullptr;
                return;
            }
            SDL_Log("Failed to close gamepad: %s", SDL_GetError());
        }
    }

    bool Gamepad::is_gamepad_button_down(SDL_GamepadButton button) const {
        return gamepad_pointer and current_gamepad_buttons[button];
    }

    bool Gamepad::is_gamepad_button_pressed(SDL_GamepadButton button) const {
        return gamepad_pointer and current_gamepad_buttons[button] and !previous_gamepad_buttons[button];
    }

    bool Gamepad::is_gamepad_button_released(SDL_GamepadButton button) const {
        return gamepad_pointer and !current_gamepad_buttons[button] and previous_gamepad_buttons[button];
    }

    float Gamepad::get_gamepad_axis(SDL_GamepadAxis axis, float deadzone) const {
        if (!gamepad_pointer) return 0.0f;

        Sint16 value = SDL_GetGamepadAxis(gamepad_pointer, axis);
        float normalized = static_cast<float>(value) / 32767.0f;

        if (std::fabs(normalized) < deadzone) {
            return 0.0f;
        }

        return normalized;
    }
}