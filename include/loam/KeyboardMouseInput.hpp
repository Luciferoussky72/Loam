#pragma once

#include <SDL3/SDL.h>
#include <exception>

namespace loam {
    /**
     * Wraps keyboard/mouse type input specifically
     * @throw loam::keyboard_initialization_input_error for trying to create more than one instance of this class
     */
    class KeyboardMouseInput;
    /**
     * Error class for attempting to make more than one loam::KeyboardMouseInput object
     */
    class keyboard_initialization_input_error;

    class KeyboardMouseInput {
    public:
        /**
         * Constructs a KeyboardMouseInput object
         */
        KeyboardMouseInput();

        /**
         * Updates the object with the newest state of keyboard and mouse input devices
         * @note should be called once per frame before using the object for input processing
         */
        void update();

        /**
         * Checks if a key is down
         * @param key the SDL_Scancode for the key you want
         * @return true if the key is currently down
         */
        [[nodiscard]] bool is_key_down(SDL_Scancode key) const;
        /**
         * Checks if a key has been pressed
         * @param key the SDL_Scancode for the key you want
         * @return true if the key has been pressed
         */
        [[nodiscard]] bool is_key_pressed(SDL_Scancode key) const;
        /**
         * Checks if a key has been released
         * @param key the SDL_Scancode for the key you want
         * @return true if the key has been released
         */
        [[nodiscard]] bool is_key_released(SDL_Scancode key) const;

        /**
         * Checks if a mouse button is down
         * @param button the mouse button to check for
         * @return true if the mouse button is down
         */
        [[nodiscard]] bool is_mouse_button_down(int button) const;
        /**
         * Checks if a mouse button is down
         * @param button the mouse button to check for
         * @return true if the mouse button is down
         */
        [[nodiscard]] bool is_mouse_button_pressed(int button) const;
        /**
         * Checks if a mouse button is down
         * @param button the mouse button to check for
         * @return true if the mouse button is down
         */
        [[nodiscard]] bool is_mouse_button_released(int button) const;
        /**
         * Gets the mouse's x coordinate
         * @return the mouse x coordinate
         */
        [[nodiscard]] float get_mouse_x() const {
            return mouse_x;
        }
        /**
         * Gets the mouse's y coordinate
         * @return the mouse y coordinate
         */
        [[nodiscard]] float get_mouse_y() const {
            return mouse_x;
        }
    private:
        static bool keyboard_mouse_instance_exists_please_do_not_make_another;

        float mouse_x = 0.0f;
        float mouse_y = 0.0f;
        Uint32 current_mouse_state;
        Uint32 previous_mouse_state = 0;

        const bool* current_key_state;
        bool previous_key_state[SDL_SCANCODE_COUNT] = {false};
    };
    class keyboard_initialization_input_error : public std::exception {
    public:
        [[nodiscard]] const char* what() const noexcept override {
            return "Error: You can't make more than one instance of loam::KeyboardMouseInput";
        }
    };

} // loam