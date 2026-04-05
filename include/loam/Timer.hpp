#pragma once

#include <SDL3/SDL.h>

namespace loam {
    class Timer {
    public:
        Timer(int target_frames_per_second);

        void update();
        [[nodiscard]] Uint64 get_delta_ms() const;
        [[nodiscard]] float get_delta_time() const;
        void set_frames_per_second(int frames_per_second);
        void limit_frame_rate() const;
    private:
        int target_frames_per_second;
        Uint64 frame_delay_ms;
        Uint64 last_time;
        Uint64 delta_ms;

    };
} //loam