#include <loam/Collisions.hpp>
#include <algorithm>

namespace loam {
    bool colliding(float x1, float y1, float w1, float h1,
                   float x2, float y2, float w2, float h2) {
        return x1 < x2 + w2 and
            x1 + w1 > x2 and
            y1 < y2 + h2 and
            y1 + h1 > y2;
    }
    bool colliding(const SDL_FPoint& p1, float w1, float h1,
                   const SDL_FPoint& p2, float w2, float h2) {
        return colliding(p1.x, p1.y, w1, h1, p2.x, p2.y, w2, h2);
    }
    bool colliding(const SDL_FRect& r1, const SDL_FRect& r2) {
        return colliding(r1.x, r1.y, r1.w, r1.h, r2.x, r2.y, r2.w, r2.h);
    }

    bool circles_overlap(const Circle& a, const Circle& b) {
        float dx = a.center_x - b.center_x;
        float dy = a.center_y - b.center_y;
        float radius_sum = a.radius + b.radius;
        return dx * dx + dy * dy < radius_sum * radius_sum;
    }
    bool circle_overlaps_rect(const Circle& c, const SDL_FRect& r) {
        float closest_x = std::clamp(c.center_x, r.x, r.x + r.w);
        float closest_y = std::clamp(c.center_y, r.y, r.y + r.h);

        float dx = c.center_x - closest_x;
        float dy = c.center_y - closest_y;
        return dx * dx + dy * dy < c.radius * c.radius;
    }

    bool point_in_circle(float x, float y, const Circle& circle) {
        float dx = circle.center_x - x;
        float dy = circle.center_y - y;
        return dx * dx + dy * dy <= circle.radius * circle.radius;
    }
    bool point_in_circle(const SDL_FPoint& p, const Circle& circle) {
        return point_in_circle(p.x, p.y, circle);
    }

}
