#pragma once

#include <ostream>
#include <SDL3/SDL_rect.h>

namespace loam {
    /**
     * A "modern" implementation of directional 2D vectors, with some extra Loam fluff added in, mostly from Loam's Math header
     */
    struct Vec2 {
        /**
         * Just makes a Vec2 with 0 for the x and y components
         */
        Vec2() = default;
        /**
         * Makes a Vec2
         * @param x the x component
         * @param y the y component
         */
        Vec2(float x, float y);

        /**
         * This gets the magnitude, but it's rather slow due to std::sqrt
         * @note use magnitude_squared and approx_magnitude where you can, as they're faster
         * @return the magnitude of the vector
         */
        [[nodiscard]] float slow_magnitude() const;
        /**
         * This gives you the magnitude squared, which is faster for many calculations
         * @note good ol' a-squared plus b-squared equals c-squared; do note that this is best for things like comparing the magnitudes of
         * vectors directly.
         * @return the magnitude-squared of the vector
         */
        [[nodiscard]] float magnitude_squared() const;
        /**
         * Uses loam::sqrt_lookup in the Math header to approximate the magnitude far faster than slow_magnitude can
         * @return a (rather good) approximation of the magnitude
         */
        [[nodiscard]] float approx_magnitude() const;


        /**
         * These characters format how a vector will print to output streams and std::print, which by default is "(x, y)"
         * @note feel free to change these to your liking
         */
        constexpr static char VEC_FORMAT_LEFT = '(';
        /**
         * These characters format how a vector will print to output streams and std::print, which by default is "(x, y)"
         * @note feel free to change these to your liking
         */
        constexpr static char VEC_FORMAT_RIGHT = ')';

        /**
         * A nice little overload so you can use streams with vectors
         * @param os the output stream to use
         * @param vec the vector to send
         * @return a reference to the output stream so you can chain
         */
        friend std::ostream& operator<<(std::ostream& os, const Vec2& vec);

        /**
         * Compares two vectors by their components
         * @note this uses loam::approx_equals, so the components must have a difference of less than loam::EPSILON, which is 1e-4f
         * @return true if the vectors are approximately equal
         */
        friend bool operator==(const Vec2& a, const Vec2& b);
        /**
         * Compares two vectors by their components
         * @note this uses loam::approx_equals, so the components must have a difference of less than loam::EPSILON, which is 1e-4f
         * @note in C++ 20 and beyond, defining operator== also defines operator!=, but I've declared and defined it here for clarity
         * @return this function's code is literally just "not(a == b)"
         */
        friend bool operator!=(const Vec2& a, const Vec2& b);

        /**
         * Adds two vectors
         * @return a new vector containing the result
         */
        friend Vec2 operator+(const Vec2& a, const Vec2& b);
        /**
         * Adds another vector to an existing vector
         * @param b the vector to add onto the existing vector
         * @return a reference to the operated-on vector to enable chaining
         */
        Vec2& operator+=(const Vec2& b);
        /**
         * Subtracts one vector from another
         * @return a new vector containing the result
         */
        friend Vec2 operator-(const Vec2& a, const Vec2& b);
        /**
         * Subtracts another vector from an existing vector
         * @param b the vector to subtract from the existing vector
         * @return a reference to the operated-on vector to enable chaining
         */
        Vec2& operator-=(const Vec2& b);

        /**
         * Multiplies a vector by a scalar value
         * @param a the vector to multiply
         * @param n the scalar value to.... scale by
         * @return a new vector containing the result
         */
        friend Vec2 operator*(const Vec2& a, float n);
        /**
         * Multiplies an existing vector by a scalar value
         * @param n the scalar value to, well, scale by!
         * @return a reference to the operated-on vector to enable chaining
         */
        Vec2& operator*=(float n);
        /**
         * Divides a vector by a scalar value
         * @param a the vector to divide
         * @param n the scalar value to divide by
         * @return a new vector containing the result
         */
        friend Vec2 operator/(const Vec2& a, float n);
        /**
         * Divides an existing vector by a scalar value
         * @param n the scalar value to divide by
         * @return a reference to the operated-on vector to enable chaining
         */
        Vec2& operator/=(float n);

        /**
         * Gets the dot product of a and b
         * @return the dot product of a and b
         */
        friend float operator*(const Vec2& a, const Vec2& b);

        /**
         * An implicit conversion to SDL_FPoint for clean SDL interop
         */
        operator SDL_FPoint() const;

        float x = 0;
        float y = 0;
    };
} // loam

/**
 * A specialization of std::formatter so you can use Loam vectors with modern std::print!
 * @note CLion may tell you that the format method can be made static; do not trust its lies lest you want to be captured by a
 * thespian merman! (may not actually happen, but still, don't do it)
 */
template <>
struct std::formatter<loam::Vec2> {
    constexpr static auto parse(const std::format_parse_context& ctx) {
        return ctx.begin();
    }

    auto format(const loam::Vec2& v, std::format_context& ctx) const {
        return std::format_to(ctx.out(), "{}{}, {}{}", loam::Vec2::VEC_FORMAT_LEFT, v.x, v.y, loam::Vec2::VEC_FORMAT_RIGHT);
    }
};