#include "Entity.hpp"
#include <cmath>

Entity::Entity(float x, float y, float vx, float vy, float ax, float ay, float friction)
:  x(x), y(y), vx(vx), vy(vy), ax(ax), ay(ay), friction(friction), sprite(nullptr) {}

void Entity::render(SDL_Renderer* renderer, int cameraX, int cameraY, bool flip, float scale) const {
    if (sprite != nullptr) {
        sprite->render(renderer, x - static_cast<float>(cameraX), y - static_cast<float>(cameraY), scale, flip);
    }
}

void Entity::setSprite(Sprite* spr) {
    sprite = spr;
}

void Entity::setSpriteRow(int row) const {
    sprite->setRow(row);
}

void Entity::update(float deltaTime) {

    //accelerate
    vx += ax * deltaTime;
    vy += ay * deltaTime;

    //apply friction
    vx *= friction;
    vy *= friction;

    //update position
    float dx = vx * deltaTime;
    float dy = vy * deltaTime;
    if (dx != 0.0f && dy != 0.0f) {
        const float _sqrt2 =  std::sqrt(2.0f);
        dx /= _sqrt2;
        dy /= _sqrt2;
    }
    x += dx;
    y += dy;

    //update sprite animation if moving
    if (sprite != nullptr and (std::abs(vx) > 1.0f or std::abs(vy) > 1.0f)) {
        sprite->update(deltaTime);
    }
}

void Entity::simpleupdate(float deltaTime) {
    //update position
    float dx = vx * deltaTime;
    float dy = vy * deltaTime;
    if (dx != 0.0f && dy != 0.0f) {
        const float _sqrt2 =  std::sqrt(2.0f);
        dx /= _sqrt2;
        dy /= _sqrt2;
    }
    x += dx;
    y += dy;

    //update sprite animation if moving
    if (sprite != nullptr and (std::abs(vx) > 1.0f or std::abs(vy) > 1.0f)) {
        sprite->update(deltaTime);
    }
}

void Entity::setAx(float newax) { ax = newax; }
void Entity::setAy(float neway) { ay = neway; }
void Entity::setVx(float newvx) { vx = newvx; }
void Entity::setVy(float newvy) { vy = newvy; }
void Entity::setPosx(float newx) { x = newx; }
void Entity::setPosy(float newy) { y = newy; }