#include "loam/Coil.hpp"

namespace loam {
    Coil::Coil(size_t capacity) : capacity((capacity + 7) & ~static_cast<size_t>(7)) {
        data = new (std::nothrow) char[this->capacity];
    }

    Coil::~Coil() {
        delete[] data;
    }

    void Coil::rewind() {
        if (size_of_last_alloc == 0) return;
        current_point -= size_of_last_alloc;
        size_of_last_alloc = 0;
        num_rewinds++;
    }

    void Coil::unwind() {
        current_point = 0;
        size_of_last_alloc = 0;
        num_rewinds++;
    }
} // loam