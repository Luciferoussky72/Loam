#ifndef EARTHBORN_ENTITY_HPP
#define EARTHBORN_ENTITY_HPP

#include "Sprite.hpp"
#include <SDL3/SDL.h>


class Entity {
public:
    Entity(float x, float y, float vx, float vy, float ax, float ay, float friction);
    virtual ~Entity() = default;
    virtual void render(SDL_Renderer* renderer, int cameraX, int cameraY, bool flip, float scale) const;
    void setSprite(Sprite* spr);
    void setSpriteRow(int row) const;
    virtual void update(float deltaTime);
    virtual void simpleupdate(float deltaTime);
    void setAx(float newax);
    void setAy(float neway);
    void setVx(float newvx);
    void setVy(float newvy);
    void setPosx(float newx);
    void setPosy(float newy);
    [[nodiscard]] float getX() const { return x; }
    [[nodiscard]] float getY() const { return y; }
    [[nodiscard]] float getVX() const { return vx; }
    [[nodiscard]] float getVY() const { return vy; }
    [[nodiscard]] float getAX() const { return ax; }
    [[nodiscard]] float getAY() const { return ay; }
protected:
    //movement variables
    float x;
    float y;
    float vx;
    float vy;
    float ax;
    float ay;
    float friction;
    //the underlying sprite
    Sprite* sprite;
};


#endif //EARTHBORN_ENTITY_HPP