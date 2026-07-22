#pragma once

#include <optional>
#include <SDL3/SDL_gamepad.h>
union SDL_Event;


namespace loam {
    /**
     * Wraps gamepad input with SDL
     * @warning remember that SDL_Init must be called with the SDL_INIT_GAMEPAD flag for the SDL_gamepad API to work!
     * @author luciferoussky72
     */
    class Gamepad;

    /**
     * Probes for new gamepad connections
     * @warning should only be called once per frame/update cycle; calling this multiple times can
     * cause a gamepad to be claimed twice, sending your program into The Void of No Return!
     * @return an instance of std::optional<Gamepad> for instantiating a new gamepad
     */
    std::optional<Gamepad> probe_for_gamepads(const SDL_Event& event);

    class Gamepad {
    public:
        /**
         * Constructs a Gamepad object
         * @param gamepad a pointer to the SDL_Gamepad to build the object from
         * @warning the Gamepad becomes responsible for the SDL_Gamepad; do not free it yourself or you will send your program to The Void of No Return!
         */
        Gamepad(SDL_Gamepad* gamepad);

        Gamepad(const Gamepad&) = delete("Copying a Gamepad would mean copying its pointer, sending the program to The Void of No Return!");
        Gamepad& operator=(const Gamepad&) = delete("Copy-assigning a Gamepad would mean copying its pointer, sending the program to The Void of No Return!");

        /**
         * Moves the object by safely ripping out its pointer to avoid sending the program to The Void of No Return!
         * @param other the Gamepad to move from
         */
        Gamepad(Gamepad&& other) noexcept;
        /**
         * Move-assigns the object by safely ripping out its pointer to avoid sending the program to The Void of No Return!
         * @note if the moved-to gamepad currently has a valid pointer, it will close it first
         * @param other the Gamepad to move from
         * @return a reference to the object to enable chaining (not sure why you would ever do that with move assignment)
         */
        Gamepad& operator=(Gamepad&& other) noexcept;

        /**
         * Frees the instance's gamepad
         */
        ~Gamepad();

        /**
         * Updates the object's data
         * @note should be called once per frame before using the object for input processing
         * @return false if it doesn't do anything (like if the gamepad pointer is null), true if it actually does something
         */
        bool update();

        /**
         * Probes for gamepad disconnection events
         * @warning should only be called on one thread; calling it on multiple will
         * cause a gamepad to be freed twice, sending your program into the Void of No Return! (that last part may be exaggerated)
         * @param event a pointer to the SDL_Event to process
         */
        void process_event(const SDL_Event& event);

        /**
         * Checks if a gamepad button is down, meaning it is active this update cycle
         * @param button the button code to check for
         * @return true if the button is down currently
         */
        [[nodiscard]] bool button_down(SDL_GamepadButton button) const;
        /**
         * Quality-of-life variant that just forwards to Gamepad::button_down
         */
        [[nodiscard]] bool btnd(SDL_GamepadButton button) const {
            return button_down(button);
        }

        /**
         * Checks if a gamepad button is pressed, meaning it is active this update cycle and wasn't last update cycle
         * @param button the button code to check for
         * @return true if the button has been pressed
         */
        [[nodiscard]] bool button_pressed(SDL_GamepadButton button) const;
        /**
         * Quality-of-life variant that just forwards to Gamepad::button_pressed
         */
        [[nodiscard]] bool btnp(SDL_GamepadButton button) const {
            return button_pressed(button);
        }

        /**
         * Checks if a gamepad button is released, meaning it was held last update cycle but isn't this update cycle
         * @param button the button code to check for
         * @return true if the button has been released
         */
        [[nodiscard]] bool button_released(SDL_GamepadButton button) const;
        /**
         * Quality-of-life variant that just forwards to Gamepad::button_released
         */
        [[nodiscard]] bool btnr(SDL_GamepadButton button) const {
            return button_released(button);
        }

        /**
         * Gets one of the gamepad's axes' value
         * @param axis the gamepad axis to get the value of
         * @param deadzone the deadzone as a measure of the max distance of the joystick's movement
         * @return the value of the gamepad axis as a range from 0.0f to 1.0f
         */
        [[nodiscard]] float get_axis(SDL_GamepadAxis axis, float deadzone) const;
    private:
        SDL_Gamepad* gamepad_pointer;
        bool current_gamepad_buttons[SDL_GAMEPAD_BUTTON_COUNT] = {false};
        bool previous_gamepad_buttons[SDL_GAMEPAD_BUTTON_COUNT] = {false};
    };
}