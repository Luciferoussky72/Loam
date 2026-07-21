#include "loam/Shapes.hpp"
#include <sstream>

namespace loam {
    constexpr std::partial_ordering operator<=>(const Circle& a, const Circle& b) {
        return a.radius <=> b.radius;
    }

    std::string Circle::equation() const {
        std::string tmp;
        std::format_to(std::back_inserter(tmp), "(x - {})^2 + (y - {})^2 = {}^2", center_x, center_y, radius);
        return tmp;
    }
}
