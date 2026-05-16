#include "loam/Audio.hpp"

namespace loam {
    SoundLoader::~SoundLoader() {
        for (auto& s : sounds) {
            SDL_free(s.second.data);
        }
    }

    bool SoundLoader::load_sound(std::string_view path, std::string_view name) {
        auto load_check = sounds.find(name.data());
        if (load_check != sounds.end()) {
            SDL_Log("Failed to load sound \"%s\"; sound already loaded!", name.data());
            return false;
        }

        Uint8* sound_data = nullptr;
        Uint32 sound_data_length;
        if (!SDL_LoadWAV(path.data(), nullptr, &sound_data, &sound_data_length)) {
            SDL_Log("Failed to load sound \"%s\"; %s", name.data(), SDL_GetError());
            return false;
        }

        sounds[name.data()] = Sound{sound_data, sound_data_length};
        return true;
    }

    bool SoundLoader::unload_sound(std::string_view name) {
        auto load_check = sounds.find(name.data());
        if (load_check == sounds.end()) {
            SDL_Log("Failed to unload sound \"%s\"; sound does not exist!", name.data());
            return false;
        }

        SDL_free(sounds[name.data()].data);
        sounds.erase(name.data());
        return true;
    }

    std::expected<Sound, std::string> SoundLoader::get_sound(std::string_view name) const {
        auto load_check = sounds.find(name.data());
        if (load_check == sounds.end()) {
            return std::unexpected(std::string("Sound \"") + name + "\" does not exist!");
        }

        return load_check->second;
    }
} // loam