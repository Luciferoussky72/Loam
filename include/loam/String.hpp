#pragma once

#include <type_traits>
#include <cstddef>
#include <string>
#include <algorithm>
#include <cassert>
#include <compare>
#include <format>
#include <SDL3/SDL_log.h>

namespace loam {
    /**
     * A stack-allocated, fixed-size string type so you can get (mostly) safe string abstraction without the slowness of the heap
     * @author luciferoussky72
     * @tparam CAPACITY the max number of characters the string can store; defaults to 255
     */
    template <size_t CAPACITY = 255>
    class String {
    public:
        /**
         * Constructs a String based on a string_view
         * @note a string_view captures string literals, std::strings, etc
         * @param view the view to use
         */
        String(std::string_view view) {
            if (view.length() > CAPACITY) {
                SDL_Log("Tried to initialize a Loam String with a string view longer than its capacity! (The characters were truncated instead of sending your program to The Void of No Return!");
            }
            current_length = std::min(view.length(), CAPACITY);
            std::copy(view.cbegin(), view.cbegin() + current_length, buffer);
            buffer[current_length] = '\0';
        }
        /**
         * Copy constructor
         */
        String(const String& other) : String(std::string_view(other)) {}
        /**
         * Copy assignment from other Strings
         * @return a reference to the object to enable chaining
         */
        String& operator=(const String& other) {
            return assign(other);
        }
        /**
         * Copy assignment from string_views
         * @return a reference to the object to enable chaining
         */
        String& operator=(std::string_view view) {
            return assign(view);
        }

        /**
         * Checks that the string is properly null-terminated
         * @return true if the string is null-terminated, false otherwise
         */
        [[nodiscard]] bool sanity_check() const {
            return buffer[current_length] == '\0';
        }

        /**
         * Assigns the string's characters to the view
         * @return a reference to the object to enable chaining
         */
        String& assign(std::string_view view) {
            current_length = std::min(view.length(), CAPACITY);
            std::copy(view.cbegin(), view.cbegin() + current_length, buffer);
            buffer[current_length] = '\0';
            return *this;
        }

        String(String&&) = default;
        String& operator=(String&&) = default;

        /**
         * @return the length in characters of the actual string data in the string
         */
        size_t length() const {
            return current_length;
        }
        /**
         * @return the size in characters of the actual string data in the string
         */
        size_t size() const {
            return length();
        }
        /**
         * @return the capacity of the string, which is the maximum number of characters it would be able to hold
         */
        size_t capacity() const {
            return CAPACITY;
        }

        /**
         * @return true if the string contains no characters
         */
        bool empty() const {
            return current_length == 0;
        }

        /**
         * "Clears" the string
         * @note this doesn't actually overwrite the string data, it just sets the length to 0 and the first character to a null-terminator so
         * C APIs think that it's an empty string
         */
        void clear() {
            current_length = 0;
            buffer[0] = '\0';
        }

        /**
         * Standard C API compatibility function
         * @return the string's buffer as a const char*
         */
        const char* c_str() const {
            return buffer;
        }

        /**
         * Brackets operator overload so it feels just like a traditional char array
         * @param n the character to get
         * @warning this is unchecked, like operator[] overloads in the STL
         * @return a reference to the nth character
         */
        char& operator[](size_t n) {
            return buffer[n];
        }
        /**
         * const brackets operator overload so it feels just like a traditional char array
         * @param n the character to get
         * @warning this is unchecked, like operator[] overloads in the STL
         * @return a constant reference the nth character
         */
        const char& operator[](size_t n) const {
            return buffer[n];
        }

        /**
         * .at function for checked access
         * @param n the character to get
         * @return a reference the nth character
         */
        char& at(size_t n) {
            assert(n < current_length && "Tried to poke outside of a Loam String's buffer!");
            return buffer[n];
        }
        /**
         * const .at function for checked access
         * @param n the character to get
         * @return a constant reference the nth character
         */
        const char& at(size_t n) const {
            assert(n < current_length && "Tried to read outside of a Loam String's buffer!");
            return buffer[n];
        }

        /**
         * @return a reference to the first character
         */
        char& front() {
            return buffer[0];
        }
        /**
         * @return a constant reference to the first character
         */
        const char& front() const {
            return buffer[0];
        }

        /**
         * @return a reference to the last character
         */
        char& back() {
            return buffer[current_length - 1];
        }
        /**
         * @return a constant reference to the last character
         */
        const char& back() const {
            return buffer[current_length - 1];
        }

