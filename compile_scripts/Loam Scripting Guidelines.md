## Loam Scripting Guidelines

### Loam is first and foremost a C++ library. Any scripts in Loam should run when the project is built, and should also follow these criteria:

#### 1. Don't do something you can already do with `constexpr` or `consteval`
If you need to calculate and store values, which also includes string literals, at compile-time, you can already do that in C++ 
with constexpr or consteval functions

#### 2. Make sure it solves a problem and makes things easier
I'm not the first to say that CMake sucks, so the last thing I want is for people to have to fiddle around with Loam's CMakeLists.txt 
to disable certain compile scripts. They should save time, not force people to spend 2 hours bashing their head into a wall.

###### While this file is small now, keep in mind it may change as Loam grows and changes