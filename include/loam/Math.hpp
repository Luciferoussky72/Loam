#pragma once

/**
 * Provides various math utilities that aren't already in the C++ STL
 * @author luciferoussky72
 */
#include <algorithm>
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
     * behaviour on release builds; be careful of the values you pass to this function unless you want a one-way ticket to Fairy Country
     * @tparam T the type of n; must pass std::is_arithmetic
     * @return an approximation of the square root of n, or an exact answer if n is an integer
     */
    template <typename T>
    requires std::is_arithmetic_v<T>
    float sqrt_lookup(T n);

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
    consteval float compile_time_sqrt(float n) {
        if (n == 0.0) return 0.0;
        float r = n;
        for (int i = 0; i < 20; i++)
            r = 0.5 * (r + n / r);
        return r;
    }

    /**
     * Makes a square root lookup table up to SQRT_MAX
     * @return an std::array containing the lookup table entries
     */
    consteval std::array<float, SQRT_MAX> make_sqrt_table() {
        std::array<float, SQRT_MAX> result{};
        for (size_t i = 0; i < SQRT_MAX; i++)
            result[i] = compile_time_sqrt(static_cast<float>(i));
        return result;
    }

    /**
     * The lookup table used by loam::sqrt_lookup
     * @note feel free to use this in any of your own code; it's constexpr anyway, so it's not like you can corrupt it
     */
    inline constexpr auto SQRT_TABLE = make_sqrt_table();

    template <typename T>
    requires std::is_arithmetic_v<T>
    float sqrt_lookup(T n) {
        static_assert(std::is_arithmetic_v<T>, "Use an arithmetic value for loam::sqrt_lookup!");
        assert(n < SQRT_MAX && "Went above SQRT_MAX!");
        if constexpr (std::is_floating_point_v<T>) {
            if (n < 1) return std::sqrt(n);
            size_t below = static_cast<size_t>(n);
            size_t above = below + 1;
            float percent = n - below;
            return SQRT_TABLE[below] + percent * (SQRT_TABLE[above] - SQRT_TABLE[below]);
        }
        return SQRT_TABLE[static_cast<size_t>(n)];
    }

    /**
     * Quality-of-life function for squaring numbers
     * @tparam T the type of the number; must pass std::is_arithmetic
     * @param n the number to square
     * @warning this does not check for overflows, so make sure the type is big enough to store the result unless you want to
     * summon a Time Worm (may not actually happen)
     * @return the square of n
     */
    template <typename T>
    requires std::is_arithmetic_v<T>
    constexpr T square(T n) {
        return n * n;
    }

    /**
     * Quality-of-life function for cubing numbers
     * @tparam T the type of the number; must pass std::is_arithmetic
     * @param n the number to cube
     * @warning this does not check for overflows, so make sure the type can hold the result unless you want to
     * see what the inside of a Time Worm's stomach looks like
     * @return the cube of n
     */
    template <typename T>
    requires std::is_arithmetic_v<T>
    constexpr T cube(T n) {
        return n * n * n;
    }

    /**
     * Lerps (linearly interpolates) between two values
     * @tparam T the type to interpolate; must pass std::is_floating_point
     * @param lower_bound the lower bound of the range to interpolate
     * @param upper_bound the upper bound of the range to interpolate
     * @param input the input (generally from 0-1) to apply to the range
     * @return a linear interpolation between lower_bound and upper_bound
     */
    template <std::floating_point T>
    constexpr T lerp(T lower_bound, T upper_bound, T input) {
        return std::lerp(lower_bound, upper_bound, input);
    }

    /**
     * Back-calculates the input that gives a value from a linear interpolation between two values
     * @tparam T the type to reverse-interpolate; must pass std::is_floating_point
     * @param lower_bound the lower bound of the range
     * @param upper_bound the upper bound of the range
     * @param value the value to reverse-lerp from
     * @return an input that would give value when applied to lower_bound and upper_bound
     */
    template<std::floating_point T>
    constexpr T inverse_lerp(T lower_bound, T upper_bound, T value) {
        return (value - lower_bound) / (upper_bound - lower_bound);
    }

    /**
     * Returns value remapped based on in_lower_bound and in_upper bound to a value between out_lower_bound and out_upper_bound
     * @tparam T the type to remap; must pass std::is_floating_point
     * @param value the value to remap
     * @param in_lower_bound the lower bound to generate the linear interpolation offset with
     * @param in_upper_bound the upper bound to generate the linear interpolation offset with
     * @param out_lower_bound the lower bound to generate the linear interpolation result with
     * @param out_upper_bound the upper bound to generate the linear interpolation result with
     * @return value remapped to a range between out_lower_bound and out_upper_bound
     */
    template<std::floating_point T>
    constexpr T remap(T value, T in_lower_bound, T in_upper_bound, T out_lower_bound, T out_upper_bound) {
        return lerp(out_lower_bound, out_upper_bound, inverse_lerp(in_lower_bound, in_upper_bound, value));
    }

    /**
     * Smoothly interpolates value to a value between 0 and 1
     * @tparam T the floating point type the function should use
     * @param lower_bound the lower bound for the smoothing
     * @param upper_bound the upper bound for the smoothing
     * @param value the value to operate on
     * @return a number between 0 and 1 that represents the smoothstep result
     */
    template <std::floating_point T>
    constexpr T smoothstep(T lower_bound, T upper_bound, T value) {
        value = std::clamp((value - lower_bound) / (upper_bound - lower_bound), static_cast<T>(0), static_cast<T>(1));
        return value * value * (3.0 - 2.0 * value);
    }

    /**
     * Smootherly interpolates value to a value between 0 and 1
     * @note this is often far more precise than what is needed for most game stuff, but Loam has it
     * @tparam T the floating point type the function should use
     * @param lower_bound the lower bound for the smoothering
     * @param upper_bound the upper bound for the smoothering
     * @param value the value to operate on
     * @return a number between 0 and 1 that represents the smootherstep result
     */
    template <std::floating_point T>
    constexpr T smootherstep(T lower_bound, T upper_bound, T value) {
        value = std::clamp((value - lower_bound) / (upper_bound - lower_bound), static_cast<T>(0), static_cast<T>(1));
        return value * value * value * (value * (value * 6.0 - 15.0) + 10.0);
    }


    /**
     * Loam defines epsilon as 1e-4f because it's good enough for gamedev purposes and common in game libraries
     * @note you can safely redefine this value as you please and any functions that use it will not break
     * @note feel free to use this value in your own code; it's constexpr anyway, so go nuts with no fear of summoning Time Worms
     */
    inline constexpr float EPSILON = 1e-4f;

    /**
     * Epsilon-compares two numbers for near-equality
     * @tparam T the type of the two numbers; must pass std::is_floating_point
     * @param a the first number
     * @param b the second number
     * @return true if a and b are approximately equal
     */
    template <std::floating_point T>
    constexpr bool approx_equals(T a, T b) {
        return std::fabs(a - b) < EPSILON;
    }

    /**
     * Returns a value indicating the sign of value
     * @tparam T the type of value; must be a signed arithmetic type
     * @param value the value to analyze
     * @return 0 if value is 0, 1 if value is positive, and -1 if value is negative
     */
    template <typename T>
    requires std::is_arithmetic_v<T> and std::is_signed_v<T>
    constexpr T signof(T value) {
        if (value == static_cast<T>(0)) return static_cast<T>(0);
        if (value > static_cast<T>(0)) return static_cast<T>(1);
        return static_cast<T>(-1);
    }


    /**
     * Returns true if value is a power of two
     * @tparam T the type of value; must be an integral type
     * @param value the value to analyze
     * @return true if value is a power of two, false otherwise
     */
    template <std::integral T>
    constexpr bool is_pow2(T value) {
        return value > 0 && (value & (value - 1)) == 0;
    }

    /**
     * Returns value shifted up to the next power of two
     * @tparam T the type of value; must be an integral type
     * @param value the value to shift upwards
     * @return value shifted up to the next power of two
     */
    template <std::integral T>
    constexpr T next_pow2(T value) {
        --value;
        value |= value >> 1;
        value |= value >> 2;
        value |= value >> 4;
        value |= value >> 8;
        value |= value >> 16;
        return value + 1;
    }


} // loam