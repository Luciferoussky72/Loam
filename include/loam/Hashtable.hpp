#pragma once

#include <loam/Enums.hpp>
#include <algorithm>
#include <cassert>

namespace loam {
    /**
     * Error function to get around the fact that we can't throw exceptions in a consteval context, so Loam just uses runtime functions instead
     */
    inline void error_enum_type_incompatible_with_loam_hashtable() {};

    /**
     * Simulates perfect hashing without complex algorithms or any wasted space by using enums and C++26 reflection
     * @author luciferoussky72
     * @note funny story; I was trying to write a perfect hashing algorithm before this. One night, when I was trying to fall asleep for an early flight
     * the next day; the idea of using enums + reflection instead came to me and I immediately wrote the idea down, then was out like a light and
     * implemented and documented this during the flight
     * @tparam T the type that the Hashtable will store
     * @tparam E the enum type that defines valid keys for the hashtable; must have its members count up from 0
     */
    template <typename T, Enum E>
    class Hashtable {
    public:
        /**
         * Just runs the verify_enum function to make sure that the enum is valid to use for indexing
         * @note what's cool is that this constructor has zero cost at runtime; verify_enum is 100% compile-time
         */
        constexpr Hashtable() {
            verify_enum();
        }

        /**
         * Initializes a Hashtable based on an initializer list
         * @warning you'll get a crash if you use a list that's too long in a debug build, but the list will be truncated in release builds
         * @param list the list to use (that much should be clear lol)
         */
        constexpr Hashtable(std::initializer_list<T> list) {
            verify_enum();
            assert(list.size() <= table.size() && "Tried to initialize a Loam Hashtable with a list that was too long!");
            table = list;
        }
        /**
         * Assigns a Hashtable to values in an initializer list
         * @warning you'll get a crash if you assign to a list that's too long in a debug build, but the list will be truncated in release builds
         * @param list the list to use (surprising, I know)
         * @return a reference to the object to enable chaining
         */
        constexpr Hashtable& operator=(std::initializer_list<T> list) {
            assert(list.size() <= table.size() && "Tried to assign a Loam Hashtable to a list that was too long!");
            table = list;
            return *this;
        }

        /**
         * Copies all values from one table to another
         * @param other the table to copy from
         */
        constexpr Hashtable(const Hashtable& other) {
            std::copy(other.table.begin(), other.table.end(), table);
        }
        /**
         * Copies all values from one table to another
         * @param other the table to copy from
         * @return a reference to the copied-to table to enable chaining
         */
        constexpr Hashtable& operator=(const Hashtable& other) {
            std::copy(other.table.begin(), other.table.end(), table);
            return *this;
        }
        /**
         * Move-assigns all values from one table to the another
         * @param other the table to move from
         */
        constexpr Hashtable(Hashtable&& other) noexcept {
            for (int i = 0; i < table.size(); ++i) {
                table[i] = std::move(other.table[i]);
            }
        }
        /**
         * Move-assigns all values from one table to the another
         * @param other the table to move from
         * @return a reference to the moved-to table to enable chaining
         */
        constexpr Hashtable& operator=(Hashtable&& other) noexcept {
            for (int i = 0; i < table.size(); ++i) {
                table[i] = std::move(other.table[i]);
            }
            return *this;
        }

        /**
         * Verifies that the enum type counts up from 0 to the number of members in the enum
         * @return true if the enum qualifies, false otherwise
         */
        consteval void verify_enum() {
            size_t n = 0;
            for (constexpr std::meta::info e : std::define_static_array(std::meta::enumerators_of(^^E))) {
                if (n != static_cast<size_t>([:e:])) {
                    error_enum_type_incompatible_with_loam_hashtable();
                }
                ++n;
            }
        }

        /**
         * Gets the value that matches the key
         * @warning unchecked, like operator[] overloads in the STL; be careful if you don't want to end up with Tide Mice.
         * @param key the key to use; make sure it matches the enum names!
         * @return a reference to the element attached to the key
         */
        [[nodiscard]] constexpr T& operator[](std::string_view key) {
            return table[static_cast<size_t>(enum_from_string<E>(key))];
        }
        /**
         * Gets the value that matches the key
         * @warning unchecked, like operator[] overloads in the STL; be careful if you don't want to end up with Tide Mice.
         * @param key the key to use; make sure it matches the enum names!
         * @return a constant reference to the element attached to the key
         */
        [[nodiscard]] constexpr const T& operator[](std::string_view key) const {
            return table[static_cast<size_t>(enum_from_string<E>(key))];
        }

        /**
         * Gets the value that matches the key
         * @param key the key to use; make sure it matches the enum names!
         * @return a reference to the element attached to the key
         */
        [[nodiscard]] constexpr T& at(std::string_view key) {
            std::expected<E, const char*> probably_has_value = enum_from_string<E>(key);
            assert(probably_has_value.has_value() && "Tried to access a Loam Hashtable value with an invalid key; summoning Tide Mice into the program!");
            return table[static_cast<size_t>(probably_has_value.value())];
        }

        /**
         * Gets the value that matches the key
         * @param key the key to use; make sure it matches the enum names!
         * @return a constant reference to the element attached to the key
         */
        [[nodiscard]] constexpr const T& at(std::string_view key) const {
            std::expected<E, const char*> probably_has_value = enum_from_string<E>(key);
            assert(probably_has_value.has_value() && "Tried to access a Loam Hashtable value with an invalid key; summoning Tide Mice into the program!");
            return table[static_cast<size_t>(probably_has_value.value())];
        }






        //aliases for STL compatibility; ignore these otherwise
        using value_type = T;
        using size_type = std::size_t;
        using difference_type = std::ptrdiff_t;
        using reference = T&;
        using const_reference = const T&;
        using pointer = T*;
        using const_pointer = const T*;
        using iterator = T*;
        using const_iterator = const T*;
    private:
        std::array<T, enum_member_count<E>()> table = {};
    };
}