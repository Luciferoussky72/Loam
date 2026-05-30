#pragma once

#include <cassert>
#include <new>
#include <cstddef>
#include <type_traits>
#include <compare>
#include <expected>

#include <SDL3/SDL_log.h>


namespace loam {
    /**
     * Single-type allocator class; guaranteed constant allocation and deallocation time.
     * @note
     * Q: Why Strands?
     * A: Keeps with the rope-adjacent convention for allocator names established by
     * Coil and sounds cool. It came about because I imagine each allocation to be
     * "pulling a strand" from a rope
     * @tparam T the type that the class allocates
     */
    template <typename T>
    class Strands {
    public:
        class strand_ptr;

        /**
         * Constructs a Strands allocator
         * @param elements the number of elements that the allocator will be able to allocate
         */
        [[nodiscard]] Strands(size_t elements) {
            memory = static_cast<ElementUnion*>(operator new(sizeof(ElementUnion) * elements, std::nothrow));
            if (!memory) {
                SDL_Log("failed to allocate a Strands allocator's buffer!");
                return;
            }
            num_elements = elements;
            for (size_t i = 0; i < num_elements - 1; ++i) {
                memory[i].node = ElementNode{&memory[i + 1].node};
            }
            //special case to make sure the last element's next pointer is nullptr
            memory[num_elements - 1].node = ElementNode{nullptr};

            head = &memory->node;
        }

        /**
         * Checks that the allocator's memory allocated correctly
         * @return true if the memory allocated correctly
         */
        [[nodiscard]] bool good() const {
            return memory;
        }

        /**
         * Frees the allocator's memory
         */
        ~Strands() {
            operator delete(memory);
        }

        Strands(const Strands&) = delete("Copying a Strands allocator would send your program to The Void of No Return!");
        Strands& operator=(const Strands&) = delete("Copy-assigning a Strands allocator would send your program to The Void of No Return!");
        Strands(Strands&&) = delete("Moving a Strands allocator would invalidate any pointers from it, sending your program to The Void of No Return!");
        Strands& operator=(Strands&&) = delete("Move assigning a Strands allocator would invalidate any pointers from it, sending your program to The Void of No Return!");


        /**
         * The node type used by the internal linked list
         * @note initially I had this storing a pointer to itself before I realized that was silly
         */
        struct ElementNode {
            ElementNode* next;
        };

        /**
         * Allows the memory to be reused for both the nodes and the elements
         * @note programming with unions is pain, but hey, we're saving 8 * elements bytes and because I already made it,
         * you don't have to suffer!
         */
        union ElementUnion {
            T element;
            ElementNode node;
        };

        /**
         * Fetches a pointer from the allocator
         * @note make sure to not let the pointer go out of scope, otherwise you will
         * be unable to free the pointer
         * @return the pointer to the allocator's memory
         */
        [[nodiscard]] T* alloc() {
            assert(head && "Strands allocator ran out of memory!");
            if (!head) return nullptr;

            ElementUnion* tmp = reinterpret_cast<ElementUnion*>(head);
            head = head->next;
            return &tmp->element;
        }

        /**
         * Allocates via a custom pointer type that automatically frees itself when it goes out of scope
         * @warning make sure to not carelessly pass out pointers via the resulting object; you can easily send your program to The Void of No Return!
         * @return either the strand_ptr or an error message
         */
        [[nodiscard]] std::expected<strand_ptr, const char*> safe_alloc() {
            T* tmp = alloc();
            if (!tmp) {
                return std::unexpected("Strands allocator ran out of memory!");
            }
            return strand_ptr(tmp, this);
        }

