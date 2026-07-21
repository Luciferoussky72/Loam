#pragma once

#include <unordered_map>
#include <SDL3_mixer/SDL_mixer.h>
#include <expected>
#include <string>

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
