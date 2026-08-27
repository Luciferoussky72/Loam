#pragma once

#include <SDL3_mixer/SDL_mixer.h>

namespace loam {
    /**
     * Stores the data needed for sounds with SDL
     * @note this is a trivially copyable type, so feel free to pass it around by value
     */
    struct Sound {
        Uint8* data;
        Uint32 data_length;
    };



}
