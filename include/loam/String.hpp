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

        String& unsafe_append(std::string_view view) {
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



        friend String operator+(const String& string, std::string_view view) {
            string.append(view);
            return string;
        }
        //FIX!!
        friend String operator+(std::string_view view, String string) {
            return string.append(view);
        }
        String& operator+=(std::string_view view) {
            return this->append(view);
        }

        friend std::strong_ordering operator<=>(const String& a, const String& b) {
            return std::string_view(a) <=> std::string_view(b);
        }


        operator std::string_view() const {
            return std::string_view(buffer, length_);
        }

    private:
        char buffer[CAPACITY] = {};
        size_t length_;
    };
}
