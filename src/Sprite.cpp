#include <SDL3/SDL.h>
#include <SDL3_image/SDL_image.h>
#include "Sprite.hpp"

Sprite::Sprite(SDL_Renderer* renderer, const char* path, int width, int height, int framesPerRow, float framesPerSecond)
    : frameWidth(width), frameHeight(height), currentFrame(0), framesPerRow(framesPerRow), timeAccumulator(0), timePerFrame(1.0f/framesPerSecond) {
    texture = IMG_LoadTexture(renderer, path);
    if (!texture) {
        SDL_Log("Failed to load texture: %s", SDL_GetError());
    }
    SDL_SetTextureScaleMode(texture, SDL_SCALEMODE_NEAREST);
}

Sprite::~Sprite() {
    SDL_DestroyTexture(texture);
}

void Sprite::update(float deltaTime) {
    timeAccumulator += deltaTime;

    if (timeAccumulator >= timePerFrame) {
        currentFrame = (currentFrame + 1) % framesPerRow;
        timeAccumulator = 0;
    }
}

void Sprite::render(SDL_Renderer* renderer, float x, float y, float scale, bool flip) {
    SDL_FRect srcRect = {
        static_cast<float>(currentFrame * frameWidth),
        static_cast<float>(textureRow * frameHeight),
        static_cast<float>(frameWidth),
        static_cast<float>(frameHeight)
    };

    SDL_FRect destRect = {x, y, frameWidth * scale, frameHeight * scale};

    SDL_FlipMode flipstate = flip ? SDL_FLIP_HORIZONTAL : SDL_FLIP_NONE;


    SDL_RenderTextureRotated(renderer, texture, &srcRect, &destRect, 0.0, nullptr, flipstate);
}
void Sprite::setRow(int row) {
    textureRow = row;
}
void Sprite::setAnimationSpeed(float fps) {
    timePerFrame = 1.0f/fps;
}