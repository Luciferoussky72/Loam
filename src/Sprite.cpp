#include <SDL3/SDL.h>
#include "loam/Sprite.hpp"
#include "loam/Engine.hpp"


namespace loam {
    Sprite::Sprite(const Engine& engine, SDL_Texture* texture, uint32_t frames_per_row, uint32_t rows, uint32_t fps, float scale)
        : engine(engine),
        frames_per_row(frames_per_row), rows(rows),
        time_per_frame(1.0f / static_cast<float>(fps)),
        scale(scale), texture(texture) {

        float total_width;
        float total_height;
        SDL_GetTextureSize(texture, &total_width, &total_height);
        frame_width = static_cast<uint32_t>(total_height) / frames_per_row;
        frame_height = static_cast<uint32_t>(total_height) / rows;
        SDL_SetTextureScaleMode(texture, SDL_SCALEMODE_NEAREST);
    }

    void Sprite::draw(uint32_t frame, uint32_t row, float x, float y, bool flip_x, bool flip_y) const {
        SDL_FRect src_rect = {
            static_cast<float>(frame * frame_width),
            static_cast<float>(row * frame_height),
            static_cast<float>(frame_width),
            static_cast<float>(frame_height)
        };

        SDL_FRect dest_rect = {x, y,
            static_cast<float>(frame_width) * scale,
            static_cast<float>(frame_height) * scale};

        SDL_FlipMode flip_state;
        if (flip_x) {
            flip_state = flip_y ? SDL_FLIP_HORIZONTAL_AND_VERTICAL : SDL_FLIP_HORIZONTAL;
        } else {
            flip_state = flip_y ? SDL_FLIP_VERTICAL : SDL_FLIP_NONE;
        }

        SDL_RenderTextureRotated(engine.get_renderer(), texture, &src_rect, &dest_rect, 0.0, nullptr, flip_state);
    }
} // loam