#include "Input.hpp"
#include <cmath>

Input::Input() : mouseX(0), mouseY(0), currentMouseState(0), previousMouseState(0), mouseActive(false), keyboardActive(false), gamepadActive(false){
    currentKeyState = SDL_GetKeyboardState(nullptr);
    for (bool& k : previousKeyState) {
        k = false;
    }

    // Initialize gamepad state
    for (int i = 0; i < SDL_GAMEPAD_BUTTON_COUNT; i++) {
        currentGamepadButtons[i] = 0;
        previousGamepadButtons[i] = 0;
    }

    // Try to open first gamepad
    // Check for gamepads
    int numGamepads = 0;
    SDL_JoystickID* gamepads = SDL_GetGamepads(&numGamepads);
    SDL_Log("Number of gamepads detected: %d", numGamepads);
    if (numGamepads > 0) {
        gamepad = SDL_OpenGamepad(gamepads[0]);
        if (gamepad) {
            SDL_Log("Gamepad connected: %s", SDL_GetGamepadName(gamepad));
        }
    } else {
        gamepad = nullptr;
    }
    SDL_free(gamepads);
}

Input::~Input() {
    if (gamepad) {
        SDL_CloseGamepad(gamepad);
    }
}

void Input::update() {
    for (int i = 0; i < SDL_SCANCODE_COUNT; i++) {
        if (currentKeyState[i] != previousKeyState[i] and !keyboardActive) {
            SDL_Log("Keyboard/Mouse active.");
            keyboardActive = true;
            mouseActive = true;
            gamepadActive = false;
        }
        previousKeyState[i] = currentKeyState[i];
    }
    if (currentMouseState != previousMouseState and !mouseActive) {
        SDL_Log("Keyboard/Mouse active.");
        keyboardActive = true;
        mouseActive = true;
        gamepadActive = false;
    }
    previousMouseState = currentMouseState;
    currentMouseState = SDL_GetMouseState(&mouseX, &mouseY);

    if (gamepad) {
        for (int i = 0; i < SDL_GAMEPAD_BUTTON_COUNT; i++) {
            if ((currentGamepadButtons[i] != previousGamepadButtons[i] or (getGamepadAxis(SDL_GAMEPAD_AXIS_LEFTX) != 0.0f or getGamepadAxis(SDL_GAMEPAD_AXIS_LEFTY) != 0.0f)) and !gamepadActive) {
                SDL_Log("Gamepad active.");
                gamepadActive = true;
                keyboardActive = false;
                mouseActive = false;
            }
            previousGamepadButtons[i] = currentGamepadButtons[i];
            currentGamepadButtons[i] = SDL_GetGamepadButton(gamepad, static_cast<SDL_GamepadButton>(i));
        }
    }
}

void Input::processEvent(const SDL_Event* event) {
    if (event->type == SDL_EVENT_GAMEPAD_ADDED) {
        if (!gamepad) {
            gamepad = SDL_OpenGamepad(event->gdevice.which);
            if (gamepad) {
                SDL_Log("Gamepad connected: %s", SDL_GetGamepadName(gamepad));
            } else {
                SDL_Log("FAILED to open gamepad: %s", SDL_GetError());
            }
        }
    }
    if (event->type == SDL_EVENT_GAMEPAD_REMOVED) {
        if (gamepad && event->gdevice.which == SDL_GetGamepadID(gamepad)) {
            SDL_Log("Gamepad disconnected: %s", SDL_GetGamepadName(gamepad));
            SDL_CloseGamepad(gamepad);
            gamepad = nullptr;
        }
    }
}

bool Input::isKeyDown(SDL_Scancode key) const {
    return currentKeyState[key];
}

bool Input::isKeyPressed(SDL_Scancode key) const {
    return currentKeyState[key] and !previousKeyState[key];
}

bool Input::isKeyReleased(SDL_Scancode key) const {
    return !currentKeyState[key] and previousKeyState[key];
}

bool Input::isKeyboardActive() const {
    return keyboardActive;
}

bool Input::isMouseButtonDown(int button) const {
    return currentMouseState & SDL_BUTTON_MASK(button);
}

bool Input::isMouseButtonPressed(int button) const {
    return (currentMouseState & SDL_BUTTON_MASK(button)) &&
           !(previousMouseState & SDL_BUTTON_MASK(button));
}

bool Input::isMouseButtonReleased(int button) const {
    return !(currentMouseState & SDL_BUTTON_MASK(button)) &&
           (previousMouseState & SDL_BUTTON_MASK(button));
}

float Input::getMouseX() const {
    return mouseX;
}

float Input::getMouseY() const {
    return mouseY;
}

bool Input::isMouseActive() const {
    return mouseActive;
}

bool Input::isGamepadButtonDown(SDL_GamepadButton button) const {
    return gamepad and currentGamepadButtons[button];
}

bool Input::isGamepadButtonPressed(SDL_GamepadButton button) const {
    return gamepad and currentGamepadButtons[button] and !previousGamepadButtons[button];
}

bool Input::isGamepadButtonReleased(SDL_GamepadButton button) const {
    return gamepad and !currentGamepadButtons[button] and previousGamepadButtons[button];
}

float Input::getGamepadAxis(SDL_GamepadAxis axis) const {
    if (!gamepad) return 0.0f;

    Sint16 value = SDL_GetGamepadAxis(gamepad, axis);

    float normalized = value / 32767.0f;
    constexpr float deadzone = 0.15f;

    if (std::fabs(normalized) < deadzone) {
        return 0.0f;
    }

    return normalized;
}

bool Input::isGamepadConnected() const {
    return gamepad != nullptr;
}

bool Input::isGamepadActive() const {
    return gamepadActive;
}
