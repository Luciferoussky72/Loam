#pragma once

#include <cassert>
#include <cstddef>
#include <compare>
#include <new>
#include <initializer_list>
#include <memory>
#include <algorithm>
#include <span>
#include <SDL3/SDL_log.h>


namespace loam {

    /**
     * Manages a contiguous block of memory on the heap.
     * @author luciferoussky72
     * @note has some key differences from std::vector, like being fixed-size after creation, being able to only grow or be cleared,
     * and having less overhead. This is kind of like having a Java array, but less of a pain the neck to use lol
     * @note references and pointers into Spool memory are *guaranteed* to stay valid *until the Spool is cleared or reassigned*
     * @tparam T the type of variables that the Spool will store
     */
    template <typename T>
    class Spool {
    public:
        /**
         * A companion class for safely storing references to Spool memory
         * @note while this does check that its reference is still valid, it does that under the assumption that its parent Spool
         * outlives it
         */
        class spool_ptr;

        /**
         * Constructs a Spool
         * @param capacity the capacity of the spool; constant after the object is created!
         */
        Spool(size_t capacity) : capacity(capacity) {
            memory = static_cast<T*>(operator new(sizeof(T) * capacity, std::align_val_t{alignof(T)}, std::nothrow));
        }

        /**
         * Constructs a spool based on an initializer list/array literal
         * @note the Spool's capacity will be the number of elements in the initializer list
         * @param list the initializer list to use
         */
        Spool(std::initializer_list<T> list) : capacity(list.size()) {
            memory = static_cast<T*>(operator new(capacity * sizeof(T), std::align_val_t{alignof(T)}, std::nothrow));
            std::copy(list.begin(), list.end(), memory);
        }


        Spool& operator=(std::initializer_list<T> list) {
            if (list.size() > capacity) {
                SDL_Log("A Spool was assigned to an initializer list that was too big! (program crashed because that's better than going to The Void of No Return!)");
                std::abort();
            }
            std::copy(list.begin(), list.end(), memory);
            current_point = list.size();
            return *this;
        }

        /**
         * Constructs a Spool based on an initializer list
         * @param list the initializer list to use; the spool takes on the size of this list
         */
        Spool(std::initializer_list<T> list) : capacity(list.size()), current_point(capacity) {
            memory = static_cast<T*>(operator new(sizeof(T) * capacity, std::nothrow));
            std::uninitialized_copy(list.cbegin(), list.cend(), memory);
        }

        /**
         * Constructs a Spool based on an initializer list + size
         * @param list the list to use; the list will be truncated if it's longer than the capacity
         * @param capacity the capacity of the spool; constant after the object is created!
         */
        Spool(std::initializer_list<T> list, size_t capacity) : capacity(capacity) {
            memory = static_cast<T*>(operator new(sizeof(T) * capacity, std::nothrow));
            current_point = std::min(list.size(), capacity);
            if (list.size() > capacity) {
                SDL_Log("Initialized a Loam Spool with an initializer list larger than its size! (the list was truncated instead of sending your program to The Void of No Return!");
            }
            std::uninitialized_copy(list.cbegin(), list.cbegin() + current_point, memory);
            ++generation;
        }

        /**
         * Checks that a Spool's memory was successfully allocated
         * @return true if the memory is not nullptr
         */
        [[nodiscard]] bool good() const {
            return memory;
        }

        /**
         * Destroys a spool. Fast for trivial types, but walks the Spool and calls destructors for nontrivial types
         */
        ~Spool() {
            if constexpr (!std::is_trivially_destructible_v<T>) {
                for (size_t i = 0; i < current_point; ++i) {
                    memory[i].~T();
                }
            }
            operator delete(memory);
        }

        Spool(const Spool&) = delete("Copying a Spool would cause strange heap corruptions; sending your program into The Void of No Return!");
        Spool& operator=(const Spool&) = delete("Copying a Spool via the = operator would cause strange heap corruptions; sending your program into The Void of No Return!");
        Spool(Spool&&) = delete("Moving a Spool would invalidate any references to it; sending your program to Fairy Country!");
        Spool& operator=(Spool&&) = delete("Moving a Spool with the = operator would invalidate any references to it; sending your program to Fairy Country!");

        /**
         * Pushes a new value to a Spool
         * @param value the value to push to the Spool
         */
        void push(const T& value) {
            assert(current_point < capacity && "Spool overrun! Allocate a larger spool if you don't want your program to enter The Void of No Return!");
            new (memory + current_point) T(value);
            ++current_point;
        }

        /**
         * Move-pushes a new value to a Spool
         * @param value the value to push to the Spool
         */
        void push(T&& value) {
            assert(current_point < capacity && "Spool overrun! Allocate a larger spool if you don't want your program to enter The Void of No Return!");
            new (memory + current_point) T(std::move(value));
            ++current_point;
        }

        /**
         * Emplaces a new value into a Spool
         * @param args the arguments you want to pass into the object's constructor
         * @note works like std::vector's emplace_back
         */
        template <typename... Args>
        void emplace(Args&&... args) {
            assert(current_point < capacity && "Spool overrun! Allocate a larger spool if you don't want your program to enter The Void of No Return!");
            new (memory + current_point) T(std::forward<Args>(args)...);
            ++current_point;
        }

