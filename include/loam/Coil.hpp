#pragma once

#include <cstddef>
#include <compare>
#include <new>

namespace loam {
    template <typename T>
    class coil_ptr;
    /**
     * Provides utilities to manage memory similarly to the stack. The idea is to bridge the performance gap between the heap and stack
     * @author luciferoussky72
     * @note be sure to explicitly call destructors if memory is allocated to store objects!
     * @note
     * Q: Why is it a coil?
     * A: It's more interesting of a name than "Arena" and gets across how this class differs from a traditional arena
     */
    class Coil {
    public:
        /**
         * Constructs a memory coil object
         * @param capacity the capacity of the coil (in bytes)
         * @note the capacity is rounded to the next highest multiple of 8
         */
        Coil(size_t capacity);

        /**
         * Frees the coil object's data
         * @note this destructor feels too simple
         */
        ~Coil();

        /**
         * Copy constructor deleted because it doesn't make sense to copy a Coil
         */
        Coil(const Coil&) = delete;
        /**
         * Copying via the = operator is deleted because it doesn't make sense to copy a Coil
         */
        Coil& operator=(const Coil&) = delete;
        /**
         * Moving is deleted because it would invalidate any coil_ptr objects from a Coil
         */
        Coil(Coil&&) = delete;
        /**
         * Move assignment is deleted because it would invalidate any coil_ptr objects from a Coil
         */
        Coil& operator=(Coil&&) = delete;

        /**
         * Allocates memory and returns a typed pointer to it
         * @param bytes the amount of bytes to allocate
         * @throws std::bad_alloc if your allocation would overrun the coil's buffer
         * @param alignment the byte count will be rounded to the next highest multiple of this; defaults to 8
         * @return a pointer to start of the allocated block of memory
         */
        template <typename T>
        [[nodiscard]] T* alloc(size_t bytes, size_t alignment) {
            static_assert(std::is_trivially_destructible_v<T>);
            bytes = (bytes + alignment - 1) & ~(alignment - 1);

            if (current_point + bytes > capacity) {
                throw std::bad_alloc();
            }

            T* tmp = static_cast<T*>(data + current_point);
            current_point += bytes;
            size_of_last_alloc = bytes;
            return tmp;
        }

        /**
         * Undoes and **invalidates** the last call to alloc or safe_alloc.
         * @note be sure to explicitly call destructors if memory is allocated to store objects!
         * @note this only works for the last allocation. any more calls will do nothing
         */
        void rewind();

        /**
         * Sets the current point of the coil to 0, invalidating all memory allocated with it
         * @note using memory after freeing it this way probably won't cause a crash, but is very much UB
         * only call this method when all pointers to this object's data aren't needed anymore
         * @note be sure to explicitly call destructors if memory is allocated to store objects!
         */
        void unwind();

        /**
         * Allocates memory
         * @param bytes the amount of bytes to allocate
         * @throws std::bad_alloc if your allocation would overrun the buffer
         * @param alignment the byte count will be rounded to the next highest multiple of this
         * @return a coil_ptr object that functions similarly to std::weak_ptr
         * @note be sure to explicitly call destructors if memory is allocated to store objects!
         */
        template <typename T>
        [[nodiscard]] coil_ptr<T> safe_alloc(size_t bytes, size_t alignment = 8) {
            static_assert(std::is_trivially_destructible_v<T>);
            return coil_ptr<T>(this->alloc<T>(bytes, alignment), *this);
        }

        /**
         * A utility function, mostly used internally by coil_ptr
         * @return the number of times the coil has been rewound
         */
        [[nodiscard]] size_t get_num_rewinds() const {
            return num_rewinds;
        }
    private:
        size_t capacity;
        char* data;

        size_t size_of_last_alloc = 0;
        size_t current_point = 0;

        size_t num_rewinds = 0;
    };

    /**
     * A special wrapper for memory allocated from coils
     * @note built similarly to std::weak_ptr, and shares a lot of the same functions
     */
    template <typename T>
    class coil_ptr {
    public:
        /**
         * Constructs a coil_ptr object
         * @param raw_ptr the raw pointer the object contains
         * @param parent the parent coil this object comes from
         */
        coil_ptr(T* raw_ptr, const Coil& parent)
        : parent(parent), raw_ptr(raw_ptr), num_rewinds_parent(parent.get_num_rewinds()) {}

        /**
         * Gets the pointer in a similar fashion to weak_ptr
         * @return the internal raw pointer if the parent coil hasn't been unwound OR rewound, nullptr otherwise
         * @note theoretically, it could be safe if the parent has been rewound, but that's unreliable to implement
         */
        [[nodiscard]] T* safe_get() {
            if (num_rewinds_parent != parent.get_num_rewinds()) {
                return nullptr;
            }
            return raw_ptr;
        }

        /**
         * Returns the internal raw pointer
         * @note memory-unsafe, obviously, as the raw pointer could be invalidated
         * @return the internal raw pointer
         */
        [[nodiscard]] T* get() {
            return raw_ptr;
        }

        /**
         * Sets the internal raw pointer to nullptr
         * @note mostly here to keep things familiar to smart pointer users
         */
        void reset() {
            raw_ptr = nullptr;
        }

        T& operator* () const {
            return *raw_ptr;
        }
        T* operator-> () const {
            return raw_ptr;
        }
        explicit operator bool () const {
            return static_cast<bool>(raw_ptr);
        }
        friend std::strong_ordering operator<=>(const coil_ptr& a, const coil_ptr& b) {
            return a.raw_ptr <=> b.raw_ptr;
        }
        friend bool operator==(const coil_ptr& a, const coil_ptr& b) {
            return a.raw_ptr == b.raw_ptr;
        }
    private:
        const Coil& parent;
        T* raw_ptr;

        size_t num_rewinds_parent;
    };
} // loam

