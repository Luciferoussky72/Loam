#pragma once

#include "KeyboardMouse.hpp"
#include "Gamepad.hpp"

namespace loam {
    /**
     * A base class for managing other classes and to give a clean UI around player management with Loam
     */
    class Player {
    public:
        /**
         * Constructs a Player object
         * @param input_type the type of the input for the object
         * @note input_type should be either:
         * KeyboardMouse - gives the class a KeyboardMouseInput instance as an input source
         * Gamepad - gives the class a GamepadInput instance as an input source
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
        KeyboardMouse* keyboard_mouse_input;
        Gamepad* gamepad_input;
    };
} // loam