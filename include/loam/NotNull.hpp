#pragma once

#include <cassert>
#include <cstddef>
#include <type_traits>
#include <compare>

namespace loam {
    /**
     * A null-safe wrapper for pointers
     * @author luciferoussky72
     * @note I'll add this to more places in Loam soon, the idea is that you can use it to avoid defensive "if (!ptr) return;" checks
     * @tparam PTR_T the pointer type that the object stores; you'd use it like "void function(NotNull<int*> int_ptr);"
     */
    template <typename PTR_T>
    requires std::is_pointer_v<PTR_T>
    class NotNull {
    public:
        /**
         * Constructs a NotNull and checks that the pointer isn't null in debug builds
         * @param ptr the raw pointer the object should hold
         */
        constexpr NotNull(PTR_T ptr) noexcept : raw_ptr(ptr) {
            assert(raw_ptr && "NotNull constructor pointer is null!");
        }
        /**
         * Assigns a NotNull and checks that the pointer isn't null in debug builds
         * @param ptr the raw pointer the object should hold
         * @return a reference to the object to enable chaining
         */
        constexpr NotNull& operator=(PTR_T ptr) noexcept {
            assert(ptr && "NotNull assignment pointer is null!");
            raw_ptr = ptr;
            return *this;
        }
        //Make sure that the class is trivially copiable
        static_assert(std::is_trivially_copyable_v<NotNull>);

        NotNull(std::nullptr_t) = delete("This one should be obvious, we're trying to avoid The Void of No Return here!");
        NotNull& operator=(std::nullptr_t) = delete("This one should be obvious, we're trying to avoid The Void of No Return here!");

        /**
         * Overload for the dereference operator
         */
        [[nodiscard]] constexpr auto& operator*() const noexcept {
            return *raw_ptr;
        }
        /**
         * Overload for the arrow operator to make pointers to objects ergonomic
         */
        [[nodiscard]] constexpr PTR_T operator->() const noexcept {
            return raw_ptr;
        }

        /**
         * Implicit conversion to the raw pointer type so that you can easily pass to functions that expect raw pointers
         */
        [[nodiscard]] constexpr operator PTR_T() const noexcept {
            return raw_ptr;
        }

        /**
         * Comparison overload
         */
        [[nodiscard]] constexpr bool operator==(const NotNull& other) const noexcept {
            return raw_ptr == other.raw_ptr;
        }
        /**
         * Comparison overload
         */
        [[nodiscard]] constexpr std::strong_ordering operator<=>(const NotNull& other) const noexcept {
            return std::compare_three_way{}(raw_ptr, other.raw_ptr);
        }
    private:
        PTR_T raw_ptr;
    };
} // loam
