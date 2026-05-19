#pragma once


/**
 * To avoid just rewriting SDL functionality, here are some useful SDL functions for time management:
 * SDL_GetTicks() - returns the number of milliseconds since SDL_Init was called. Note that Engine calls SDL_Init in its constructor
 * SDL_Delay(Uint32 ms) - delays for the specified number of milliseconds
 * Because this header pulls SDL_timer.h in too, you can use them if you include this header
 */

#include <SDL3/SDL_timer.h>

namespace loam {
    /**
     * Wraps timing intervals with SDL
     * @author luciferoussky72
     */
    class Timer {
    public:
        /**
         * Stores the time that this function was called to use it to calculate a time interval
         * @note make sure this matches a stop call
         */
        void start();
        /**
         * Stores the time that this function was called to use it to calculate a time interval
         * @note make sure this matches a start call
         */
        void stop();

        /**
         * @return the difference in time (in milliseconds) between the last call to start and stop
         * @note returns useless values until you have a proper start and stop pair
         */
        [[nodiscard]] Uint64 delta_time_ms() const;
        /**
         * @return the difference in time (in seconds) between the last call to start and stop
         * @note returns useless values until you have a proper start and stop pair
         */
        [[nodiscard]] float delta_time_s() const;

        /**
         * @return the time in milliseconds when you last called start()
         */
        [[nodiscard]] Uint64 get_start_time() const;
        /**
         * @return the time in milliseconds when you last called stop()
         */
        [[nodiscard]] Uint64 get_stop_time() const;
    private:

        Uint64 start_time = 0;
        Uint64 stop_time = 0;
        Uint64 delta_ms = 0;

    };
} // loam

