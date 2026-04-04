#ifndef EARTHBORN_TIMER_HPP
#define EARTHBORN_TIMER_HPP
#include <SDL3/SDL.h>


class Timer {
public:
    Timer(int targetFPS);

    void update();
    [[nodiscard]] Uint64 getDeltaMS() const;
    [[nodiscard]] float getDeltaTime() const;
    void limitFrameRate() const;
private:
    int targetFPS;
    int frameDelayMS;
    Uint64 lastTime;
    Uint64 deltaMS;

};


#endif //EARTHBORN_TIMER_HPP