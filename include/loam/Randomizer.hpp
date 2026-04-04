#ifndef EARTHBORN_RANDOMIZER_HPP
#define EARTHBORN_RANDOMIZER_HPP

namespace Random {
    int randint(int min, int max);
    float randfloat(float min, float max);
    bool randbool(double probability = 0.5);
}

#endif //EARTHBORN_RANDOMIZER_HPP