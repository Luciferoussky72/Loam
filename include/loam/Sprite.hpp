#pragma once

#include <SDL3/SDL.h>
#include "Engine.hpp"

namespace loam {
    /**
     * Wraps SDL sprite management and texture rendering
     * @note if you need to render whole scenes, look at the Tilemap class instead
     * @author luciferoussky72
     */
    class Sprite {
    public:
        /**
         * Constructs a Sprite object, which wraps SDL rendering and textures
         * @param engine the Engine the object should use for rendering calls
         * @param path the path to the texture you want the Sprite to have
         * @param frames_per_row the number of frames each row should have
         * @param rows the number of rows the sprite's texture has
         * @param fps the fps that the sprite should have - changeable later
         * @param scale the scale at which to size up the sprite; defaults to 1.0f
         */
        Sprite(const Engine& engine, std::string_view path, uint frames_per_row, uint rows, uint fps, float scale = 1.0f);

        /**
         * Destructor for Sprite
         */
        ~Sprite();

        /**
         * Renders the sprite
         * @param frame the frame you want to render
         * @param row the row of the sprite you want to render
         * @param x screen x coordinate for the rendering
         * @param y screen y coordinate for the rendering
         * @param flip_x flips the sprite horizontally if true; defaults to false
         * @param flip_y flips the sprite vertically if true; defaults to false
         */
        void render(uint frame, uint row, float x, float y, bool flip_x = false, bool flip_y = false) const;

        /**
         * Variant of render that updates the frame and time_accumulator parameters passed to it
         * @param frame the frame it is on; the method updates this variable
         * @param time_accumulator the time accumulator to use for timing updates to frame; the method updates this variable
         * @param delta_time the time uinterval (in seconds) by which to update the sprite
         * @param row the row of the sprite you want to render
         * @param x screen x coordinate for the rendering
         * @param y screen y coordinate for the rendering
         * @param flip_x flips the sprite horizontally if true; defaults to false
         * @param flip_y flips the sprite vertically if true; defaults to false
         */
        void render_and_animate(uint* frame, float* time_accumulator, float delta_time,
            uint row, float x, float y, bool flip_x = false, bool flip_y = false) const;

        /**
         * Sets the frames per second
         * @param fps the new frames per second
         */
        void set_fps(int fps) {
            time_per_frame = 1.0f/static_cast<float>(fps);
        }

    protected:
        //external references
        const Engine& engine;
        
        //animation variables
        uint frame_width;
        uint frame_height;
        uint frames_per_row;
        uint rows;

        //timing variables
        float time_per_frame;

    private:

        float scale;
        SDL_Texture* texture;
    };
} // loam