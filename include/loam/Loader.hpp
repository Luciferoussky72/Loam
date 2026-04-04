#ifndef EARTHBORN_LOADER_HPP
#define EARTHBORN_LOADER_HPP
#include <SDL3/SDL_render.h>
#include <unordered_map>
#include <string>

#include "Sprite.hpp"


class Loader {
public:
    Loader(SDL_Renderer* renderer);
    ~Loader();
    void loadSprite(const std::string& name, const std::string& path, int width, int height, int framesPerRow, int framesPerSecond);
    [[nodiscard]] Sprite* getSprite(const std::string& name) const;
private:
    SDL_Renderer* renderer;
    std::unordered_map<std::string, Sprite*> sprites;
    std::string assetPath;
};


#endif //EARTHBORN_LOADER_HPP