
#ifndef EARTHBORN_ENGINE_HPP
#define EARTHBORN_ENGINE_HPP
#include <SDL3/SDL.h>

class Engine {
public:
    Engine(const char* title, int width, int height, SDL_WindowFlags flags);
    ~Engine();
    void processEvent(const SDL_Event* event);
    bool running;
    SDL_Window* window;
    SDL_Renderer* renderer;
};


#endif //EARTHBORN_ENGINE_HPP