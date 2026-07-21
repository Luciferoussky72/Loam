#pragma once

#include <cassert>
#include <cstddef>
#include <compare>
#include <new>
#include <memory>
#include <SDL3/SDL_log.h>

namespace loam {
    /**
     * A special pointer class for safely managing Coil memory
     */
    template <typename T>
    class coil_ptr;

    /**
     * Provides utilities to manage memory similarly to the stack. The idea is to bridge the performance gap between the heap and stack
     * @author luciferoussky72
     * @note
     * Q: Why is it a coil?
     * A: It's more interesting of a name than "Arena" and gets across how this class differs from a traditional arena
     * @note this object cannot store objects with nontrivial destructors; use other allocators for non-POD types
     * @note this class's companion class is opt-in by default because it has overhead if you don't use it
     */
    template<bool enable_coil_ptr = false, size_t coil_ptr_slot_count = 0>
    class Coil {
    public:
        template <typename T>
        friend class coil_ptr;

        /**
         * Constructs a Coil
         * @param capacity the capacity of the coil (in bytes)
         * @note the capacity is rounded to the next highest multiple of 8 to keep alignment
         */
        Coil(size_t capacity) :
            capacity((capacity + 7) & ~static_cast<size_t>(7)) {
            data = static_cast<char*>(operator new(this->capacity, std::nothrow));
            if (!data) {
                SDL_Log("Failed to allocate a Coil allocator's buffer!");
            }
        }

        /**
         * Frees the coil object's data
         * @note this destructor feels too simple
         */
        ~Coil() {
            operator delete(data);
        }

        /**
         * Checks that a Coil's memory was successfully allocated
         * @return true if the memory is not nullptr
         */
        [[nodiscard]] bool good() const {
            return data;
        }


        Coil(const Coil&) = delete("Copy constructor deleted because it doesn't make sense to copy a Coil");
        Coil& operator=(const Coil&) = delete("Copying via the = operator is deleted because it doesn't make sense to copy a Coil");
        Coil(Coil&&) = delete("Moving is deleted because it would invalidate any references  to a Coil's data");
        Coil& operator=(Coil&&) = delete("Move assignment is deleted because it would invalidate any references  to a Coil's data");

        /**
         * Allocates memory and returns a typed pointer to it
         * @param bytes the amount of bytes to allocate
         * @tparam T the type to allocate; must be a trivially destructible type
         * @param alignment the byte count will be rounded to the next highest multiple of this; defaults to alignof(T)
         * @return a pointer to start of the allocated block of memory
         */
        template <typename T>
        requires std::is_trivially_destructible_v<T>
        [[nodiscard]] T* alloc(size_t bytes, size_t alignment = alignof(T)) {
            size_t space = capacity - current_point;

            void* aligned_ptr = data + current_point;
            bool state = std::align(alignment, bytes, aligned_ptr, space);
            if (!state) {
                assert(!"Coil memory overrun. Allocate more to not send your program to The Void of No Return! (may not actually happen)");
                return nullptr;
            }

            size_t bytes_used = capacity - current_point - space + bytes;
            assert(current_point + bytes_used <= capacity &&
                "Coil memory overrun. Allocate more to not send your program to The Void of No Return! (may not actually happen)");

            current_point += bytes_used;
            size_of_last_alloc = bytes_used;
            if constexpr (enable_coil_ptr) {
                last_alloc_was_safe = false;
            }

            return static_cast<T*>(aligned_ptr);
        }

        /**
         * Undoes and **invalidates** the last call to alloc or safe_alloc.
         * @note this only works for the last allocation; any more calls will do nothing
         */
        void rewind() {
            if (size_of_last_alloc == 0) return;
            current_point -= size_of_last_alloc;
            size_of_last_alloc = 0;

            if constexpr (enable_coil_ptr) {
                if (last_alloc_was_safe and current_slot > 0) {
                    coil_ptr_slots[current_slot-1] = false;
                    last_alloc_was_safe = false;
                }
            }
        }

        /**
         * Sets the current point of the coil to 0, invalidating all memory allocated with it
         * @note using memory after freeing it this way is firmly undefined behaviour;
         * don't do it unless you want to send your program into The Void of No Return!
         */
        void unwind() {
            current_point = 0;
            size_of_last_alloc = 0;

            if constexpr (!enable_coil_ptr) return;

            num_unwinds++;
            for (size_t i = 0; i < current_slot; ++i) {
                coil_ptr_slots[i] = false;
            }
            current_slot = 0;
        }

        /**
         * Allocates memory using a coil_ptr instead of a raw pointer
         * @param bytes the amount of bytes to allocate
         * @param alignment the byte count will be rounded to the next highest multiple of this
         * @return a coil_ptr object that functions similarly to std::weak_ptr
         */
        template <typename T>
        requires std::is_trivially_destructible_v<T> and enable_coil_ptr
        [[nodiscard]] coil_ptr<T> safe_alloc(size_t bytes, size_t alignment = 8) {
            assert(current_slot < coil_ptr_slot_count && "Ran out of coil_ptr slots! Allocate more!");
            coil_ptr_slots[current_slot] = true;
            T* tmp = alloc<T>(bytes, alignment);
            last_alloc_was_safe = true;
            return coil_ptr<T>(tmp, num_unwinds, coil_ptr_slots + (current_slot++));
        }
    private:
        size_t capacity;
        char* data;

        size_t size_of_last_alloc = 0;
        size_t current_point = 0;

        size_t num_unwinds = 0;
        bool coil_ptr_slots[coil_ptr_slot_count] = {false};
        size_t current_slot = 0;
        bool last_alloc_was_safe = false;
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
         * @param parent_num_unwinds the parent Coil's number of unwinds this object comes from
         * @param slot the slot within its parent's coil_ptr_slots that it gets
         */
        coil_ptr(T* raw_ptr, const size_t& parent_num_unwinds, bool* slot)
        : parent_num_unwinds_reference(parent_num_unwinds), slot(slot), raw_ptr(raw_ptr), num_unwinds_parent_at_creation(parent_num_unwinds) {}

        /**
         * Gets the pointer in a similar fashion to weak_ptr
         * @return the internal raw pointer if the parent Coil hasn't been unwound and the coil_ptr hasn't been invalidated via rewinding, nullptr otherwise
         */
        [[nodiscard]] T* safe_get() {
            if (num_unwinds_parent_at_creation != parent_num_unwinds_reference or !*slot) {
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
        T& operator*() const {
            return *raw_ptr;
        }
        /**
         * Unsafe, as this does not check if the pointer is still valid
         */
        T* operator->() const {
            return raw_ptr;
        }
        /**
         * Allows you to treat a coil_ptr like a bool in if statements
         */
        [[nodiscard]] explicit operator bool() const {
            return static_cast<bool>(raw_ptr);
        }
        /**
         * Compares the objects by their internal pointers' memory addresses
         */
        [[nodiscard]] friend std::strong_ordering operator<=>(const coil_ptr& a, const coil_ptr& b) {
            return std::compare_three_way{}(a.raw_ptr, b.raw_ptr);
        }
    private:
        const size_t& parent_num_unwinds_reference;
        const bool* slot;

        T* raw_ptr;

        size_t num_unwinds_parent_at_creation;
    };
}

