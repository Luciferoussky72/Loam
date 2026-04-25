#pragma once


#include <optional>
#include <SDL3/SDL.h>

namespace loam {
    /**
     * Wraps gamepad input
     */
    class Gamepad;

    /**
     * A free function made for probing for new gamepad connections
     * @warning should only be called once per frame/update cycle; calling this multiple times will
     * cause a gamepad to be claimed twice, sending your program into The Void of No Return! (that last part may not be true)
     * @return an instance of std::optional<Gamepad> for instantiating a new gamepad
     */
    std::optional<Gamepad> probe_for_gamepads(const SDL_Event* event);

    class Gamepad {
    public:
        /**
         * Constructs a Gamepad object
         * @param gamepad a pointer to the SDL_Gamepad to build the object from
         */
        Gamepad(SDL_Gamepad* gamepad);

        /**
         * Frees the instance's gamepad
         */
        ~Gamepad();

        /**
         * Updates the object's data
         * @note should be called once per frame before using the object for input processing
         */
        void update();

        /**
         * Probes for gamepad disconnection events
         * @warning should only be called on one thread; calling it on multiple will
         * cause a gamepad to be freed twice, sending your program into the Void of No Return! (that last part may be exaggerated)
         * @param event a pointer to the SDL_Event to process
         */
        void process_event(const SDL_Event* event);

        /**
         * Checks if a gamepad button is down
         * @param button the button code to check for
         * @return true if the button is down currently
         */
        [[nodiscard]] bool is_gamepad_button_down(SDL_GamepadButton button) const;
        /**
         * Checks if a gamepad button is pressed
         * @param button the button code to check for
         * @return true if the button has been pressed
         */
        [[nodiscard]] bool is_gamepad_button_pressed(SDL_GamepadButton button) const;
        /**
         * Checks if a gamepad button is released
         * @param button the button code to check for
         * @return true if the button has been released
         */
        [[nodiscard]] bool is_gamepad_button_released(SDL_GamepadButton button) const;
        /**
         * Gets one of the gamepad's axis' amplitude
         * @param axis the gamepad axis to get the value of
         * @param deadzone the deadzone as a measure of the max distance of the joystick's movement; defaults to 0.15f
         * @return the value of the gamepad axis
         */
        [[nodiscard]] float get_gamepad_axis(SDL_GamepadAxis axis, float deadzone = 0.15f) const;
    private:
        SDL_Gamepad* gamepad;
        bool current_gamepad_buttons[SDL_GAMEPAD_BUTTON_COUNT]{};
        bool previous_gamepad_buttons[SDL_GAMEPAD_BUTTON_COUNT]{};
    };





} // loam