#pragma once

#include <type_traits>
#include <cstddef>
#include <string>
#include <algorithm>
#include <cassert>
#include <compare>
#include <SDL3/SDL_log.h>

namespace loam {
    template <size_t CAPACITY = 256>
    class String {
    public:
        String(std::string_view view) {
            if (view.length() > CAPACITY) {

            }
            length_ = std::min(view.length(), CAPACITY);
            std::copy(view.cbegin(), view.cbegin() + length_, buffer);
            buffer[length_] = '\0';
        }
        String(const String& other) : String(std::string_view(other)) {}
        String& operator=(const String& other) {
            return assign(other);
        }
        String& operator=(std::string_view view) {
            return assign(view);
        }
        String& assign(std::string_view view) {
            length_ = std::min(view.length(), CAPACITY);
            std::copy(view.cbegin(), view.cbegin() + length_, buffer);
            buffer[length_] = '\0';
            return *this;
        }
        String(String&&) = delete;
        String& operator=(String&&) = delete;

        size_t length() const {
            return length_;
        }
        size_t size() const {
            return length();
        }

        bool empty() const {
            return length_ != 0;
        }

        size_t capacity() const {
            return CAPACITY;
        }

        void clear() {
            length_ = 0;
        }



        const char* c_str() const {
            return buffer;
        }

        char& operator[](size_t n) {
            return buffer[n];
        }
        const char& operator[](size_t n) const {
            return buffer[n];
        }

        char& at(size_t n) {
            assert(n < length_ && "Tried to poke outside of a Loam String's buffer!");
            return buffer[n];
        }
        const char& at(size_t n) const {
            assert(n < length_ && "Tried to read outside of a Loam String's buffer!");
            return buffer[n];
        }

        char& front() {
            return *buffer;
        }
        const char& front() const {
            return *buffer;
        }

        char& back() {
            return buffer[length_];
        }
        const char& back() const {
            return buffer[length_];
        }

        char* data() {
            return buffer;
        }

        friend std::ostream& operator<<(std::ostream& os, const String& s) {
            return os << std::string_view(s);
        }

        String& append(std::string_view view) {
            if (view.length() + length_ > CAPACITY) {
                SDL_Log("Tried to concatenate a string that was too long into a Loam String! (the concatenation was truncated instead of sending your program to The Void of No Return!)");
            }
            auto begin = view.cbegin();
            auto end = view.cend();
            while (length_ < CAPACITY and begin != end) {
                buffer[length_] = *begin;
                ++length_;
                ++begin;
            }
            return *this;
        }

        String& append(char c) {
            if (length_ + 1 > CAPACITY) {
                SDL_Log("Tried to append too many characters into a Loam String!(the append was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }
            buffer[length_] = c;
            ++length_;
            return *this;
        }

        String& unsafe_append(std::string_view view) {
            auto begin = view.cbegin();
            auto end = view.cend();
            std::copy(begin, end, buffer + length_);
            length_ += view.length();
            return *this;
        }

        String& prepend(std::string_view view) {
            if (view.length() + length_ > CAPACITY) {
                SDL_Log("Tried to prepend a string that was too long into a Loam String! (the prepend was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }
            unsafe_shift_characters_forward(view.length());
            for (size_t i = 0; i < view.length(); ++i) {
                buffer[i] = view[i];
            }
            return *this;
        }

        String& prepend(char c) {
            if (length_ + 1 > CAPACITY) {
                SDL_Log("Tried to prepend too many characters into a Loam String!(the prepend was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }
            unsafe_shift_characters_forward(1);
            buffer[0] = c;
            return *this;
        }

        String& unsafe_prepend(std::string_view view) {
            unsafe_shift_characters_forward(view.length());
            auto begin = view.cbegin();
            auto end = view.cend();
            std::copy(begin, end, buffer);
            return *this;
        }


        String& shift_characters_forward(size_t index, size_t shifts) {
            if (length_ + shifts > CAPACITY) {
                SDL_Log("Tried to shift characters too far forwards in a Loam String! (the shift was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }
            return unsafe_shift_characters_forward(index, shifts);
        }

        String& unsafe_shift_characters_forward(size_t index, size_t shifts) {
            for (size_t i = 0; i < shifts; ++i) {
                ++length_;
                for (size_t j = length_; j > index; --j) {
                    buffer[j] = buffer[j-1];
                }
            }
            return *this;
        }

        String& insert(size_t index, char c, size_t count = 1) {
            if (count + length_ > CAPACITY) {
                SDL_Log("Tried to insert too many characters into a Loam String! (the insertion was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }
            unsafe_shift_characters_forward(index, count);
            for (size_t i = 0; i < count; ++i) {
                buffer[index + i] = c;
            }
            return *this;
        }

        String& insert(size_t index, std::string_view view) {
            if (view.length() + length_ > CAPACITY) {
                SDL_Log("Tried to insert too long of a string into a Loam String! (the insertion was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }
            unsafe_shift_characters_forward(view.length());
            for (size_t i = 0; i < view.length(); ++i) {
                buffer[index + i] = view[i];
            }
            return *this;
        }

        String& insert(size_t index, std::string_view view, size_t count) {
            if (count + length_ > CAPACITY) {
                SDL_Log("Tried to insert too long of a string into a Loam String! (the insertion was a no-op instead of sending your program to The Void of No Return!)");
                return *this;
            }
            unsafe_shift_characters_forward(count);
            for (size_t i = 0; i < count; ++i) {
                buffer[index + i] = view[i];
            }
            return *this;
        }

        String& insert(size_t index, std::string_view view, size_t view_index, size_t count) {
            if (count + length_ > CAPACITY) {
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

        String& replace(size_t index, size_t count, std::string_view view) {
            char* begin_index = buffer + index;
            char* end_index = buffer + std::min(index + count, length_);

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





        friend String operator+(const String& string, std::string_view view) {
            String tmp = string;

            return tmp.append(view);
        }
        friend String operator+(const String& string, char c) {
            String tmp = string;
            return tmp.append(c);
        }
        friend String operator+(std::string_view view, const String& string) {
            String tmp = string;
            return tmp.prepend(view);
        }
        friend String operator+(char c, const String& string) {
            String tmp = string;
            return tmp.prepend(c);
        }
        String& operator+=(std::string_view view) {
            return this->append(view);
        }

        friend std::strong_ordering operator<=>(const String& a, const String& b) {
            return std::string_view(a) <=> std::string_view(b);
        }

        operator std::string() const {
            return std::string(std::string_view(*this));
        }
        operator std::string_view() const {
            return std::string_view(buffer, length_);
        }

    private:
        char buffer[CAPACITY] = {};
        size_t length_;
    };
}