        /**
         * @return a mutable pointer to the buffer's data
         * @warning use with extreme caution as this pointer can easily let you corrupt the object
         */
        char* data() {
            return buffer;
        }

        /**
         * Send-to-stream operator overload
         * @return a reference to the stream to enable chaining
         */
        friend std::ostream& operator<<(std::ostream& os, const String& s) {
            return os << std::string_view(s);
        }

        /**
         * Appends a string to a Loam String
         * @param view the string to append
         * @return a reference to the object to enable chaining
         */
        String& append(std::string_view view) {
            if (view.length() + current_length > CAPACITY) {
                SDL_Log("Tried to concatenate a string that was too long into a Loam String! (the concatenation was truncated instead of sending your program to The Void of No Return!)");
            }
            auto begin = view.cbegin();
            auto end = view.cend();
            while (current_length < CAPACITY and begin != end) {
                buffer[current_length] = *begin;
                ++current_length;
                ++begin;
            }
            return *this;
        }

        /**
         * Appends a character to a Loam String
         * @param c the character to append
         * @return a reference to the object to enable chaining
         */
        String& append(char c) {
            if (current_length + 1 > CAPACITY) {
                SDL_Log("Tried to append too many characters into a Loam String!(the append was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }
            buffer[current_length] = c;
            ++current_length;
            return *this;
        }

        /**
         * Unsafe alternative to loam::String::append that doesn't check against the buffer's capacity
         * @warning only use this if you've proven or know that it's safe to call this
         * @param view the string to append
         * @return a reference to the object to enable chaining
         */
        String& unsafe_append(std::string_view view) {
            auto begin = view.cbegin();
            auto end = view.cend();
            std::copy(begin, end, buffer + current_length);
            current_length += view.length();
            return *this;
        }

        /**
         * Prepends a string to a Loam String
         * @param view the string to prepend
         * @return a reference to the object to enable chaining
         */
        String& prepend(std::string_view view) {
            if (view.length() + current_length > CAPACITY) {
                SDL_Log("Tried to prepend a string that was too long into a Loam String! (the prepend was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }
            unsafe_shift_characters_forward(view.length());
            for (size_t i = 0; i < view.length(); ++i) {
                buffer[i] = view[i];
            }
            return *this;
        }

        /**
         * Prepends a character to a Loam String
         * @param c the character to prepend
         * @return a reference to the object to enable chaining
         */
        String& prepend(char c) {
            if (current_length + 1 > CAPACITY) {
                SDL_Log("Tried to prepend too many characters into a Loam String!(the prepend was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }
            unsafe_shift_characters_forward(1);
            buffer[0] = c;
            return *this;
        }

        /**
         * Unsafe alternative to loam::String::prepend
         * @warning only use this if you've proven or know that it's safe to call this
         * @param view the string to prepend
         * @return a reference to the object to enable chaining
         */
        String& unsafe_prepend(std::string_view view) {
            unsafe_shift_characters_forward(view.length());
            auto begin = view.cbegin();
            auto end = view.cend();
            std::copy(begin, end, buffer);
            return *this;
        }

        /**
         * Shifts the string's characters forward
         * @param index the index to shift from
         * @param shifts the number of characters to shift forward
         * @return a reference to the object to enable chaining
         */
        String& shift_characters_forward(size_t index, size_t shifts) {
            if (current_length + shifts > CAPACITY) {
                SDL_Log("Tried to shift characters too far forwards in a Loam String! (the shift was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }
            return unsafe_shift_characters_forward(index, shifts);
        }

        /**
         * Unsafe alternative to loam::String::shift_characters_forward
         * @warning only use this if you've proven or know that it's safe to call this
         * @param index the index to shift from
         * @param shifts the number of characters to shift forward
         * @return a reference to the object to enable chaining
         */
        String& unsafe_shift_characters_forward(size_t index, size_t shifts) {
            std::move_backward(buffer + index, buffer + current_length, buffer + current_length + shifts);
            current_length += shifts;
            buffer[current_length] = '\0';
            return *this;
        }

        /**
         * Inserts characters at a specific point in the string
         * @param index where to insert
         * @param c the character to insert
         * @param count the number of characters to insert; defaults to 1
         * @return a reference to the object to enable chaining
         */
        String& insert(size_t index, char c, size_t count = 1) {
            if (count + current_length > CAPACITY) {
                SDL_Log("Tried to insert too many characters into a Loam String! (the insertion was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }
            unsafe_shift_characters_forward(index, count);
            for (size_t i = 0; i < count; ++i) {
                buffer[index + i] = c;
            }
            return *this;
        }

        /**
         * Inserts another string at a specific point in the string
         * @param index where to insert
         * @param view the string to insert
         * @return a reference to the object to enable chaining
         */
        String& insert(size_t index, std::string_view view) {
            if (view.length() + current_length > CAPACITY) {
                SDL_Log("Tried to insert too long of a string into a Loam String! (the insertion was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }
            unsafe_shift_characters_forward(view.length());
            for (size_t i = 0; i < view.length(); ++i) {
                buffer[index + i] = view[i];
            }
            return *this;
        }

        /**
         * Inserts part of a string at a specific point in the string
         * @param index where to insert
         * @param view the string to insert
         * @param count the number of characters from the string to insert
         * @return a reference to the object to enable chaining
         */
        String& insert(size_t index, std::string_view view, size_t count) {
            if (count + current_length > CAPACITY) {
                SDL_Log("Tried to insert too long of a string into a Loam String! (the insertion was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }
            unsafe_shift_characters_forward(count);
            for (size_t i = 0; i < count; ++i) {
                buffer[index + i] = view[i];
            }
            return *this;
        }

        /**
         * Inserts part of a string at a specific point in the string
         * @param index where to insert
         * @param view the string to insert
         * @param view_index the index to start copying from in the string
         * @param count the number of characters from the string to insert
         * @return a reference to the object to enable chaining
         */
        String& insert(size_t index, std::string_view view, size_t view_index, size_t count) {
            if (count + current_length > CAPACITY) {
                SDL_Log("Tried to insert too long of a string-slice into a Loam String! (the insertion was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }
            std::string_view tmp = view.substr(view_index, count);
            unsafe_shift_characters_forward(tmp.length());
            for (size_t i = 0; i < tmp.length(); ++i) {
                buffer[index + i] = tmp[i];
            }
            return *this;
        }

        /**
         * Replaces part of the string
         * @param index where to start in the destination string
         * @param count how many characters to copy over
         * @param view the string to copy from
         * @return a reference to the object to enable chaining
         */
        String& replace(size_t index, size_t count, std::string_view view) {
            char* begin_index = buffer + index;
            char* end_index = buffer + std::min(index + count, current_length);

            if (end_index > buffer + CAPACITY) {
                SDL_Log("Tried to write too long of a string into a Loam String! (the write was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }

            size_t i = 0;
            while (i < view.length() and begin_index != end_index) {
                *begin_index = view[i];
                ++begin_index;
                ++i;
            }
            return *this;
        }

        /**
         * Standard operator+ concatenation
         */
        friend String operator+(const String& string, std::string_view view) {
            String tmp = string;
            return tmp.append(view);
        }
        /**
         * Standard operator+ concatenation
         */
        friend String operator+(const String& string, char c) {
            String tmp = string;
            return tmp.append(c);
        }
        /**
         * Standard operator+ concatenation
         */
        friend String operator+(std::string_view view, const String& string) {
            String tmp = string;
            return tmp.prepend(view);
        }
        /**
         * Standard operator+ concatenation
         */
        friend String operator+(char c, const String& string) {
            String tmp = string;
            return tmp.prepend(c);
        }
        /**
         * Standard operator+= concatenation
         */
        String& operator+=(std::string_view view) {
            return this->append(view);
        }

        /**
         * Compares the strings by converting them to string_views and then comparing those
         */
        friend std::strong_ordering operator<=>(const String& a, const String& b) {
            return std::string_view(a) <=> std::string_view(b);
        }

        /**
         * Implicit conversion to std::string
         */
        operator std::string() const {
            return std::string(std::string_view(*this));
        }
        /**
         * Implicit conversion to std::string_view
         */
        operator std::string_view() const {
            return std::string_view(buffer, current_length);
        }

    private:
        char buffer[CAPACITY + 1] = {};
        size_t current_length;
    };
}


/**
 * std::formatter specialization so you can use Loam Strings with std::print!
 * @note inheriting from std::string_view is the ultimate cheat code for this lol
 */
template <size_t CAPACITY>
struct std::formatter<loam::String<CAPACITY>> : std::formatter<std::string_view> {
    auto format(const loam::String<CAPACITY>& string, std::format_context& context) const {
        return std::formatter<std::string_view>::format(std::string_view(string), context);
    }
};
