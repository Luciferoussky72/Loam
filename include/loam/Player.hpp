#pragma once

#include "Input.hpp"

namespace loam {
    /**
     * A base class for managing other classes and to give
     */
    class Player {
    public:
        /**
         * Constructs a Player object
         * @param input_type the type of the input for the object
         * @note input_type should be either:
         * KeyboardMouse - gives the class a KeyboardMouseInput instance as an input source
         * Gamepad - gives the class a GamepadInput instance as an input source
         * @throw loam::keyboard_initialization_input_error for making more than one Player instance with KeyboardMouseInput
         */
        Player(InputType input_type);

        /**
         * Default constructor for overrides and polymorphic use
         */
        virtual ~Player() = default;

        /**
         * Generic virtual update function for polymorphic use
         * @param delta_time how long has passed since last frame (in seconds! not milliseconds!)
         */
        virtual void update(float delta_time);

    private:
        KeyboardMouseInput* keyboard_mouse_input;
        GamepadInput* gamepad_input;
    };
} // loam