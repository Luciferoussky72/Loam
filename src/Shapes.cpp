#include "loam/Shapes.hpp"
#include <sstream>

namespace loam {
    constexpr std::partial_ordering operator<=>(const Circle& a, const Circle& b) {
        return a.radius <=> b.radius;
    }

    std::string Circle::equation() const {
        std::stringstream ss;
        ss << "(x - " << center_x << ")^2 + (y - " << center_y << ")^2 = " << radius << "^2";
        return ss.str();
    }
}
