#pragma once
#include <SDL3/SDL_rect.h>
#include <loam/Shapes.hpp>

namespace loam {
    /**
     * Uses simple bounding boxes to check for collision between two rectangles
     * @note this is probably the function you want to use most for actual game collisions
     * @param x1 the top-left x coordinate of the first rectangle
     * @param y1 the top-left y coordinate of the first rectangle
     * @param w1 the width of the first rectangle
     * @param h1 the height of the first rectangle
     * @param x2 the top-left x coordinate of the second rectangle
     * @param y2 the top-left y coordinate of the second rectangle
     * @param w2 the width of the second rectangle
     * @param h2 the height of the second rectangle
     * @return whether the two rectangles overlap
     */
    bool colliding(float x1, float y1, float w1, float h1,
                   float x2, float y2, float w2, float h2);
    /**
     * Overload that accepts SDL_FPoint instead of x and y coordinates for the top-left edges
     * @note this is probably the function you want to use most for actual game collisions
     * @param p1 defines the top-left x and y coordinates of the first rectangle
     * @param w1 the width of the first rectangle
     * @param h1 the height of the first rectangle
     * @param p2 defines the top-left x and y coordinates of the second rectangle
     * @param w2 the width of the second rectangle
     * @param h2 the height of the second rectangle
     * @return whether the two rectangles overlap
     */
    bool colliding(const SDL_FPoint& p1, float w1, float h1,
                   const SDL_FPoint& p2, float w2, float h2);
    /**
     * Overload that accepts SDL_FRect to define the two rectangles instead
     * @note this is probably the function you want to use most for actual game collisions
     * @param r1 the first rectangle
     * @param r2 the second rectangle
     * @return whether the two rectangles overlap
     */
    bool colliding(const SDL_FRect& r1, const SDL_FRect& r2);

    /**
     * Checks whether two circles overlap
     * @return whether the circles overlap
     */
    bool circles_overlap(const Circle& a, const Circle& b);
    /**
     * Returns whether a circle and rectangle overlap
     * @param c the circle to use
     * @param r the rectangle to use
     * @return whether the two shapes overlap
     */
    bool circle_overlaps_rect(const Circle& c, const SDL_FRect& r);

    /**
     * Checks whether a point falls within a circle
     * @param x the x coordinate of the point
     * @param y the y coordinate of the point
     * @param circle the circle to check against
     * @return whether the point falls within the circle
     */
    bool point_in_circle(float x, float y, const Circle& circle);
    /**
     * Overload that accepts SDL_FPoint
     * @param p defines the point
     * @param circle the circle to check the point against
     * @return whether the point falls within the circle
     */
    bool point_in_circle(const SDL_FPoint& p, const Circle& circle);


}
