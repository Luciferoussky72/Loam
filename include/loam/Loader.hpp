#pragma once

#include <string>
#include <unordered_map>
#include <expected>

#include "Engine.hpp"
#include "Sprite.hpp"

namespace loam {
    /**
     * Caches expensive to load objects and SDL assets
     * @note this is the Loam-approved way to cache stuff, but feel free to write your own loader; nothing depends on this
     */
    class Loader {
    public:
        /**
         * Constructs a Loader
         * @param engine the Engine to use for the object; must outlive the Loader!
         */
        Loader(const Engine& engine);

        /**
         * Destroys a Loader
         */
        ~Loader();

        /**
         * Loads a new SDL_Texture via the Loader
         * @param name the name you want to use to access the texture
         * @param path the relative path of the file to the executable's path
         */
        void load_texture(std::string_view name, std::string_view path);

        /**
         * Gets an SDL_Texture from the Loader
         * @param name the name you initialized the texture with
         * @return an instance of std::expected containing the texture
         */
        [[nodiscard]] std::expected<SDL_Texture*, std::string> get_texture(std::string_view name) const;
    private:
        const Engine& engine;
        std::unordered_map<std::string, SDL_Texture*, std::hash<std::string>, std::equal_to<>> texture_storage;
        std::string asset_path;
    };
} // loam