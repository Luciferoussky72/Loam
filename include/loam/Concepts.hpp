#pragma once

/**
 * Defines various useful concepts used in Loam
 * @author luciferoussky72
 */

#include <ostream>

namespace loam {
    template <typename T>
    concept Streamable = requires (T t, std::ostream& os) {
        os << t;
    };
    template <typename T>
    concept is_streamable = requires (T t, std::ostream& os) {
        os << t;
    };

    template <typename T>
    concept Iterable = requires(T t) {
        std::begin(t);
        std::end(t);
    };
    template <typename T>
    concept is_iterable = requires(T t) {
        std::begin(t);
        std::end(t);
    };
} // loam