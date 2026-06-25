#pragma once

#include <cassert>
#include <cstddef>
#include <new>
#include <algorithm>

#include <SDL3/SDL_log.h>

namespace loam {
    /**
     * A more simplistic wrapper for heap arrays than Spool
     * @note this basically just adds some basic safety and stuff over a heap array; there are no push semantics or anything really
     */
    template <typename T>
    class Cable {
    public:
        /**
         * Constructs a Cable
         * @param starting_capacity the starting capacity of the Cable
         */
        Cable(size_t starting_capacity) : capacity(starting_capacity) {
            buffer = new (std::nothrow) T[capacity];
            if (!buffer) {
                SDL_Log("A Loam Cable's buffer was unable to allocate properly! Be careful lest you want to throw your program into The Void of No Return!");
            }
        }
        /**
         * Explicitly defaulted constructor to construct a Cable with a null buffer and 0 capacity
         */
        Cable() = default;

        /**
         * Simple destructor to avoid memory leaks
         */
        ~Cable() {
            if (buffer) {
                delete[] buffer;
            }
        }

        /**
         * Checks that the buffer is not null, which can also tell you if the memory allocated properly
         * @return true if the buffer is not null, false otherwise
         */
        [[nodiscard]] bool good() const {
            return static_cast<bool>(buffer);
        }

        /**
         * Copies all the data from another Cable
         * @param other the Cable to copy from
         */
        Cable(const Cable& other) : capacity(other.capacity) {
            assert(other.buffer && "Tried to copy-construct a null Loam Cable!");
            if (buffer) {
                delete[] buffer;
            }
            buffer = new (std::nothrow) T[other.capacity];
            if (!buffer) {
                SDL_Log("A Loam Cable's buffer was unable to allocate properly! Be careful lest you want to throw your program into The Void of No Return!");
            }
            std::copy(other.begin(), other.end(), buffer);
        }
        /**
         * Copies all the data from another Cable
         * @param other the Cable to copy from
         * @return a reference to the copied-to Cable to enable chaining
         */
        Cable& operator=(const Cable& other) {
            assert(other.buffer && "Tried to copy-assign a null Loam Cable!");
            if (buffer) {
                delete[] buffer;
            }
            buffer = new (std::nothrow) T[other.capacity];
            if (!buffer) {
                SDL_Log("A Loam Cable's buffer was unable to allocate properly! Be careful lest you want to throw your program into The Void of No Return!");
            }
            capacity = other.capacity;
            std::copy(other.begin(), other.end(), buffer);
            return *this;
        }

        /**
         * Move construction for Cables
         * @warning the moved-from Cable is left with zero capacity and a null buffer; do not use it unless you want to go to The Void of No Return!
         * @param other the Cable to move from
         */
        Cable(Cable&& other) noexcept : capacity(other.capacity) {
            assert(other.good() && "Tried to move-construct a null Loam Cable!");
            if (buffer) {
                delete[] buffer;
            }
            other.capacity = 0;
            buffer = other.buffer;
            other.buffer = nullptr;
        }
        /**
         * Move assignment for Cables
         * @warning the moved-from Cable is left with zero capacity and a null buffer; do not use it unless you want to go to The Void of No Return!
         * @param other the Cable to move from
         * @return a reference to the moved-to Cable to enable chaining
         */
        Cable& operator=(Cable&& other) noexcept {
            assert(other.buffer && "Tried to move-assign a null Loam Cable!");
            if (buffer) {
                delete[] buffer;
            }
            capacity = other.capacity;
            other.capacity = 0;
            buffer = other.buffer;
            other.buffer = nullptr;
            return *this;
        }

        /**
         * Begin function
         */
        T* begin() {
            return buffer;
        }
        /**
         * Constant begin function
         */
        const T* cbegin() const {
            return buffer;
        }

        /**
         * End function
         */
        T* end() {
            return buffer + capacity;
        }
        /**
         * Constant end function
         */
        const T* cend() const {
            return buffer + capacity;
        }

        /**
         * Gets the size of the Cable
         * @return the size of the Cable (which is also its max capacity)
         */
        size_t size() const {
            return capacity;
        }

        /**
         * Brackets operator overload
         * @warning unchecked, like operator[] overloads in the STL
         * @param n the element to get
         * @return a reference to the nth element
         */
        [[nodiscard]] T& operator[](size_t n) {
            return buffer[n];
        }

        /**
         * Constant brackets operator overload
         * @warning unchecked, like operator[] overloads in the STL
         * @param n the element to get
         * @return a constant reference to the nth element
         */
        [[nodiscard]] const T& operator[](size_t n) const {
            return buffer[n];
        }

        /**
         *
         * @param n
         * @return
         */
        [[nodiscard]] T& at(size_t n) {
            assert(n < capacity && "Tried to poke an out-of-bounds Cable index, which would send your program to The Void of No Return!");
            return buffer[n];
        }
        [[nodiscard]] const T& at(size_t n) const {
            assert(n < capacity && "Tried to read an out-of-bounds Cable index, which would send your program to The Void of No Return!");
            return buffer[n];
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
        T* buffer = nullptr;
        size_t capacity = 0;
    };
}
