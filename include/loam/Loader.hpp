#pragma once

#include <loam/Enumtable.hpp>
#include <SDL3/SDL_render.h>
#include <SDL3_image/SDL_image.h>

#include "Spritesheet.hpp"

namespace loam {
    template <Enum TE>
    class Loader {
    public:
        /**
         * Creates a new Loader
         * @param renderer the renderer the Loader should use to load textures from the disk; it must outlive the Loader!
         */
        Loader(SDL_Renderer* renderer) : renderer(renderer) {}

        /**
         * Cleans up any textures the object still has in its storage
         */
        ~Loader() {
            for (SDL_Texture* texture : texture_storage) {
                if (texture) {
                    SDL_DestroyTexture(texture);
                }
            }
        }

        /**
         * Loads a texture into the Loader from an existing SDL_Texture
         * @warning the Loader becomes responsible for freeing the SDL_Texture you pass into it! Do not call SDL_DestroyTexture;
         * use Loader::unload_texture instead or let the Loader clean up the texture itself!
         * @param name the enumerator you would like to use to represent the texture
         * @note if there is already a texture in name's slot, this function will do nothing. Call Loader::unload_texture first
         * @param texture the texture you would like to store in that slot. This function does nothing if it is null
         * @return true if the texture is properly loaded and assigned, false otherwise
         */
        bool load_texture(TE name, SDL_Texture* texture) {
            if (!texture) return false;
            assert(verify_enum<TE>(name));
            if (texture_storage[name]) return false;
            texture_storage[name] = texture;
            return true;
        }

        /**
         * Uses IMG_LoadTexture to load a texture from a file
         * @param name the enumerator you would like to bind to the texture
         * @note if there is already a texture in name's slot, this function will do nothing. Call Loader::unload_texture first
         * @param path the path of the file relative to the executable
         * @return true if the texture is properly loaded and assigned, false otherwise
         */
        bool load_texture(TE name, std::string_view path) {
            assert(verify_enum<TE>(name));
            if (texture_storage[name]) return false;
            static std::string base_path = SDL_GetBasePath();
            SDL_Texture* texture = IMG_LoadTexture(renderer, base_path.append(path).c_str());
            if (!texture) return false;
            texture_storage[name] = texture;
            return true;
        }

        /**
         * Unloads a texture by calling SDL_DestroyTexture on it
         * @param name the enumerator representing the texture you want to unload
         * @note if there is no texture in name's slot, this function does nothing.
         * @return true if a texture gets unloaded, false otherwise
         */
        bool unload_texture(TE name) {
            assert(verify_enum<TE>(name));
            if (texture_storage[name]) {
                SDL_DestroyTexture(texture_storage[name]);
                texture_storage[name] = nullptr;
                return true;
            }
            return false;
        }

        /**
         * Unloads all textures the Loader holds
         * @note you would use this for scene changes
         */
        void unload_all_textures() {
            for (SDL_Texture*& texture : texture_storage) {
                if (texture) {
                    SDL_DestroyTexture(texture);
                    texture = nullptr;
                }
            }
        }

        /**
         * Fetches a texture from the Loader
         * @param name the enumerator bound to the texture
         * @return the texture if it exists, nullptr otherwise
         */
        [[nodiscard]] SDL_Texture* fetch_texture(TE name) const {
            assert(verify_enum<TE>(name));
            return texture_storage[name];
        }

        /**
         * Gets a texture from the Loader
         * @param name the enumerator bound to the texture
         * @note this *doesn't* return by reference, so don't try to modify a texture index via this; use the load and unload functions
         * @return the texture if it exists, nullptr otherwise
         */
        [[nodiscard]] SDL_Texture* operator[](TE name) const {
            return fetch_texture(name);
        }

        /**
         * Checks that the Loader has a specific texture
         * @note you'd use this to verify that an SDL_Texture* isn't a dangling pointer
         * @param texture the texture to check for
         * @return true if it has it, false otherwise
         */
        [[nodiscard]] bool has(SDL_Texture* texture) const {
            for (SDL_Texture* t : texture_storage) {
                if (texture == t) return true;
            }
            return false;
        }

        /**
         * Checks that the Loader has a specific Spritesheet's texture
         * @note you'd use this to verify that a Spritesheet's SDL_Texture* isn't a dangling pointer
         * @param spritesheet the Spritesheet to check for the texture
         * @return true if it has the Spritesheet's texture, false otherwise
         */
        [[nodiscard]] bool has(const Spritesheet& spritesheet) const {
            for (SDL_Texture* t : texture_storage) {
                if (spritesheet.texture == t) return true;
            }
            return false;
        }
    private:
        SDL_Renderer* renderer = nullptr;
        Enumtable<SDL_Texture*, TE> texture_storage = Enumtable<SDL_Texture*, TE>(nullptr);
    };
}
