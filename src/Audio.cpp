#include "loam/Audio.hpp"

namespace loam {
    AudioLoader::~AudioLoader() {
        for (auto& s : sounds) {
            SDL_free(s.second.data);
        }
    }

    void AudioLoader::load_sound(std::string_view path, std::string_view name) {
        auto load_check = sounds.find(name.data());
        if (load_check != sounds.end()) {
            SDL_Log("Failed to load sound \"%s\"; sound already loaded!", name.data());
            return;
        }

        Uint8* sound_data = nullptr;
        Uint32 sound_data_length;
        if (!SDL_LoadWAV(path.data(), nullptr, &sound_data, &sound_data_length)) {
            SDL_Log("Failed to load sound \"%s\"; %s", name.data(), SDL_GetError());
            return;
        }

        sounds[name.data()] = Sound{sound_data, sound_data_length};
    }

    void AudioLoader::unload_sound(std::string_view name) {
        auto load_check = sounds.find(name.data());
        if (load_check == sounds.end()) {
            SDL_Log("Failed to unload sound \"%s\"; sound does not exist!", name.data());
            return;
        }

        SDL_free(sounds[name.data()].data);
        sounds.erase(name.data());
    }

    std::expected<Sound, std::string> AudioLoader::get_sound(std::string_view name) const {
        auto load_check = sounds.find(name.data());
        if (load_check == sounds.end()) {
            return std::unexpected(std::string("Sound \"") + name + "\" does not exist!");
        }

        return load_check->second;
    }
} // loam