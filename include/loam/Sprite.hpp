#pragma once

#include <SDL3/SDL.h>
#include "Engine.hpp"
namespace loam {
    class Sprite {
    public:
        /**
         * Constructs a Sprite object, which wraps SDL rendering and textures
         * @param engine the Engine the object should use for rendering calls
         * @param path the path to the texture you want the Sprite to have
         * @param frames_per_row the number of frames each row should have
         * @param rows the number of rows the sprite's texture has
         */
        Sprite(const Engine& engine, const char* path, int frames_per_row, int rows, float frames_per_second);
        virtual ~Sprite();

        virtual void render(int frame, int row, float x, float y, float scale, bool flip);
        virtual void render_and_update(int frame, int row, float x, float y, float scale, bool flip);

        void set_animation_speed(float fps);

    private:

        SDL_Texture* texture;

        //animation variables
        int frameWidth;
        int frameHeight;
        int framesPerRow;
        int textureRow = 0;

        //timing variables
        float timeAccumulator;
        float timePerFrame;
    };
} // loam