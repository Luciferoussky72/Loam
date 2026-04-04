#include "Randomizer.hpp"
#include <random>

namespace Random {
    static std::random_device rd;
    static std::mt19937 gen(rd());
    
    int randint(int min, int max) {
        std::uniform_int_distribution<> dist(min, max);
        return dist(gen);
    }
    
    float randfloat(float min, float max) {
        std::uniform_real_distribution<> dist(min, max);
        return static_cast<float>(dist(gen));
    }
    
    bool randbool(double probability) {
        std::bernoulli_distribution dist(probability);
        return dist(gen);
    }
}