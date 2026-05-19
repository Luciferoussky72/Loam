#include "loam/Timing.hpp"


namespace loam {
    void Timer::start() {
        start_time = SDL_GetTicks();
    }
    void Timer::stop() {
        stop_time = SDL_GetTicks();
        delta_ms = stop_time - start_time;
    }

    Uint64 Timer::delta_time_ms() const {
        return delta_ms;
    }
    float Timer::delta_time_s() const {
        return static_cast<float>(delta_ms)/1000.0f;
    }

    Uint64 Timer::get_start_time() const {
        return start_time;
    }
    Uint64 Timer::get_stop_time() const {
        return stop_time;
    }




} // loam