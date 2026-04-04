#include "loam/Coil.hpp"

#include <new>

namespace loam {
    Coil::Coil(size_t capacity) : capacity((capacity + 7) & ~static_cast<size_t>(7)) {
        data = new char[this->capacity];
    }

    Coil::~Coil() {
        delete[] data;
    }

    void* Coil::alloc(size_t bytes, size_t alignment) {
        bytes = (bytes + alignment - 1) & ~(alignment - 1);

        if (current_point + bytes > capacity) {
            throw std::bad_alloc();
        }

        void* tmp = data + current_point;
        current_point += bytes;
        size_of_last_alloc = bytes;
        return tmp;
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