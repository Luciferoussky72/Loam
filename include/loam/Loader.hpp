#pragma once
#include <SDL3/SDL_render.h>
#include <unordered_map>
#include <string>

#include "Sprite.hpp"

namespace loam {
    /**
     *
     */
    class Loader {
    public:
        Loader(SDL_Renderer* renderer);
        ~Loader();
        void loadSprite(std::string_view name, const std::string& path, int width, int height, int framesPerRow, int framesPerSecond);
        [[nodiscard]] Sprite* getSprite(const std::string& name) const;
    private:
        SDL_Renderer* renderer;
        std::unordered_map<std::string, Sprite*, std::hash<std::string>, std::equal_to<>> sprites;
        std::string assetPath;
    };
} // loam