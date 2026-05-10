#include "loam/Spritesheet.hpp"
#include "loam/Engine.hpp"


namespace loam {
    Spritesheet::Spritesheet(const Engine& engine, SDL_Texture* texture, uint32_t frames_per_row, uint32_t rows, float scale)
        : engine(engine),
        frames_per_row(frames_per_row), rows(rows),
        scale(scale), texture(texture) {

        frame_width = static_cast<uint32_t>(texture->w) / frames_per_row;
        frame_height = static_cast<uint32_t>(texture->h) / rows;
        SDL_SetTextureScaleMode(texture, SDL_SCALEMODE_NEAREST);
    }

    void Spritesheet::draw(uint32_t frame, uint32_t row, float x, float y, bool flip_x, bool flip_y) const {
        SDL_FRect src_rect = {
            static_cast<float>(frame * frame_width),
            static_cast<float>(row * frame_height),
            static_cast<float>(frame_width),
            static_cast<float>(frame_height)
        };

        SDL_FRect dest_rect = {x, y,
            static_cast<float>(frame_width) * scale,
            static_cast<float>(frame_height) * scale
        };

        SDL_FlipMode flip_state;
        if (flip_x) {
            flip_state = flip_y ? SDL_FLIP_HORIZONTAL_AND_VERTICAL : SDL_FLIP_HORIZONTAL;
        } else {
            flip_state = flip_y ? SDL_FLIP_VERTICAL : SDL_FLIP_NONE;
        }

        SDL_RenderTextureRotated(engine.get_renderer(), texture, &src_rect, &dest_rect, 0.0, nullptr, flip_state);
    }
    void Spritesheet::draw(uint32_t frame, uint32_t row, const SDL_FPoint& position, bool flip_x, bool flip_y) const {
        draw(frame, row, position.x, position.y, flip_x, flip_y);
    }
} // loam