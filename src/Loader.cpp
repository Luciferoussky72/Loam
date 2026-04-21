#include "loam/Loader.hpp"

namespace loam {
    Loader::Loader(SDL_Renderer* renderer) : renderer(renderer) {
        assetPath = std::string(SDL_GetBasePath());
    }

    Loader::~Loader() {
        for (auto& sprite : sprites) {
            delete sprite.second;
        }
    }

    void Loader::loadSprite(std::string_view name, const std::string& path, int width, int height, int framesPerRow, int framesPerSecond) {
        auto instance = sprites.find(name);
        if (instance != sprites.end()) {
            SDL_Log("Failed to load sprite %s, sprite already loaded!", name.c_str());
            return;
        }

        sprites[name] = Sprite(renderer, (assetPath + path).c_str(), width, height, framesPerRow, framesPerSecond);
    }

    Sprite* Loader::getSprite(const std::string& name) const {
        auto it = sprites.find(name);
        if (it != sprites.end()) {
            return it->second;
        }
        return nullptr;
    }
} // loam