# Loam; a fast, indie-focused modern C++ game library

### Introduction

Loam started as a handful of tools that I was making for my first indie game. However, eventually the scope of the tools grew enough that it made more sense to 
compile what I was writing into a library.

I recall that the name "Loam" came to me as I was watching *Hilda* Season Three and was reminded that Hilda's great-aunt's pet soil-with-legs is named Loam.

Other than being a fun reference to my favorite show, the name Loam stuck around because it rolls off the tongue and happens to be a rather good metaphor for 
what the library is meant to be; a fertile foundation for making indie games in C++.

### Design

Loam has a few guiding tenets driving much of the design behind the API:

##### 1. Embracing modern C++ patterns

Modern C++, especially since C++20, has released lots of incredibly powerful modern features. We got concepts in C++20; things like std::expected in C++23, and 
then reflection (which is absurdly powerful and renders so much hacky preprocessor abuse obsolete) in C++26.

If you're interested in learning more about Loam's guidelines, read "Loam Coding Style Guidelines.md"

##### 2. Keep-It-Simple principles

To be honest, if there's one valid critique of C++, it's that the language makes it very easy to write extremely bad code. I'm not even talking about code that 
won't compile or is leaking memory all over the place, I'm talking about code like this:
```c++
constinit static size_t offset = 0;
int main() {
    constexpr static u_char witch_texture_buffer = { 
        #embed witch.aseprite 
    };

    constexpr auto header = parse_header<witch_texture_buffer>(&offset);
    for (size_t frame = 0; frame < header.frames; ++frame) {
        header.frames().push_back(std::move(read_frame(witch_texture_buffer, &offset)));
    }
}
```

The above code is doing something pretty cool, actually, but nobody except the nerd who wrote it (which was me... ...it was as an example, I don't normally 
write code like that lol) understands what is happening, so nobody wants to use or interact with this code. 

Really; what's worse than nobody using your API because it's too badly-written to understand?

For this reason, Loam is built on Keep-It-Simple principles. Loam APIs are designed to be as intuitive and usable as possible.

##### 3. Safety in a Spartan language

I call C++ a "Spartan" language because it's a language that really doesn't hold your hand. You are constantly at the mercy of undefined behaviour, causing a 
segfault, corrupting the heap, 



