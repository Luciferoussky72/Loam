#pragma once

#include <unordered_map>
#include <SDL3_mixer/SDL_mixer.h>
#include <expected>

namespace loam {
    /**
     * Stores the data needed for sounds with SDL
     * @note this is a trivially copyable type, so feel free to pass it around by value
     */
    struct Sound {
        Uint8* data;
        Uint32 data_length;
    };

    /**
     * Wraps simple audio loading with SDL_mixer
     * @note this does load sounds for you, but leaves actually playing them up to you, as it feels overly prescriptive to implement that
     * @note this can only load WAV files, although Sound structs can store SDL sound data from any file format
     */
    class SoundLoader {
    public:
        /**
         * Default constructor because there is nothing to do in the constructor
         */
        SoundLoader() = default;

        /**
         * Cleans up the object's Sound objects
         */
        ~SoundLoader();

        /**
         * Loads a new WAV file
         * @param path the path to the WAV file
         * @param name the name you want to access the sound with
         * @return true on success, false on failure
         */
        bool load_sound(std::string_view path, std::string_view name);

        /**
         * Unloads a sound
         * @param name the sound you want to unload
         * @return true on success, false on failure
         */
        bool unload_sound(std::string_view name);

        /**
         * Gets a sound
         * @param name the name of the sound you want
         * @return an instance of std::expected that either contains the sound or an error message
         */
        [[nodiscard]] std::expected<Sound, std::string> get_sound(std::string_view name) const;
    private:
        std::unordered_map<std::string, Sound, std::hash<std::string>, std::equal_to<>> sounds;
    };


} // loam
