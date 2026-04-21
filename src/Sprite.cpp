#include <SDL3/SDL.h>
#include <SDL3_image/SDL_image.h>
#include "loam/Sprite.hpp"
namespace loam {
    Sprite::Sprite(const Engine& engine, std::string_view path, int frames_per_row, int rows, int fps)
        : frameWidth(width), frameHeight(height), currentFrame(0), frames_per_row(frames_per_row), time_accumulator(0), time_per_frame(1.0f/framesPerSecond) {
        texture = IMG_LoadTexture(renderer, path);
        if (!texture) {
            SDL_Log("Failed to load texture: %s", SDL_GetError());
        }
        SDL_SetTextureScaleMode(texture, SDL_SCALEMODE_NEAREST);
    }

    Sprite::~Sprite() {
        SDL_DestroyTexture(texture);
    }

    void Sprite::render(SDL_Renderer* renderer, float x, float y, float scale, bool flip) {
        SDL_FRect srcRect = {
            static_cast<float>(currentFrame * frameWidth),
            static_cast<float>(texture_row * frameHeight),
            static_cast<float>(frameWidth),
            static_cast<float>(frameHeight)
        };

        SDL_FRect destRect = {x, y, frameWidth * scale, frameHeight * scale};

        SDL_FlipMode flipstate = flip ? SDL_FLIP_HORIZONTAL : SDL_FLIP_NONE;


        SDL_RenderTextureRotated(renderer, texture, &srcRect, &destRect, 0.0, nullptr, flipstate);
    }
    void Sprite::set_row(int row) {
        texture_row = row;
    }
    void Sprite::set_animation_speed(float fps) {
        time_per_frame = 1.0f/fps;
    }
} // loam