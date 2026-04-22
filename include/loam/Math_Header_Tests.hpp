#pragma once

#include <iostream>
#include <loam/Math.hpp>
#include <type_traits>

template <typename T>
requires std::is_arithmetic_v<T>
void test_sqrt_lookup(T start, T stop, T step) {
    static_assert(std::is_arithmetic_v<T>, "Use an arithmetic type!");
    double max_difference = 0;
    while (start < stop) {
        std::cout << "\n\nNumber: " << start;
        double approx = sqrt_lookup(start);
        std::cout << "\nApproximation: " << approx;
        double exact = std::sqrt(start);
        std::cout << "\nExact: " << exact;
        double difference = std::fabs(exact-approx);
        max_difference = (difference > max_difference)
        ? difference
        : max_difference;
        std::cout << "\nDifference: " << difference;
        start += step;
    }
    std::cout << "\n\nMax difference: " << max_difference;
}