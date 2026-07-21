#include "loam/Random.hpp"

namespace loam {
    std::random_device random_device;
    std::mt19937 random_generator(random_device());

    void seed(unsigned int n) {
        random_generator.seed(n);
    }
    void seed() {
        random_generator.seed(random_device());
    }

    int rand_int(int min, int max) {
        std::uniform_int_distribution dist(min, max);
        return dist(random_generator);
    }
    
    float rand_float(float min, float max) {
        std::uniform_real_distribution dist(min, max);
        return dist(random_generator);
    }
    float rand_float() {
        std::uniform_real_distribution dist(0.0f, 1.0f);
        return dist(random_generator);
    }

    double rand_double(double min, double max) {
        std::uniform_real_distribution dist(min, max);
        return dist(random_generator);
    }
    double rand_double() {
        std::uniform_real_distribution dist(0.0, 1.0);
        return dist(random_generator);
    }

    bool rand_bool(double probability) {
        std::bernoulli_distribution dist(probability);
        return dist(random_generator);
    }
}