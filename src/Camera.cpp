#include "Camera.hpp"
#include <cmath>

Camera::Camera(int width, int height, float startX, float startY, float smoothSpeed) : width(width), height(height), smoothSpeed(smoothSpeed) {
    float targetX = startX - width / 2.0f;
    float targetY = startY - height / 2.0f;

    XOffset = targetX;
    YOffset = targetY;
}

void Camera::follow(const Entity& entity, float deltaTime) {
    float targetX = entity.getX() - width / 2.0f;
    float targetY = entity.getY() - height / 2.0f;

    XOffset += (targetX - XOffset) * smoothSpeed * deltaTime;
    YOffset += (targetY - YOffset) * smoothSpeed * deltaTime;
}

void Camera::followAhead(const Entity& entity, float deltaTime, float distanceMult) {
    float targetX = entity.getX() - width / 2.0f;
    float targetY = entity.getY() - height / 2.0f;

    targetX += entity.getVX() * deltaTime * distanceMult;
    targetY += entity.getVY() * deltaTime * distanceMult;

    XOffset += (targetX - XOffset) * smoothSpeed * deltaTime;
    YOffset += (targetY - YOffset) * smoothSpeed * deltaTime;
}

void Camera::followWithDeadzone(const Entity& entity, float deltaTime, float deadzoneRadius) {
    float playerScreenX = entity.getX() - XOffset;
    float playerScreenY = entity.getY() - YOffset;

    float centerX = width / 2.0f;
    float centerY = height / 2.0f;

    float dx = playerScreenX - centerX;
    float dy = playerScreenY - centerY;

    if (std::abs(dx) > deadzoneRadius) {
        float targetX = entity.getX() - width / 2.0f;
        XOffset += (targetX - XOffset) * smoothSpeed * deltaTime;
    }
    if (std::abs(dy) > deadzoneRadius) {
        float targetY = entity.getY() - height / 2.0f;
        YOffset += (targetY - YOffset) * smoothSpeed * deltaTime;
    }
}

int Camera::getXOffset() const {
    return static_cast<int>(XOffset);
}

int Camera::getYOffset() const {
    return static_cast<int>(YOffset);
}

int Camera::getWidth() const {
    return width;
}

int Camera::getHeight() const {
    return height;
}