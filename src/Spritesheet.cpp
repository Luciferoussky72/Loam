#include "loam/Spritesheet.hpp"
#include <SDL3/SDL_render.h>

namespace loam {
    Spritesheet::Spritesheet(SDL_Texture* texture, animation_direction direction, int sprite_width, int sprite_height) :
    texture(texture), direction(direction), sprite_width(sprite_width), sprite_height(sprite_height) {}

    bool Spritesheet::render(SDL_Renderer* renderer, size_t index, const SDL_FRect& dest, bool flip_x, bool flip_y, double angle) const {
        if (!renderer or !texture or sprite_width == 0 or sprite_height == 0) return false;

        SDL_FRect src = {0, 0, 0, 0};
        size_t num_textures = texture->w / sprite_width;
        switch (direction) {
            case forward: {
                size_t real_index = index % num_textures;
                src = {static_cast<float>(real_index * sprite_width), 0.0f, static_cast<float>(sprite_width), static_cast<float>(sprite_height)};
                break;
            }
            case reverse: {
                size_t real_index = index % num_textures;
                src = {static_cast<float>(texture->w - real_index * sprite_width - sprite_width), 0.0f, static_cast<float>(sprite_width), static_cast<float>(sprite_height)};
                break;
            }
            case ping_pong: {
                size_t wrapped_index = index % (num_textures * 2);
                size_t real_index = wrapped_index % num_textures;
                if (wrapped_index >= num_textures) {
                    src = {static_cast<float>(texture->w - real_index * sprite_width - sprite_width), 0.0f, static_cast<float>(sprite_width), static_cast<float>(sprite_height)};
                    break;
                }
                src = {static_cast<float>(real_index * sprite_width), 0.0f, static_cast<float>(sprite_width), static_cast<float>(sprite_height)};
                break;
            }
            case ping_pong_reverse: {
                size_t wrapped_index = index % (num_textures * 2);
                size_t real_index = wrapped_index % num_textures;
                if (wrapped_index >= num_textures) {
                    src = {static_cast<float>(real_index * sprite_width), 0.0f, static_cast<float>(sprite_width), static_cast<float>(sprite_height)};
                    break;
                }
                src = {static_cast<float>(texture->w - real_index * sprite_width - sprite_width), 0.0f, static_cast<float>(sprite_width), static_cast<float>(sprite_height)};
                break;
            }
        }
        SDL_FlipMode flip_mode = [flip_x, flip_y]() {
            if (flip_x) {
                return flip_y ? SDL_FLIP_HORIZONTAL_AND_VERTICAL : SDL_FLIP_HORIZONTAL;
            }
            return flip_y ? SDL_FLIP_VERTICAL : SDL_FLIP_NONE;
        }();

        return SDL_RenderTextureRotated(renderer, texture, &src, &dest, angle, nullptr, flip_mode);
    }

    bool Spritesheet::stretch_render(SDL_Renderer* renderer, const SDL_FRect& src, const SDL_FRect& dest, bool flip_x, bool flip_y, double angle) const {
        if (!renderer or !texture) return false;
        SDL_FlipMode flip_mode = [flip_x, flip_y]() {
            if (flip_x) {
                return flip_y ? SDL_FLIP_HORIZONTAL_AND_VERTICAL : SDL_FLIP_HORIZONTAL;
            }
            return flip_y ? SDL_FLIP_VERTICAL : SDL_FLIP_NONE;
        }();

        return SDL_RenderTextureRotated(renderer, texture, &src, &dest, angle, nullptr, flip_mode);
    }
}
