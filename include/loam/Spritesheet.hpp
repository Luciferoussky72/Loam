#pragma once

#include <SDL3/SDL_render.h>


namespace loam {
    class Engine;

    /**
     * Wraps SDL texture rendering
     * @note you should load SDL_Texture pointers into this class using a Loam Loader
     * @author luciferoussky72
     */
    class Spritesheet {
    public:
        /**
         * Constructs a Spritesheet object, which wraps SDL texture rendering
         * @param engine the Engine the object should use for rendering calls
         * @param texture the texture you want the object to use
         * @note ideally, the SDL_Texture* should come from a Loam Loader, especially if you're loading it multiple times
         * @param frames_per_row the number of frames each row should have
         * @param rows the number of rows the sprite's texture has
         * @param scale the scale at which to size up the sprite; defaults to 1.0f
         */
        Spritesheet(const Engine& engine, SDL_Texture* texture, uint32_t frames_per_row, uint32_t rows, float scale = 1.0f);

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
         * Overload so you can use Spritesheet with SDL_FPoint
         * @param frame the frame of the spritesheet to draw
         * @param row the row of the spritesheet to get the frame from
         * @param position the SDL_FPoint to use for the draw call
         * @param flip_x whether to flip the image horizontally; defaults to false
         * @param flip_y whether to flip the image vertically; defaults to false
         */
        void draw(uint32_t frame, uint32_t row, const SDL_FPoint& position, bool flip_x = false, bool flip_y = false) const;


    private:
        //external references
        const Engine& engine;
        
        //animation variables
        uint32_t frame_width;
        uint32_t frame_height;
        uint32_t frames_per_row;
        uint32_t rows;

        float scale;
        SDL_Texture* texture;
    };
} // loam