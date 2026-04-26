#pragma once

#include <cstddef>
#include <type_traits>
#include <cassert>
#include <compare>
#include <new>

namespace loam {
    template <typename T2>
    requires std::is_trivially_destructible_v<T2>
    class cache_ptr;

    /**
     * Manages a contiguous block of memory on the heap.
     * @author luciferoussky72
     * @note has some key differences from Coil, like being able to store only one type, being able to only grow or be cleared,
     * and having less overhead
     * @note references and pointers into Cache memory are *guaranteed* to stay valid *until the Cache is cleared*
     * @tparam T the type of variables that the Cache will store; must be trivially destructible
     */
    template <typename T>
    requires std::is_trivially_destructible_v<T>
    class Cache {
    public:
        /**
         * A companion class for safely storing references to Cache memory
         */
        template <typename T2>
        requires std::is_trivially_destructible_v<T2>
        friend class cache_ptr;

        /**
         * Constructs a Cache
         * @param size the size of the cache; constant after the object is created!
         */
        Cache(size_t size) : memory(new (std::nothrow) T[size]), size(size) {}

        /**
         * Checks that a Cache's memory was successfully allocated
         * @return true if the memory is not nullptr
         */
        [[nodiscard]] bool good() const {
            return memory != nullptr;
        }

        /**
         * Destroys a cache. Pretty simple because we just have to delete the memory
         */
        ~Cache() {
            delete[] memory;
        }

        Cache(const Cache&) = delete("Copying a Cache would cause strange heap corruptions; sending your program into The Void of No Return!");
        Cache& operator=(const Cache&) = delete("Copying a Cache via the = operator would cause strange heap corruptions; sending your program into The Void of No Return!");
        Cache(Cache&&) = delete("Moving a Cache would invalidate any references to it; sending your program to Fairy Country!");
        Cache& operator=(Cache&&) = delete("Moving a Cache with the = operator would invalidate any references to it; sending your program to Fairy Country!");

        /**
         * Pushes a new value to a Cache
         * @param value the value to push to the Cache
         */
        void push(const T& value) {
            assert(current_point < size && "Cache overrun! Allocate more memory if you don't want your program to enter The Void of No Return!");
            memory[current_point] = value;
            current_point++;
        }

        /**
         * Clears a Cache, which is a very fast operation considering we are only changing two variables
         */
        void clear() {
            current_point = 0;
            generation++;
        }

        /**
         * Gets a point in a Cache
         * @note unchecked, like operator[] overloads in the STL
         * @param n the point to get
         * @return a reference to the point in the cache
         */
        [[nodiscard]] T& operator[](size_t n) {
            return memory[n];
        }

        /**
         * Gets a point in a Cache
         * @note checked, like .at functions in the STL; use if you don't want to send your program to The Void of No Return!
         * @param n the point to get
         * @return a reference to the point in the cache
         */
        [[nodiscard]] T& at(size_t n) {
            assert(n < size && "Tried to poke an out-of-bounds Cache index, which would send the program to The Void of No Return!");
            return memory[n];
        }

        /**
         * Returns a cache_ptr to a point in the Cache
         * @param n the point to get
         * @return a cache_ptr to the nth slot
         */
        [[nodiscard]] cache_ptr<T> get_cache_ptr(size_t n) {
            return cache_ptr<T>(&(this->at(n)), generation);
        }

        /**
         * Function for iterators and for-each loops
         * @return the start of the Cache's memory
         */
        [[nodiscard]] T* begin() {
            return memory;
        }

        /**
         * Function for iterators and for-each loops
         * @return the start of the Cache's memory offset by however many elements have been allocated
         */
        [[nodiscard]] T* end() {
            return memory + current_point;
        }

        /**
         * @return the size of the Cache (clearly)
         */
        [[nodiscard]] size_t get_size() const {
            return size;
        }

        /**
         * @return the current point of the Cache, which is how many elements have been pushed to it
         */
        [[nodiscard]] size_t get_current_point() const {
            return current_point;
        }

        /**
         * @return the number of times the Cache has been cleared
         */
        [[nodiscard]] size_t get_generation() const {
            return generation;
        }
    private:
        T* memory;
        const size_t size;
        size_t current_point = 0;

        size_t generation = 0;
    };

    template <typename T2>
    requires std::is_trivially_destructible_v<T2>
    class cache_ptr {
    public:
        /**
         * Constructs a cache_ptr
         * @param raw_ptr the raw pointer to use
         * @param parent_generation the current generation of the parent
         */
        cache_ptr(T2* raw_ptr, const size_t& parent_generation)
        : raw_ptr(raw_ptr), parent_generation_reference(parent_generation), parent_generation_at_creation(parent_generation) {}
        
        /**
         * Gets the pointer in a similar fashion to weak_ptr
         * @return the internal raw pointer if the parent Cache hasn't been cleared, nullptr otherwise
         */
        [[nodiscard]] T2* safe_get() {
            if (parent_generation_at_creation != parent_generation_reference) {
                return nullptr;
            }
            return raw_ptr;
        }

        /**
         * Returns the internal raw pointer
         * @note memory-unsafe, obviously, as the raw pointer could be invalidated
         * @return the internal raw pointer
         */
        [[nodiscard]] T2* get() {
            return raw_ptr;
        }

        /**
         * Sets the internal raw pointer to nullptr
         * @note mostly here to keep things familiar to smart pointer users
         */
        void reset() {
            raw_ptr = nullptr;
        }

        /**
         * Unsafe, as this does not check if the pointer is still valid
         */
        T2& operator*() const {
            return *raw_ptr;
        }
        /**
         * Unsafe, as this does not check if the pointer is still valid
         */
        T2* operator->() const {
            return raw_ptr;
        }
        /**
         * Allows you to treat a cache_ptr like a bool in if statements
         */
        [[nodiscard]] explicit operator bool() const {
            return static_cast<bool>(raw_ptr);
        }
        /**
         * Compares the objects by their internal pointers' memory addresses
         */
        [[nodiscard]] friend std::strong_ordering operator<=>(const cache_ptr& a, const cache_ptr& b) {
            return a.raw_ptr <=> b.raw_ptr;
        }
        /**
         * Compares the objects by their internal pointers' memory addresses
         */
        [[nodiscard]] friend bool operator==(const cache_ptr& a, const cache_ptr& b) {
            return a.raw_ptr == b.raw_ptr;
        }
    private:
        T2* raw_ptr;

        const size_t& parent_generation_reference;
        const size_t parent_generation_at_creation;
    };
} // loam
