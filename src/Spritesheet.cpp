#include "loam/Spritesheet.hpp"
#include <SDL3/SDL_render.h>

namespace loam {
    Spritesheet::Spritesheet(SDL_Texture* texture, int sprite_width, int sprite_height) :
    texture(texture), sprite_width(sprite_width), sprite_height(sprite_height) {}

    bool Spritesheet::render(SDL_Renderer* renderer, size_t n, const SDL_FRect& dest, bool flip_x, bool flip_y) const {
        if (!renderer or !texture or sprite_width == 0 or sprite_height == 0) return false;
        SDL_FRect src = {static_cast<float>(n * sprite_width), 0.0f, static_cast<float>(sprite_width), static_cast<float>(sprite_height)};
        SDL_FlipMode flip_mode = [flip_x, flip_y]() {
            if (flip_x) {
                return flip_y ? SDL_FLIP_HORIZONTAL_AND_VERTICAL : SDL_FLIP_HORIZONTAL;
            }
            return flip_y ? SDL_FLIP_VERTICAL : SDL_FLIP_NONE;
        }();

        return SDL_RenderTextureRotated(renderer, texture, &src, &dest, 0.0, nullptr, flip_mode);
    }

    bool Spritesheet::stretch_render(SDL_Renderer* renderer, const SDL_FRect& src, const SDL_FRect& dest, bool flip_x, bool flip_y) const {
        if (!renderer or !texture) return false;
        SDL_FlipMode flip_mode = [flip_x, flip_y]() {
            if (flip_x) {
                return flip_y ? SDL_FLIP_HORIZONTAL_AND_VERTICAL : SDL_FLIP_HORIZONTAL;
            }
            return flip_y ? SDL_FLIP_VERTICAL : SDL_FLIP_NONE;
        }();

        return SDL_RenderTextureRotated(renderer, texture, &src, &dest, 0.0, nullptr, flip_mode);
    }
}
