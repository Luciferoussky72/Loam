#include <SDL3/SDL.h>
#include "loam/Sprite.hpp"


namespace loam {
    Sprite::Sprite(const Engine& engine, SDL_Texture* texture, uint frames_per_row, uint rows, uint fps, float scale)
        : engine(engine),
        frames_per_row(frames_per_row), rows(rows),
        time_per_frame(1.0f / static_cast<float>(fps)),
        scale(scale), texture(texture) {

        float total_width;
        float total_height;
        SDL_GetTextureSize(texture, &total_width, &total_height);
        frame_width = static_cast<uint>(total_height) / frames_per_row;
        frame_height = static_cast<uint>(total_height) / rows;
        SDL_SetTextureScaleMode(texture, SDL_SCALEMODE_NEAREST);
    }

    Sprite::~Sprite() = default;

    void Sprite::draw(Entity* e) {
        SDL_FRect srcRect = {
            static_cast<float>(frame * frame_width),
            static_cast<float>(row * frame_height),
            static_cast<float>(frame_width),
            static_cast<float>(frame_height)
        };

        SDL_FRect destRect = {e->x, e->y,
            static_cast<float>(frame_width) * scale,
            static_cast<float>(frame_height) * scale};

        SDL_FlipMode flip_state;
        if (e->flip_x) {
            flip_state = e->flip_y ? SDL_FLIP_HORIZONTAL_AND_VERTICAL : SDL_FLIP_HORIZONTAL;
        } else {
            flip_state = e->flip_y ? SDL_FLIP_VERTICAL : SDL_FLIP_NONE;
        }

        SDL_RenderTextureRotated(engine.get_renderer(), texture, &srcRect, &destRect, 0.0, nullptr, flip_state);
    }
} // loam