        /**
         * Clears a spool, which is a very fast operation for trivial types, considering this is only changing two variables,
         * but if the spool's type is not trivially destructible, the spool walks itself and call destructors
         */
        void clear() {
            if constexpr (!std::is_trivially_destructible_v<T>) {
                for (size_t i = 0; i < current_point; ++i) {
                    memory[i].~T();
                }
            }
            current_point = 0;
            ++generation;
        }

        /**
         * Gets a point in a Spool
         * @note unchecked, like operator[] overloads in the STL;
         * poking beyond the number of elements that you've pushed to the Spool is undefined behaviour
         * @param n the point to get
         * @return a reference to the point in the spool
         */
        [[nodiscard]] T& operator[](size_t n) {
            return memory[n];
        }
        /**
         * Gets a point in a Spool
         * @note unchecked, like operator[] overloads in the STL;
         * poking beyond the number of elements that you've pushed to the Spool is undefined behaviour
         * @param n the point to get
         * @return a constant reference to the point in the spool
         */
        [[nodiscard]] const T& operator[](size_t n) const {
            return memory[n];
        }


        /**
         * Gets a point in a Spool
         * @note checked against the number of elements you've pushed to the Spool, like .at functions in the STL;
         * use if you don't want to send your program to The Void of No Return!
         * @param n the point to get
         * @return a reference to the point in the spool
         */
        [[nodiscard]] T& at(size_t n) {
            assert(n < current_point && "Tried to poke an out-of-bounds Spool index, which would send your program to The Void of No Return!");
            return memory[n];
        }

        /**
         * Gets a point in a Spool
         * @note checked against the number of elements you've pushed to the Spool, like .at functions in the STL;
         * use if you don't want to send your program to The Void of No Return!
         * @param n the point to get
         * @return a constant reference to the point in the spool
         */
        [[nodiscard]] const T& at(size_t n) const {
            assert(n < current_point && "Tried to read an out-of-bounds Spool index, which would send your program to The Void of No Return!");
            return memory[n];
        }


        /**
         * Returns a spool_ptr to a point in the Spool
         * @param n the point to get
         * @return a spool_ptr to the nth slot
         */
        [[nodiscard]] spool_ptr get_spool_ptr(size_t n) {
            return spool_ptr(&at(n), &generation);
        }

        /**
         * Function for iterators and for-each loops
         * @return the start of the Spool's memory
         */
        [[nodiscard]] T* begin() {
            return memory;
        }

        /**
         * Function for iterators and for-each loops
         * @return the start of the Spool's memory offset by however many elements have been allocated
         */
        [[nodiscard]] T* end() {
            return memory + current_point;
        }

        /**
         * @return the capacity of the Spool (clearly)
         */
        [[nodiscard]] size_t get_capacity() const {
            return capacity;
        }

        /**
         * @return the current point of the Spool, which is how many elements have been pushed to it
         */
        [[nodiscard]] size_t get_current_point() const {
            return current_point;
        }

        /**
         * @return the number of times the Spool has been cleared
         */
        [[nodiscard]] size_t get_generation() const {
            return generation;
        }

        class spool_ptr {
        public:
            /**
             * Constructs a spool_ptr
             * @param raw_ptr the raw pointer to use
             * @param parent_generation the current generation of the parent
             */
            spool_ptr(T* raw_ptr, size_t* parent_generation)
            : raw_ptr(raw_ptr), parent_generation_pointer(parent_generation), parent_generation_at_creation(*parent_generation) {}

            /**
             * Gets the pointer in a similar fashion to weak_ptr
             * @return the internal raw pointer if the parent Spool hasn't been cleared, nullptr otherwise
             */
            [[nodiscard]] T* safe_get() {
                if (parent_generation_at_creation != *parent_generation_pointer) {
                    return nullptr;
                }
                return raw_ptr;
            }

            /**
             * Returns the internal raw pointer
             * @note memory-unsafe, obviously, as the raw pointer could be invalidated
             * @return the internal raw pointer
             */
            [[nodiscard]] T* unsafe_get() {
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
            T& operator*() {
                return *raw_ptr;
            }
            /**
             * Unsafe, as this does not check if the pointer is still valid
             */
            T* operator->() {
                return raw_ptr;
            }
            /**
             * Allows you to treat a spool_ptr like a bool in if statements
             */
            [[nodiscard]] explicit operator bool() const {
                return static_cast<bool>(raw_ptr);
            }
            /**
             * Compares the objects by their internal pointers' memory addresses
             */
            [[nodiscard]] friend std::strong_ordering operator<=>(const spool_ptr& a, const spool_ptr& b) {
                return a.raw_ptr <=> b.raw_ptr;
            }
            /**
             * Compares the objects by their internal pointers' memory addresses
             */
            [[nodiscard]] friend bool operator==(const spool_ptr& a, const spool_ptr& b) {
                return a.raw_ptr == b.raw_ptr;
            }
        private:
            T* raw_ptr;
            const size_t* parent_generation_pointer;
            const size_t parent_generation_at_creation;
        };

        operator std::span<T>() {
            return std::span(memory, current_point);
        }
        operator std::span<const T>() const {
            return std::span(memory, current_point);
        }


        //these aliases are here for STL compatibility! You can ignore them otherwise
        using value_type      = T;
        using size_type       = std::size_t;
        using difference_type = std::ptrdiff_t;
        using reference       = T&;
        using const_reference = const T&;
        using pointer         = T*;
        using const_pointer   = const T*;
        using iterator        = T*;
        using const_iterator  = const T*;
    private:
        T* memory;
        const size_t capacity;
        size_t current_point = 0;

        size_t generation = 0;
    };
} // loam
