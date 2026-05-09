#pragma once

#include <SDL3/SDL.h>


namespace loam {
    class Engine;

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
         * @param texture the texture you want the object to use
         * @param frames_per_row the number of frames each row should have
         * @param rows the number of rows the sprite's texture has
         * @param fps the fps that the sprite should have - changeable later
         * @param scale the scale at which to size up the sprite; defaults to 1.0f
         */
        Sprite(const Engine& engine, SDL_Texture* texture, uint32_t frames_per_row, uint32_t rows, uint32_t fps, float scale = 1.0f);

        /**
         * Draws a Sprite to the screen
         * @param frame the frame of the spritesheet to draw
         * @param row the row of the spritesheet to get the frame from
         * @param x the x coordinate to draw the sprite
         * @param y the y coordinate to draw the sprite
         * @param flip_x whether to flip the image horizontally; defaults to false
         * @param flip_y whether to flip the image vertically; defaults to false
         */
        void draw(uint32_t frame, uint32_t row, float x, float y, bool flip_x = false, bool flip_y = false) const;

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
        uint32_t frame_width;
        uint32_t frame_height;
        uint32_t frames_per_row;
        uint32_t rows;

        //timing variables
        float time_per_frame;

    private:

        float scale;
        SDL_Texture* texture;
    };
} // loam