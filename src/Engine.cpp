#include "loam/Engine.hpp"

namespace loam {
    Engine::Engine(std::string window_title, int window_width, int window_height, SDL_WindowFlags window_flags)
        : window_width(window_width), window_height(window_height) {
        window = SDL_CreateWindow(window_title.c_str(), window_width, window_height, window_flags);
        renderer = SDL_CreateRenderer(window, nullptr);
        running = true;
        this->window_title = std::move(window_title);
    }
    Engine::Engine(const char* window_title, int window_width, int window_height, SDL_WindowFlags window_flags)
        : Engine(std::string(window_title), window_width, window_height, window_flags) {}

    Engine::~Engine() {
        SDL_DestroyRenderer(renderer);
        SDL_DestroyWindow(window);
    }

    void Engine::terminate() {
        running = false;
    }

    void Engine::process_event(const SDL_Event* event) {
        switch (event->type) {
            case SDL_EVENT_QUIT:
            case SDL_EVENT_WINDOW_CLOSE_REQUESTED:
                running = false;
                break;
            case SDL_EVENT_WINDOW_RESIZED:
                window_width = event->window.data1;
                window_height = event->window.data2;
                break;
            default:
                break;
        }
    }
} //loam
