#ifndef EARTHBORN_CAMERA_HPP
#define EARTHBORN_CAMERA_HPP

#include "Entity.hpp"

class Camera {
public:
    Camera(int width, int height, float smoothSpeed);
    void follow(const Entity& entity, float deltaTime);
    void followAhead(const Entity& entity, float deltaTime, float distanceMult);
    void followWithDeadzone(const Entity& entity, float deltaTime, float deadzoneRadius);

    [[nodiscard]] int getXOffset() const;
    [[nodiscard]] int getYOffset() const;
    [[nodiscard]] int getWidth() const;
    [[nodiscard]] int getHeight() const;
private:
    int width;
    int height;
    float XOffset;
    float YOffset;
    float smoothSpeed;
};


#endif //EARTHBORN_CAMERA_HPP