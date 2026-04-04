
#include "Engine.hpp"
#include <SDL3/SDL.h>

Engine::Engine(const char* title, int width, int height, SDL_WindowFlags flags)
: running(true) {
    SDL_Init(SDL_INIT_VIDEO | SDL_INIT_GAMEPAD);
    window = SDL_CreateWindow(title, width, height, flags);
    renderer = SDL_CreateRenderer(window, nullptr);
}

Engine::~Engine() {
    SDL_DestroyWindow(window);
    SDL_DestroyRenderer(renderer);
    SDL_Quit();
}

void Engine::processEvent(const SDL_Event* event) {
    if (event->type == SDL_EVENT_QUIT) {
        SDL_Log("Game was quit.");
        running = false;
    }
}

