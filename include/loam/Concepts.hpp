#pragma once

/**
 * Defines various useful concepts used in Loam
 * @note if you're wondering why we have both is_blank and Blank, it's to make things more readable in usage. The C++ STL has both is_blank and blank anyway
 * @author luciferoussky72
 */

#include <ostream>
#include <format>

namespace loam {
    /**
     * Checks if a type can be sent to output streams
     */
    template <typename T>
    concept is_streamable = requires (T t, std::ostream& os) {
        os << t;
    };
    /**
     * Checks if a type can be sent to output streams
     */
    template <typename T>
    concept Streamable = is_streamable<T>;

    /**
     * Checks if a type can be formatted with std::formatter
     * @note only works with char, but the assumption would be that most output uses that
     */
    template <typename T>
    concept is_formattable = std::formattable<std::remove_cvref_t<T>, char>;
    /**
     * Checks if a type can be formatted with std::formatter
     * @note only works with char, but the assumption would be that most output uses that
     */
    template <typename T>
    concept Formattable = is_formattable<std::remove_cvref_t<T>>;

    /**
     * Checks if a type supports iterators via begin and end functions
     */
    template <typename T>
    concept is_iterable = requires (std::remove_cvref_t<T> t) {
        std::cbegin(t);
        std::cend(t);
    };
    /**
     * Checks if a type supports iterators via begin and end functions
     */
    template <typename T>
    concept Iterable = is_iterable<T>;

    /**
     * Checks if a type is an enum type
     */
    template <typename E>
    concept is_enum = std::is_enum_v<E>;

    /**
     * Checks if a type is an enum type
     */
    template <typename E>
    concept Enum = is_enum<E>;

    /**
     * Checks if a type is an array type
     */
    template <typename T>
    concept is_array = std::is_array_v<T>;

    /**
     * Checks if a type is an array type
     */
    template <typename T>
    concept Array = is_array<T>;
}