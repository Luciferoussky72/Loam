#pragma once

#include <array>
#include <cassert>
#include <cmath>
#include <type_traits>

namespace loam {
    /**
     * Approximates the square root of n from lookup tables. Runs faster than std::sqrt
     * @param n the number to approximate the square root of
     * @note while this function is an approximation, for most values it is very close to accurate, and it gets more and more accurate
     * as n increases.
     * @warning this function falls back to std::sqrt if n < 1, as that is when interpolation with a lookup table loses accuracy
     * @note if n is an integer, you will get an exact answer much faster than std::sqrt, as the answer is pre-cached in loam::SQRT_TABLE
     * @warning if n is larger than loam::SQRT_MAX, the program will crash via assert in debug builds, but it is undefined
     * behaviour on release builds; be careful of the values you pass to this function
     * @tparam T the type of n; must pass std::is_arithmetic
     * @return an approximation of the square root of n, or an exact answer if n is an integer
     */
    template <typename T>
    requires std::is_arithmetic_v<T>
    double sqrt_lookup(T n);

    /**
     * The constant that defines the max number that loam::sqrt_lookup will work with
     * @note you likely should edit this when using Loam yourself, as you may need to take the square root of numbers larger than this
     * @warning using loam::sqrt_lookup with a number larger than this will crash via asserts in debug builds, but it is undefined
     * behaviour on release builds; be careful of the values you pass to the function
     */
    inline constexpr size_t SQRT_MAX = 4096;

    /**
     * consteval implementation of square roots as a helper function for loam's square root lookups
     * @note here mostly for Clang compatibility, as Clang doesn't support std::sqrt in consteval contexts yet
     * @param n the number to take the square root of
     * @return the square root of n
     */
    consteval double compile_time_sqrt(double n) {
        if (n == 0.0) return 0.0;
        double r = n;
        for (int i = 0; i < 20; i++)
            r = 0.5 * (r + n / r);
        return r;
    }

    /**
     * Makes a square root lookup table up to SQRT_MAX
     * @return an std::array containing the lookup table entries
     */
    consteval std::array<double, SQRT_MAX> make_sqrt_table() {
        std::array<double, SQRT_MAX> result{};
        for (size_t i = 0; i < SQRT_MAX; i++)
            result[i] = compile_time_sqrt(static_cast<double>(i));
        return result;
    }

    /**
     * The lookup table used by loam::sqrt_lookup
     * @note feel free to use this in any of your own code; it's constexpr anyway, so it's not like you can corrupt it
     */
    inline constexpr auto SQRT_TABLE = make_sqrt_table();

    /**
     * Approximates the square root of n from lookup tables. Runs faster than std::sqrt
     * @param n the number to approximate the square root of
     * @note while this function is an approximation, for most values it is very close to accurate, and it gets more and more accurate
     * as n increases.
     * @warning this function falls back to std::sqrt if n < 1, as that is when interpolation with a lookup table loses accuracy
     * @note if n is an integer, you will get an exact answer much faster than std::sqrt, as the answer is pre-cached in loam::SQRT_TABLE
     * @warning if n is larger than loam::SQRT_MAX, the program will crash via assert in debug builds, but it is undefined
     * behaviour on release builds; be careful of the values you pass to this function
     * @tparam T the type of n; must pass std::is_arithmetic
     * @return an approximation of the square root of n, or an exact answer if n is an integer
     */
    template <typename T>
    requires std::is_arithmetic_v<T>
    double sqrt_lookup(T n) {
        static_assert(std::is_arithmetic_v<T>, "Use an arithmetic value for loam::sqrt_lookup!");
        assert(n <= SQRT_MAX && "Went above SQRT_MAX!");
        if constexpr (std::is_floating_point_v<T>) {
            if (n < 1) return std::sqrt(n);
            size_t below = std::floor(n);
            size_t above = std::ceil(n);

            double percent = n - below;
            return SQRT_TABLE[below] + percent * (SQRT_TABLE[above] - SQRT_TABLE[below]);
        }
        return SQRT_TABLE[static_cast<size_t>(n)];
    }


} // loam