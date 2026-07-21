#pragma once

#include <loam/Enumtable.hpp>
#include <SDL3/SDL_filesystem.h>

#include "Engine.hpp"

namespace loam {
    template <Enum TE>
    class Loader {
    public:
        Loader(SDL_Renderer* renderer) : renderer(renderer) {}

        ~Loader() {
            for (SDL_Texture* texture : texture_storage) {
                if (texture) {
                    SDL_DestroyTexture(texture);
                }
            }
        }

        bool load_texture(TE name, SDL_Texture* texture) {
            if (!texture) return false;
            texture_storage[name] = texture;
            return true;
        }

        bool unload_texture(TE name) {
            if (texture_storage[name]) {
                SDL_DestroyTexture(texture_storage[name]);
                texture_storage[name] = nullptr;
                return true;
            }
            return false;
        }

        void unload_all_textures() {
            for (SDL_Texture*& texture : texture_storage) {
                if (texture) {
                    SDL_DestroyTexture(texture);
                    texture = nullptr;
                }
            }
        }

        [[nodiscard]] SDL_Texture* fetch_texture(TE name);
    private:
        SDL_Renderer* renderer = nullptr;
        Enumtable<SDL_Texture*, TE> texture_storage = Enumtable<SDL_Texture*, TE>(nullptr);
    };
}