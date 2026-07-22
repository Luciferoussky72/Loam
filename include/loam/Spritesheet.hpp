#pragma once

struct SDL_Texture;
struct SDL_FRect;
struct SDL_Renderer;
#include <cstddef>


namespace loam {
    /**
     * Provides a small amount of abstraction to remove boilerplate when using SDL_render.h
     * @warning this struct **DOES NOT** free texture data for you! Use loam::Loader or your own method of managing texture data
     * @note the render function assumes that all sprites in the texture are the same size and that they are lined up in a perfect line,
     * left-to-right. Using it with textures that don't follow that format could send you to Fairy Country
     */
    struct Spritesheet {
        SDL_Texture* texture = nullptr;
        int sprite_width = 0;
        int sprite_height = 0;

        /**
         * Creates a new Spritesheet
         * @param texture the texture the Spritesheet will use; keep in mind it does not own the texture. Do not forget to free the texture
         * or a nisse will steal it!
         * @param sprite_width the width of sprites in the texture; if you pass in nothing it will just be zero
         * @param sprite_height the height of sprites in the texture; if you pass in nothing it will just be zero
         */
        explicit Spritesheet(SDL_Texture* texture, int sprite_width = 0, int sprite_height = 0);

        /**
         * Renders a sprite from the Spritesheet
         * @note this function only works if both sprite_width and sprite_height are not zero
         * @param renderer the SDL_Renderer to use for rendering calls; this will just return false if you pass in a null
         * @param n the sprite you would like to render. 0 means the furthest left sprite, 1 means sprite_width pixels over, etc
         * @warning this function assumes that all sprites in the texture are the same size and that they are lined up in a perfect line,
         * left-to-right. Using it with textures that don't follow that format could send you to Fairy Country
         * @param dest the destination rectangle representing where on the screen to render the texture
         * @param flip_x whether to flip the texture horizontally; defaults to false
         * @param flip_y whether to flip the texture vertically; defaults to false
         * @return true if it successfully renders, false otherwise
         */
        bool render(SDL_Renderer* renderer, size_t n, const SDL_FRect& dest, bool flip_x = false, bool flip_y = false) const;

        /**
         * "Stretches" a rectangle over the Spritesheet to render a specific part of it
         * @param renderer the SDL_Renderer to use for rendering calls; this will just return false if you pass in a null
         * @param src the rectangle to "stretch" over the Spritesheet to source pixel data
         * @param dest the destination rectangle representing where on the screen to render the texture
         * @param flip_x whether to flip the texture horizontally; defaults to false
         * @param flip_y whether to flip the texture vertically; defaults to false
         * @return true if it successfully renders, false otherwise
         */
        bool stretch_render(SDL_Renderer* renderer, const SDL_FRect& src, const SDL_FRect& dest, bool flip_x = false, bool flip_y = false) const;
    };
}