#pragma once
#include <string>

namespace loam {
    /**
     * Simple circle implementation
     * @note if you need circle collisions, include Collisions.hpp
     */
    struct Circle {
        float center_x = 0;
        float center_y = 0;
        float radius = 0;


        /**
         * Compares the circles by their radii, with position ignored (radii = "radiuses" if you're not a plural nerd lol)
         */
        friend constexpr std::partial_ordering operator<=>(const Circle& a, const Circle& b);

        /**
         * Gets the mathematical equation that defines the circle
         * @note mostly for debugging or formal proofs
         * @return the equation that defines in the circle in (x - h)^2 + (y - k)^2 = r^2 format
         */
        [[nodiscard]] std::string equation() const;
    };
}
