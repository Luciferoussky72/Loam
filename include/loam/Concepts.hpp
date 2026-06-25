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
     */
    template <typename T>
    concept is_formattable = requires (T t) {
        std::formatter<T>{}(t);
        std::formatter<T>::parse;
        std::formatter<T>::format;
    };
    /**
     * Checks if a type can be formatted with std::formatter
     */
    template <typename T>
    concept Formattable = is_formattable<T>;

    /**
     * Checks if a type supports iterators via begin and end functions
     */
    template <typename T>
    concept is_iterable = requires (T t) {
        std::begin(t);
        std::end(t);
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
} // loam