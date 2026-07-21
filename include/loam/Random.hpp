#pragma once

/**
 * Provides abstraction for random numbers, which are normally rather verbose in C++
 * @author luciferoussky72
 */

#include <algorithm>
#include <random>

namespace loam {
    /**
     * You're free to use loam::random_device in any of your own code
     * @note just don't invalidate this variable; you'll probably end up in Fairy Country if you do
     */
    extern std::random_device random_device;
    /**
     * You're free to use loam::random_generator in any of your own code
     * @note just don't corrupt this variable; you'll probably open a rift to the Fairy Isles
     */
    extern std::mt19937 random_generator;

    /**
     * Seeds random_generator with n as a deterministic seed
     * @note mostly for debugging and/or cases where deterministic output is needed
     * @param n the number to seed with
     */
    void seed(unsigned int n);
    /**
     * This overload exists to reseed the generator using entropy from random_device
     * @note technically, you may have to call this eventually in some programs,
     * but std::mt19937 is good for 2^19937-minus-one random numbers
     */
    void seed();

    /**
     * Generates a random integer
     * @param min the minimum (obviously)
     * @param max the maximum (duh)
     * @return a random integer between min and max
     */
    int rand_int(int min, int max);

    /**
     * Generates a random float
     * @param min the minimum (clearly)
     * @param max the maximum (intuitive)
     * @return a random float between min and max
     */
    float rand_float(float min, float max);
    /**
     * Convenience overload for generating percentages and multipliers
     * @return a random float between 0.0f and 1.0f
     */
    float rand_float();

    /**
     * Generates a random double
     * @param min the minimum (wow, so shocking)
     * @param max the maximum (amazingly)
     * @return a random double between min and max
     */
    double rand_double(double min, double max);
    /**
     * Convenience overload for generating percentages and multipliers
     * @return a random double between 0.0 and 1.0
     */
    double rand_double();

    /**
     * Generates a random boolean value
     * @param probability the chance of returning true
     * @return true or false
     */
    bool rand_bool(double probability);

    /**
     * Picks a random element out of a container using iterators
     * @note also works with C-style arrays because pointers work as iterators too
     * @param begin the start of the container
     * @param end the end of the container
     * @return an iterator to an element between begin and end, or end if the container is empty
     */
    auto rand_element(auto begin, auto end) {
        if (begin == end) return end;
        std::uniform_int_distribution<size_t> dist(0, std::distance(begin, end) - 1);
        std::advance(begin, dist(random_generator));
        return begin;
    }

    /**
     * Shuffles a container in a cleaner way than std::shuffle()
     * @note also works with C-style arrays because pointers work as iterators too
     * @param begin the start of the container
     * @param end the end of the container
     */
    void shuffle(auto begin, auto end) {
        std::shuffle(begin, end, random_generator);
    }



}
