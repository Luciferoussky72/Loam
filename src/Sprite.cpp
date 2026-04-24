#include <SDL3/SDL.h>
#include <SDL3_image/SDL_image.h>
#include <cmath>
#include "loam/Sprite.hpp"


namespace loam {
    Sprite::Sprite(const Engine& engine, std::string_view path, uint frames_per_row, uint rows, uint fps, float scale)
        : engine(engine),
        frames_per_row(frames_per_row), rows(rows),
        time_per_frame(1.0f / static_cast<float>(fps)),
        scale(scale) {

        texture = IMG_LoadTexture(engine.get_renderer(), path.data());
        if (!texture) {
            SDL_Log("Failed to load texture: %s", SDL_GetError());
            return;
        }
        float total_width;
        float total_height;
        SDL_GetTextureSize(texture, &total_width, &total_height);
        frame_width = static_cast<uint>(total_height) / frames_per_row;
        frame_height = static_cast<uint>(total_height) / rows;
        SDL_SetTextureScaleMode(texture, SDL_SCALEMODE_NEAREST);
    }

    Sprite::~Sprite() {
        if (texture) {
            SDL_DestroyTexture(texture);
        }
    }

    void Sprite::render(uint frame, uint row, float x, float y, bool flip_x, bool flip_y) const {
        SDL_FRect srcRect = {
            static_cast<float>(frame * frame_width),
            static_cast<float>(row * frame_height),
            static_cast<float>(frame_width),
            static_cast<float>(frame_height)
        };

        SDL_FRect destRect = {x, y, 
            static_cast<float>(frame_width) * scale, 
            static_cast<float>(frame_height) * scale};
        
        SDL_FlipMode flip_state;
        if (flip_x) {
            flip_state = flip_y ? SDL_FLIP_HORIZONTAL_AND_VERTICAL : SDL_FLIP_HORIZONTAL;
        } else {
            flip_state = flip_y ? SDL_FLIP_VERTICAL : SDL_FLIP_NONE;
        }

        SDL_RenderTextureRotated(engine.get_renderer(), texture, &srcRect, &destRect, 0.0, nullptr, flip_state);
    }

    void Sprite::render_and_animate(uint* frame, float* time_accumulator, float delta_time,
            uint row, float x, float y, bool flip_x, bool flip_y) const {

        *time_accumulator += delta_time;
        if (*time_accumulator > time_per_frame) {
            *time_accumulator = std::fmod(*time_accumulator, time_per_frame);
            *frame += 1;
            *frame %= frames_per_row;
        }

        this->render(*frame, row, x, y, flip_x, flip_y);
    }
} // loam