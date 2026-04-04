#ifndef EARTHBORN_KEYBOARD_HPP
#define EARTHBORN_KEYBOARD_HPP

#include <SDL3/SDL.h>

class Input {
public:
    Input();
    ~Input();
    void update();
    void processEvent(const SDL_Event* event);

    [[nodiscard]] bool isKeyDown(SDL_Scancode key) const;
    [[nodiscard]] bool isKeyPressed(SDL_Scancode key) const;
    [[nodiscard]] bool isKeyReleased(SDL_Scancode key) const;
    [[nodiscard]] bool isKeyboardActive() const;

    [[nodiscard]] bool isMouseButtonDown(int button) const;
    [[nodiscard]] bool isMouseButtonPressed(int button) const;
    [[nodiscard]] bool isMouseButtonReleased(int button) const;
    [[nodiscard]] float getMouseX() const;
    [[nodiscard]] float getMouseY() const;
    [[nodiscard]] bool isMouseActive() const;

    [[nodiscard]] bool isGamepadButtonDown(SDL_GamepadButton button) const;
    [[nodiscard]] bool isGamepadButtonPressed(SDL_GamepadButton button) const;
    [[nodiscard]] bool isGamepadButtonReleased(SDL_GamepadButton button) const;
    [[nodiscard]] float getGamepadAxis(SDL_GamepadAxis axis) const;
    [[nodiscard]] bool isGamepadConnected() const;
    [[nodiscard]] bool isGamepadActive() const;
private:
    float mouseX;
    float mouseY;
    Uint32 currentMouseState;
    Uint32 previousMouseState;
    bool mouseActive;

    const bool* currentKeyState;
    bool previousKeyState[SDL_SCANCODE_COUNT];
    bool keyboardActive;

    SDL_Gamepad* gamepad;
    Uint8 currentGamepadButtons[SDL_GAMEPAD_BUTTON_COUNT];
    Uint8 previousGamepadButtons[SDL_GAMEPAD_BUTTON_COUNT];
    bool gamepadActive;
};


#endif //EARTHBORN_KEYBOARD_HPP