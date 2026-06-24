#include "loam/Engine.hpp"

namespace loam {
    Engine::Engine(SDL_InitFlags SDL_flags, std::string window_title, int window_width, int window_height, SDL_WindowFlags window_flags)
        : window_width(window_width), window_height(window_height) {

        if (!SDL_Init(SDL_flags)) {
            SDL_Log("Error initializing SDL: %s", SDL_GetError());
            std::abort();
        }

        window = SDL_CreateWindow(window_title.c_str(), window_width, window_height, window_flags);
        if (!window) {
            SDL_Log("Error initializing the window: %s", SDL_GetError());
            SDL_Quit();
            std::abort();
        }

        renderer = SDL_CreateRenderer(window, nullptr);
        if (!renderer) {
            SDL_Log("Error initializing the renderer: %s", SDL_GetError());
            SDL_DestroyWindow(window);
            SDL_Quit();
            std::abort();
        }

        this->window_title = std::move(window_title);
    }

    Engine::~Engine() {
        SDL_DestroyRenderer(renderer);
        SDL_DestroyWindow(window);
        SDL_Quit();
    }

    void Engine::terminate() {
        running = false;
    }

    void Engine::process_event(const SDL_Event& event) {
        switch (event.type) {
            case SDL_EVENT_QUIT:
            case SDL_EVENT_WINDOW_CLOSE_REQUESTED:
                running = false;
                break;
            case SDL_EVENT_WINDOW_RESIZED:
                window_width = event.window.data1;
                window_height = event.window.data2;
                break;
            default:
                break;
        }
    }
} // loam
