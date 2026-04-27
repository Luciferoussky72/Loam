#pragma once

#include <SDL3/SDL.h>
#include "Component.hpp"
#include "Engine.hpp"

namespace loam {
    /**
     * Wraps SDL sprite management and texture rendering
     * @note if you need to render whole scenes, look at the Tilemap class instead
     * @author luciferoussky72
     */
    class Sprite : public Component {
    public:
        friend class Entity;

        /**
         * Constructs a Sprite object, which wraps SDL rendering and textures
         * @param engine the Engine the object should use for rendering calls
         * @param texture the texture you want the object to use
         * @param frames_per_row the number of frames each row should have
         * @param rows the number of rows the sprite's texture has
         * @param fps the fps that the sprite should have - changeable later
         * @param scale the scale at which to size up the sprite; defaults to 1.0f
         */
        Sprite(const Engine& engine, SDL_Texture* texture, uint frames_per_row, uint rows, uint fps, float scale = 1.0f);

        /**
         * Destructor for Sprite
         */
        ~Sprite() override;

        void update(Entity* e) override;

        void draw(Entity* e) override;

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

        uint frame = 0;
        uint row = 0;

        //timing variables
        float time_per_frame;

    private:

        float scale;
        SDL_Texture* texture;
    };
} // loam