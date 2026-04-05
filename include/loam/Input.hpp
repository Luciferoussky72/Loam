#pragma once

#include <SDL3/SDL.h>
namespace loam {
    class Input {
    public:
        Input();
        ~Input();
        void update();
        void process_event(const SDL_Event* event);

        [[nodiscard]] bool is_key_down(SDL_Scancode key) const;
        [[nodiscard]] bool is_key_pressed(SDL_Scancode key) const;
        [[nodiscard]] bool is_key_released(SDL_Scancode key) const;
        [[nodiscard]] bool is_keyboard_active() const;

        [[nodiscard]] bool is_mouse_button_down(int button) const;
        [[nodiscard]] bool is_mouse_button_pressed(int button) const;
        [[nodiscard]] bool is_mouse_button_released(int button) const;
        [[nodiscard]] float get_mouse_x() const;
        [[nodiscard]] float get_mouse_y() const;
        [[nodiscard]] bool is_mouse_active() const;

        [[nodiscard]] bool is_gamepad_button_down(SDL_GamepadButton button) const;
        [[nodiscard]] bool is_gamepad_button_pressed(SDL_GamepadButton button) const;
        [[nodiscard]] bool is_gamepad_button_released(SDL_GamepadButton button) const;
        [[nodiscard]] float get_gamepad_axis(SDL_GamepadAxis axis) const;
        [[nodiscard]] bool is_gamepad_connected() const;
        [[nodiscard]] bool is_gamepad_active() const;
    private:
        float mouse_x;
        float mouse_y;
        Uint32 current_mouse_state;
        Uint32 previous_mouse_state;
        bool mouse_active;

        const bool* current_key_state;
        bool previous_key_state[SDL_SCANCODE_COUNT];
        bool keyboard_active;

        SDL_Gamepad* gamepad;
        Uint8 current_gamepad_buttons[SDL_GAMEPAD_BUTTON_COUNT];
        Uint8 previous_gamepad_buttons[SDL_GAMEPAD_BUTTON_COUNT];
        bool gamepad_active;
    };
} //loam