#pragma once

#include <string>
#include <SDL3/SDL.h>

namespace loam {
    /**
     * Manage the SDL_Window and SDL_Renderer lifecycle in a clean C++ object
     * @author luciferoussky72
     */
    class Engine {
    public:
        /**
         * Constructs an Engine object
         * @note be sure to call this early on so you can use it for other behavior
         * @param window_title the title of the window
         * @param window_width the width of the window
         * @param window_height the height of the window
         * @param window_flags flags that the window should use
         */
        Engine(std::string window_title, int window_width, int window_height, SDL_WindowFlags window_flags);
        /**
         * Overload to support string literals for window_title
         * @note be sure to call this early on so you can use it for other behavior
         * @param window_title the title of the window
         * @param window_width the width of the window
         * @param window_height the height of the window
         * @param window_flags flags that the window should use
         */
        Engine(const char* window_title, int window_width, int window_height, SDL_WindowFlags window_flags);

        /**
         * Engine has deleted copy and assignment constructors for memory-safety
         */
        Engine(const Engine&) = delete;
        Engine& operator=(const Engine&) = delete;

        /**
         * Destroys the attached renderer and window
         * @note the best practice is usually to have your code set up so your Engine's destructor runs at the end of main()
         */
        ~Engine();

        /**
         * Sets running to false. Made to break out of a game loop
         */
        void terminate();

        /**
         * Processes SDL events that are important to Engine
         * @note should be called once per frame
         * @param event the SDL_Event pointer to process
         */
        void process_event(const SDL_Event* event);

        /**
         * Returns the running state of the Engine object
         * @return whether the Engine is running
         */
        [[nodiscard]] bool is_running() const {
            return running;
        }

        /**
         * Gets the object's SDL_Window pointer
         * @return the underlying SDL_Window pointer
         */
        [[nodiscard]] SDL_Window* get_window() const {
            return window;
        }

        /**
         * Gets the current window title
         * @return the window title
         */
        [[nodiscard]] const std::string& get_window_title() const {
            return window_title;
        }

        /**
         * Gets the window width
         * @return the window width
         */
        [[nodiscard]] int get_window_width() const {
            return window_width;
        }

        /**
         * Gets the window height
         * @return the window height
         */
        [[nodiscard]] int get_window_height() const {
            return window_height;
        }

        /**
         * Changes the window title after instantiating the Engine
         * @param new_title the new title for the window
         */
        void set_window_title(std::string new_title) {
            SDL_SetWindowTitle(window, new_title.c_str());
            window_title = std::move(new_title);
        }

        /**
         * Gets the object's SDL_Renderer pointer
         * @return the underlying SDL_Renderer pointer
         */
        [[nodiscard]] SDL_Renderer* get_renderer() const {
            return renderer;
        }
    private:
        bool running;

        SDL_Window* window;
        std::string window_title;
        int window_width;
        int window_height;
        SDL_Renderer* renderer;
    };
} // loam