#pragma once

#include <SDL3/SDL.h>

class Sprite {
public:
    Sprite(SDL_Renderer* renderer, const char* path, int width, int height, int framesPerRow, float framesPerSecond);
    virtual ~Sprite();

    virtual void update(float deltaTime);
    virtual void render(SDL_Renderer* renderer, float x, float y, float scale, bool flip);
    void setRow(int row);
    void setAnimationSpeed(float fps);

private:
    SDL_Texture* texture;
    //animation variables
    int frameWidth;
    int frameHeight;
    int currentFrame;
    int framesPerRow;
    int textureRow = 0;

    //timing variables
    float timeAccumulator;
    float timePerFrame;
};