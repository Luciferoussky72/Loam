#include "loam/Vec2.hpp"
#include "loam/Math.hpp"

namespace loam {
    Vec2::Vec2(float x, float y) : x(x), y(y) {}

    float Vec2::slow_magnitude() const {
        return std::sqrt((x * x) + (y * y));
    }

    float Vec2::magnitude_squared() const {
        return (x * x) + (y * y);
    }

    float Vec2::approx_magnitude() const {
        return sqrt_lookup((x * x) + (y * y));
    }

    std::ostream& operator<<(std::ostream& os, const Vec2& vec) {
        os << Vec2::VEC_FORMAT_LEFT << vec.x << ", " << vec.y << Vec2::VEC_FORMAT_RIGHT;
        return os;
    }

    bool operator==(const Vec2& a, const Vec2& b) {
        return approx_equals(a.x, b.x) and approx_equals(a.y, b.y);
    }
    bool operator!=(const Vec2& a, const Vec2& b) {
        return not(a == b);
    }


    Vec2 operator+(const Vec2& a, const Vec2& b) {
        return Vec2{a.x + b.x, a.y + b.y};
    }
    Vec2& Vec2::operator+=(const Vec2& b) {
        x += b.x;
        y += b.y;
        return *this;
    }
    Vec2 operator-(const Vec2& a, const Vec2& b) {
        return Vec2{a.x - b.x, a.y - b.y};
    }
    Vec2& Vec2::operator-=(const Vec2& b) {
        x -= b.x;
        y -= b.y;
        return *this;
    }

    Vec2 operator*(const Vec2& a, float n) {
        return Vec2{a.x * n, a.y * n};
    }
    Vec2& Vec2::operator*=(float n) {
        x *= n;
        y *= n;
        return *this;
    }
    Vec2 operator/(const Vec2& a, float n) {
        return Vec2{a.x / n, a.y / n};
    }
    Vec2& Vec2::operator/=(float n) {
        x /= n;
        y /= n;
        return *this;
    }

    float operator*(const Vec2& a, const Vec2& b) {
        return (a.x * b.x) + (a.y * b.y);
    }

    Vec2::operator SDL_FPoint() const {
        return SDL_FPoint{x, y};
    }

} // loam