        /**
         * Frees the pointer fed to it and calls destructors
         * @note the pointer must from the allocator; feeding this function a pointer
         * from elsewhere asserts in debug but is undefined behaviour in release
         * @warning *do not* feed the same pointer twice to this; you will
         * corrupt the allocator's bookkeeping and send your program to The Void of
         * No Return! (may not actually happen; but still, don't do it)
         * @param free_this the pointer to free
         */
        void free(T* free_this) {
            ElementUnion* tmp = reinterpret_cast<ElementUnion*>(free_this);
            assert(free_this &&
                tmp >= memory &&
                tmp < memory + num_elements &&
                "Tried to free memory not from a Strands allocator!");
            if constexpr (!std::is_trivially_destructible_v<T>) {
                free_this->~T();
            }
            tmp->node = ElementNode{head};
            head = &tmp->node;
        }

        /**
         * Frees and nulls a pointer
         * @param free_this a pointer to the pointer you want to free; this function will update the pointed-to pointer to nullptr
         */
        void free_and_null(T** free_this) {
            free(*free_this);
            *free_this = nullptr;
        }

        /**
         * A companion pointer type with move semantics that automatically frees itself
         * when it goes out of scope similar to std::unique_ptr
         * @warning make sure to not carelessly pass out pointers via this object; you can easily send your program to The Void of No Return!
         */
        class strand_ptr {
        public:
            /**
             * Constructs a strand_ptr
             * @param ptr the raw pointer the object should use
             * @param parent the parent object of the pointer
             */
            [[nodiscard]] strand_ptr(T* ptr, Strands* parent) : raw_ptr(ptr), parent(parent) {}

            /**
             * Hands the pointer's memory back to the parent, or does nothing if the object has been moved from
             * @warning the internal pointer becomes invalid after this destructor runs; using it afterwards would send your program to The Void of No Return!
             */
            ~strand_ptr() {
                if (raw_ptr and parent) {
                    parent->free(raw_ptr);
                }
            }

            strand_ptr(const strand_ptr&) = delete("You can't copy a strand_ptr because they're meant to save you from The Void of No Return.");
            strand_ptr& operator=(const strand_ptr&) = delete("You can't copy-assign a strand_ptr because they're meant to save you from The Void of No Return.");

            /**
             * Move-constructs a strand_ptr
             * @param other the strand_ptr to move from
             * @warning the moved-from pointer is invalidated; don't use it unless you want your program to enter The Void of No Return!
             */
            [[nodiscard]] strand_ptr(strand_ptr&& other) noexcept {
                raw_ptr = other.raw_ptr;
                other.raw_ptr = nullptr;
                parent = other.parent;
                other.parent = nullptr;
            }
            /**
             * Move-assigns a strand_ptr
             * @param other the strand_ptr to move from
             * @return the moved_from pointer is invalidated; dereferencing it will send your program to The Void of No Return!
             */
            strand_ptr& operator=(strand_ptr&& other) noexcept {
                if (this == &other) return *this;
                raw_ptr = other.raw_ptr;
                other.raw_ptr = nullptr;
                parent = other.parent;
                other.parent = nullptr;
                return *this;
            }

            /**
             * Frees and nulls the object's pointer
             * @warning the pointer becomes invalid after calling this; don't use it anymore unless you want to enter The Void of No Return!
             */
            void free() {
                if (raw_ptr and parent) {
                    parent->free_and_null(&raw_ptr);
                }
            }

            /**
             * Gets the internal raw pointer
             * @return the internal raw pointer
             */
            [[nodiscard]] T* get() {
                return raw_ptr;
            }

            /**
             * Dereferences the raw pointer
             * @return a reference to the data that the internal pointer points to
             */
            [[nodiscard]] T& operator*() {
                return *raw_ptr;
            }

            /**
             * Used if the internal pointer has members
             * @return the raw pointer because that's how operator-> overloads work
             */
            [[nodiscard]] T* operator->() {
                return raw_ptr;
            }

            /**
             * Compares a and b by their memory addresses
             */
            friend std::strong_ordering operator<=>(const strand_ptr& a, const strand_ptr& b) {
                return a.raw_ptr <=> b.raw_ptr;
            }
        private:
            T* raw_ptr = nullptr;
            Strands* parent = nullptr;
        };
    private:
        ElementUnion* memory = nullptr;
        size_t num_elements = 0;
        ElementNode* head = nullptr;
    };
}
