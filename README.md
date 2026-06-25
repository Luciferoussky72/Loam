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
segfault, corrupting the heap; there are lots of ways you can end up with a bad day in C++.

Loam is meant to be an "oasis in that wasteland," and accomplishes this with style guidelines, insistence on modern best practices, and even comes with safe 
wrappers like loam::NotNull for pointers, which guarantees in a that a pointer will never be null in a debug build but compiles down to raw pointer access in 
release builds!

### Quirks and Limitations of Loam

##### 1. Loam is a strictly non-mandating and minimalistic library

Loam does provide powerful tools for making indie games but is meant to be a "toolbox", not a "kit".

What this means is that Loam will never have any sort of entity management system, scene selection API, etc. because it is meant to leave things like that up 
to developers.

As an indie developer myself; I see this as a good thing. You can use Loam to make a classic object-oriented game architecture, a hyper-optimized data-oriented 
entity-component system so your game runs like butter on even ancient potato machines, or a strictly functional game architecture (good luck rendering things 
without mutating state).

That said, if you're looking for a more full-featured library, Loam may not be the library for you. Good luck finding one that better suits your purposes.

##### 2. Loam is an exception-free library, and actually is compiled without exceptions enabled at all

I wouldn't really call this a "limitation" within the world of gamedev (exceptions are not fun to code with and make specifically games really frustrating), 
but you should know that using Loam means that you'll have to work with its exception-free error handling methods.

If you absolutely need exceptions within your project, you can compile your version of Loam with the -fno-exceptions flag removed, but especially in gamedev 
there are many good reasons to not use exceptions at all.

If this is a dealbreaker for you, I would recommend reading the error-handling section of Loam Coding Guidelines.md to see if you still feel the same way after 
a more detailed explanation as to why Loam avoids them.

##### 3. Loam is a bleeding-edge library

Loam makes use of (at least currently) very new features like reflection. This means that Loam might not work at all if you're stuck with a compiler that hasn't 
caught up to C++26.

Thankfully, you can avoid this problem by just not including headers that use reflection syntax. Reflection is

##### 4. Loam is full of silly comments and fun references to Hilda to keep things lively

This one's just a quirk, not a limitation.

One of the core ideas behind Loam documentation is a fundamental rule:

###### Nobody wants to read dry documentation ######

Listen, we've all read boring documentation that goes something like this:
```c++
/**
 * Reads data from a file
 * @param file the file to read from
 * @warning the file must pass the RXQV-3000 test to be processed 
 * @return the data from the file
 */
file_data read_from(std::fstream file);
```

It's boring, you barely remember it, and you can feel your brain starting to seep out of your ears because you have no idea what an "RXQV-3000" test is.

Loam is meant to be the antithesis to boring documentation like that. In fact, there's a whole document dedicated to what various references to things like 
*Hilda* mean in the context of Loam code. For example, a "Time Worm" means data getting eaten by multithreading o

For example, here's the same function with a function comment like the ones in Loam:

```c++
/**
 * Reads in data from a file
 * @param file the file to read from (obviously)
 * @warning if the file doesn't pass the RXQV-3000 test (a weird name for a test for the magic numbers marking the start of it), this function will send your
 * program to Fairy Country!
 * @return the data from the file (i mean, what else would you expect?)
 */
file_data read_from(std::fstream file);
```
Loam is full of comments like this one with little jabs at silly things in parentheses, meta-comments about commenting itself, references to Hilda that map 
to various kinds of errors, etc.

One of the biggest pros of writing documentation like this, actually, is that people are far more likely to remember it. "Fairy Country" sticks in your head 
far better than "undefined behaviour", after all.

Despite all of that, if you are a gloomy person who eats dry oatmeal for breakfast and hates fun, Loam may not be the library for you. I am sorry.

