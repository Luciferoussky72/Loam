#include "Timer.hpp"

Timer::Timer(int targetFPS)
    : targetFPS(targetFPS), frameDelayMS(1000/targetFPS), lastTime(SDL_GetTicks()), deltaMS(0.0f){

}

void Timer::update() {
    Uint64 currentTime = SDL_GetTicks();
    deltaMS = currentTime - lastTime;
    lastTime = currentTime;
}

Uint64 Timer::getDeltaMS() const {
    return deltaMS;
}

float Timer::getDeltaTime() const {
    return static_cast<float>(deltaMS)/1000.0f;
}

void Timer::limitFrameRate() const {
    if (frameDelayMS > deltaMS) {
        SDL_Delay(static_cast<Uint32>(frameDelayMS - deltaMS));
    }
}
