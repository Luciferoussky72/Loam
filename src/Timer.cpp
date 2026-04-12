#include "loam/Timer.hpp"


namespace loam {
    Timer::Timer(int target_frames_per_second)
        : target_frames_per_second(target_frames_per_second), frame_delay_ms(1000/target_frames_per_second), last_time(SDL_GetTicks()), delta_ms(0){

    }

    void Timer::update() {
        Uint64 current_time = SDL_GetTicks();
        delta_ms = current_time - last_time;
        last_time = current_time;
    }

    Uint64 Timer::get_delta_ms() const {
        return delta_ms;
    }

    float Timer::get_delta_time() const {
        return static_cast<float>(delta_ms)/1000.0f;
    }

    void Timer::set_frames_per_second(int frames_per_second) {
        target_frames_per_second = frames_per_second;
        frame_delay_ms = 1000/target_frames_per_second;
    }

    void Timer::limit_frame_rate() const {
        if (frame_delay_ms > delta_ms) {
            SDL_Delay(static_cast<Uint32>(frame_delay_ms - delta_ms));
        }
    }
} // loam