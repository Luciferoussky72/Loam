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

    bool Loader::load_texture(std::string_view name, std::string_view path) {
        auto load_check = texture_storage.find(name.data());
        if (load_check != texture_storage.end()) {
            SDL_Log("Failed to load texture \"%s\"; texture already loaded!", name.data());
            return false;
        }

        SDL_Texture* tmp = IMG_LoadTexture(engine.get_renderer(), (asset_path + path).c_str());
        if (!tmp) {
            SDL_Log("Failed to load texture \"%s\"; %s", name.data(), SDL_GetError());
            return false;
        }

        texture_storage[name.data()] = tmp;
        return true;
    }

    bool Loader::unload_texture(std::string_view name) {
        auto load_check = texture_storage.find(name.data());
        if (load_check == texture_storage.end()) {
            SDL_Log("Failed to unload texture \"%s\"; texture does not exist!", name.data());
            return false;
        }

        SDL_DestroyTexture(load_check->second);
        texture_storage.erase(name.data());
        return true;
    }

    void Loader::unload_all_textures() {
        for (auto& slot : texture_storage) {
            SDL_DestroyTexture(slot.second);
        }
        texture_storage.clear();
    }

    std::expected<SDL_Texture*, std::string> Loader::get_texture(std::string_view name) const {
        auto it = texture_storage.find(name.data());
        if (it == texture_storage.end()) {
            return std::unexpected(std::string("Texture \"") + name + "\" does not exist!");
        }
        return it->second;
    }
} // loam