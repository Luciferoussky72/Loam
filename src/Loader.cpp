#include "loam/Loader.hpp"
#include <SDL3_image/SDL_image.h>

namespace loam {
    Loader::Loader(const Engine& engine) : engine(engine) {
        asset_path = std::string(SDL_GetBasePath());
    }

    Loader::~Loader() {
        for (auto& slot : texture_storage) {
            SDL_DestroyTexture(slot.second);
        }
    }

    void Loader::load_texture(std::string_view name, std::string_view path) {
        auto instance = texture_storage.find(name.data());
        if (instance != texture_storage.end()) {
            SDL_Log("Failed to load sprite %s, sprite already loaded!", name.data());
            return;
        }

        texture_storage[name.data()] = IMG_LoadTexture(engine.get_renderer(), (asset_path + path).c_str());
    }

    std::expected<SDL_Texture*, std::string> Loader::get_texture(std::string_view name) const {
        auto it = texture_storage.find(name.data());
        if (it == texture_storage.end()) {
            return std::unexpected(std::string("Failed to load texture \"") + name + '\"');
        }
        return it->second;
    }
} // loam