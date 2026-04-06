#include "loam/GamepadInput.hpp"
#include <cmath>

namespace loam {
    [[nodiscard]] std::optional<GamepadInput> probe_for_gamepads(const SDL_Event* event) {
        if (event->type == SDL_EVENT_GAMEPAD_ADDED) {
            SDL_Log("Gamepad was connected! Attempting to open now.");
            if (SDL_Gamepad* gamepad = SDL_OpenGamepad(event->gdevice.which)) {
                SDL_Log("Gamepad opened: %s", SDL_GetGamepadName(gamepad));
                return GamepadInput(gamepad);
            }
            SDL_Log("Failed to open gamepad: %s", SDL_GetError());
        }
        return std::nullopt;
    }

    GamepadInput::GamepadInput(SDL_Gamepad* gamepad) : gamepad(gamepad) {
        for (int i = 0; i < SDL_GAMEPAD_BUTTON_COUNT; i++) {
            current_gamepad_buttons[i] = SDL_GetGamepadButton(gamepad, static_cast<SDL_GamepadButton>(i));
        }
    }

    GamepadInput::~GamepadInput() {
        if (gamepad) {
            SDL_free(gamepad);
        }
    }

    void GamepadInput::update() {
        for (int i = 0; i < SDL_GAMEPAD_BUTTON_COUNT; i++) {
            previous_gamepad_buttons[i] = current_gamepad_buttons[i];
            current_gamepad_buttons[i] = SDL_GetGamepadButton(gamepad, static_cast<SDL_GamepadButton>(i));
        }
    }

    void GamepadInput::process_event(const SDL_Event* event) {
        if (event->type == SDL_EVENT_GAMEPAD_REMOVED) {
            SDL_Log("Gamepad was disconnected! Attempting to close now.");
            if (gamepad == SDL_GetGamepadFromID(event->gdevice.which)) {
                SDL_free(gamepad);
                gamepad = nullptr;
                return;
            }
            SDL_Log("Failed to close gamepad: %s", SDL_GetError());
        }
    }

    bool GamepadInput::is_gamepad_button_down(SDL_GamepadButton button) const {
        return gamepad and current_gamepad_buttons[button];
    }

    bool GamepadInput::is_gamepad_button_pressed(SDL_GamepadButton button) const {
        return gamepad and current_gamepad_buttons[button] and !previous_gamepad_buttons[button];
    }

    bool GamepadInput::is_gamepad_button_released(SDL_GamepadButton button) const {
        return gamepad and !current_gamepad_buttons[button] and previous_gamepad_buttons[button];
    }

    float GamepadInput::get_gamepad_axis(SDL_GamepadAxis axis, float deadzone) const {
        if (!gamepad) return 0.0f;

        Sint16 value = SDL_GetGamepadAxis(gamepad, axis);
        float normalized = static_cast<float>(value) / 32767.0f;

        if (std::fabs(normalized) < deadzone) {
            return 0.0f;
        }

        return normalized;
    }
} //loam