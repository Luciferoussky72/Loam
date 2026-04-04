#pragma once

#include <cstddef>

namespace loam {
    /**
     * Provides utilities to manage memory similarly to the stack. The idea is to bridge the performance gap between the heap and stack
     * @author luciferoussky72
     */
    class Coil {
    public:
        /**
         * Constructs a coil with
         * @param capacity - the capacity of the coil (in bytes)
         * @note - the capacity is rounded to the next highest multiple of 8
         */
        Coil(size_t capacity);
        void* alloc(size_t bytes);
        void rewind();


    private:
        size_t capacity;
        char* data;
        size_t current_point;

    };
} // loam