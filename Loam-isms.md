## Loam-isms explained


### Preface
Over time, I've developed a bit of my own terminology for writing memorable function comments and technical documentation.
This document serves to explain those, although you don't strictly need to read this to understand Loam documentation,
you'll probably appreciate the references more for reading this!

### The References to *Hilda*:

#### Many of the references in Loam are references to *Hilda*, the graphic novel and Netflix series. If you can't tell, I'm a huge fan

#### "The Void of No Return"
This describes possible memory bugs that are undefined behavior. It may crash outright or silently corrupt the heap
and crash randomly elsewhere. Loam documents most-all functions that could cause your program to "enter" The Void of No Return.

Corrupting the heap is especially bad as it usually *doesn't* immediately crash the program. Instead, the program will crash 500 lines 
later somewhere completely unrelated.

The reference came about because entering The Void of No Return in Hilda means your fate is in peril, which feels like an apt
way to describe memory bugs in C++


#### "Fairy Country" and descriptions adjacent to it, like "The Fairy Isles"
This describes instability ***not*** caused by memory bugs, like invalidating references or corrupting data that functions rely on.
It's above things like loam::random_device, and basically means that you shouldn't mess with the data it's describing.

While Fairy Country style instability is similar to Void of No Return instability in that it might work for a while,
the difference is that "The Void of No Return" describes pointer and memory issues while "Fairy Country" describes things like 
hanging references, corrupted data, etc.

In Hilda, Fairy Country is a place where little makes sense. Terrain floats; mushrooms grow as tall as buildings; the sun never sets. 
Because of that, it's a fitting way to describe errors caused by non-memory issues, as often you end up with a mind-boggling error 
message for Fairy Country issues or the program doesn't work as intended in some ridiculous way

#### "Nowhere Space" and anything involving "nisse"
This is used to describe possible memory leaks you could cause and should be careful about. While Loam is mostly memory-safe by 
design, there are still occasional situations where it's reasonable that somebody could accidentally cause a memory leak, and this
language describes memory leaks.

"Nowhere Space" in Hilda is a special sort of space that a creature called a "nisse" (look up the IPA to pronounce it correctly) can enter.
It's a manifestation of the unused space in a building, so it actually works rather well as a metaphor for how a memory leak happens. 
You'll see fairly often in Loam comments that a memory leak will lead to a "nisse taking the memory," which is honestly rather accurate. 
Nisse in Hilda take things that they see people are no longer using, and hey, it's a fun scene to imagine someone lives in your RAM and
takes the memory lost to memory leaks.

#### Anything involving "Time Worms"
This describes race conditions caused by multithreading as well as data that gets eaten via shallow copies and being careless with data. 
There is some overlap with Void of No Return and Fairy Country errors, but Time Worm errors don't necessarily describe memory errors, 
they describe *data errors*, where data is *unexpectedly* corrupted.

The reference is derived from the episode in Hilda where Hilda herself encounters a Time Worm, which is an entity that exists to erase 
remnants of timelines that no longer exist. As described in *Hilda's Book of Beasts and Spirits*, 
"The chances of surviving a Time Worm attack are almost zero," so "Time Worm" is a fitting way to describe these kinds of errors
that are likely to outright crash or even worse, let your program keep running in a compromised state.

#### Tide Mice
This describes warnings about undefined behaviour. I'm not the first to admit that C++ having undefined behaviour is a double-edged sword. While it does let the 
compiler optimize by assuming it never happens, if you accidentally cause undefined behaviour, you can very easily cause bugs that drive you stark-raving mad. 

Tide Mice in Hilda are creatures summoned by a seemingly innocuous enchantment that gives your friends good luck. Hilda finds it in a book called "How to Aid 
and Keep thy Friends Forever" and uses it to help her friend and mum. Unfortunately, the enchantment is ...a bit more than she bargained for, and she's now 
about to accidentally steal their souls! I guess that's one way to keep your friends forever... Anyway, the reference kind of writes itself; both Tide Mice and 
undefined behaviour seem harmless but turn into way more than you bargained for.

#### "Captured by a theater-loving merman"
This describes any errors that don't fit into any of the above categories.

The references comes from how in an episode of Hilda; Hilda, Frida, David, and Louise are captured by a theater-loving merman named 
Eugene. It's a rather undesirable situation, so I use this reference to capture any errors that don't warrant a whole category.


### General Programming References:

#### These are mostly just fun names that serve as shorthand for various concepts in programming. 

#### The Four Horsemen 
This describes static_assert, requires, assert, and segfaults. Why are these "The Four Horsemen?" Well, they're basically harbingers of the 
"apocalypse" in C++, where your program either fails to compile or crashes at runtime. I use "The Four Horsemen" a lot when talking about
error handling in Loam and C++ in general. static_assert, requires, and assert are used liberally to make Loam ergonomic to use and easy
to debug.

#### The Four Yorkshiremen
This phrase describes templates, concepts, consteval, and reflection. These four are some of C++'s most powerful features; respectively, 
they let you;

write generic code that works with practically any type and gets optimized for each type;

constrain said generic code to only certain types or kinds of types;

compute variables at compile-time to reduce runtime overhead;

reflect over types and remove most of the boilerplate that was previously needed to do that.

Why "The Four Yorkshiremen?" It's a reference to a Monty Python sketch:

"You were lucky. We lived for three months in a brown paper bag in a septic tank.
We used to have to get up at six o'clock in the morning, clean the bag, eat a crust of stale
bread, go to work down the mill for fourteen hours a day; week in, week out. When we
got home, our Dad would thrash us to sleep with his belt!"

Rewritten the perspective of a C++ developer:

"You kids are lucky. For thirty years we had to use macros to fake reflection on types.
We used to have to write a five-hundred line macro, remember to use it, debug it until it finally worked properly, 
then cross our fingers and hope nobody would use the macro wrong and ruin the source. When we got home, 
we'd get calls that some idiot had used the macro wrong."

The joke is that in the original sketch, despite the Four Yorkshiremen being rich now, they still have a sense of nostalgia for when 
things were hard, which is hilariously accurate to how many C++ developers (myself included) feel about modern language features.