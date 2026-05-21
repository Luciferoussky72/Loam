## Loam Coding Style Guidelines

### 1. Don't argue about petty style differences

I write braces like this, on the same line as the statement:
```c++
    if (true) {
        do_stuff();
    }
```

Some other people write braces like this, making sure the opening and closing brace line up:
```c++
    if (true)
    {
        do_stuff();
    }
```

And yet still other people write them like this, with no space after the closing parenthesis:
```c++    
    if (true){
        do_stuff();
    }
```

**Let me ask; does it actually matter?** I get that there are some arguments that a certain style is better for readability, but
**really the debate just boils down the personal preference.**

The one place it actually does matter is when you have a production library or codebase where consistency is more valuable.
Thankfully, **that's the kind of problem you can solve in about five minutes with a text-replace tool**.

Long-story-short, don't wage wars over petty style differences. Whether it's The One True Brace Style or something like
how to declare pointers; arguing with people over style differences that are really just personal preference is a waste of time.

### 2. That said, if you're style-agnostic, here are the petty style conventions in Loam:

#### Note that as Loam is mostly developed by me (luciferoussky72), these are reflective of my personal style conventions

##### Curly braces should be on the same line as the statement they're associated with:
```c++
if (true) {
    do_stuff();
}
```

##### Put a space after if, while, for, and do, and no space after function names:
```c++
while (x <= 10) x++;
x = func(x);
```

##### Declare pointers with the asterisk attached to the type:
```c++
int* ptr = &x;
```

This makes it clear that ptr is a pointer-to-int.
Do note that one of the classic arguments against this style for declaring pointers is cases like this:
```c++
int* x, y;
```

Here, x is a pointer-to-int while y is just a normal int. That said, I see this as more of a pro than a con. I 
dislike multiple declarations on one line, and this helps discourage them

##### Avoid multiple declarations on one line:
```c++
int x = 50;
int y = 100;
```

is much cleaner than:
```c++
int x = 50, y = 100;
```

##### Declare public members of a class first; they're what the people using the class actually care about:
```c++
class Foo {
public:
    Foo(int n) : n(n) {}
private:
    int n;
};
```

### 3. Passing conventions are the weird hill I die on

Okay, maybe it's not a super weird hill, but this is still something I'm very insistent about. 

Basically, C++ gives you a lot of ways to pass variables to functions; which is great, I'm not denying that, but I have some pretty strict ground rules about how to use each, and Loam uses only four of them:

##### Passing by value:
```c++
    //this is the syntax for passing by value
    void func(int x);
```
This should be used where the function needs simply to read data from, or a local copy of the variable. It doesn't necessarily need to change the variable for a pass-by-value to be valid.

You should pass by value when the variable is less than 8-16 bytes in size. At that point, passing by constant reference becomes a better option unless it's useful or required to have a local copy of the variable
in the function.

##### Passing by constant value (don't do this):
```c++
    //this is the syntax for passing by constant value
    void func(const int x);
```

I hate this method of passing variables. It literally does nothing useful. When a variable is passed by value, constant or not, the function already gets a local copy of the variable, so making the variable constant
in the function signature literally just means that the function cannot modify its local copy.

**Loam never uses this syntax. You shouldn't either.**

##### Passing by **constant** reference:
```c++
    //this is the syntax for passing by constant reference
    void func(const int& x);
```

This should be used when the variable is more than 8-16 bytes in size **AND** function doesn't need a local copy of the variable, just to read data from it.

Do note that in the case of passing objects by constant reference, a method must be marked const to be callable via the constant reference:
```c++
    //this is the syntax for declaring a method as const
    int get_value() const;
```

##### Passing by pointer:
```c++
    //this is the syntax for passing by pointer
    void func(int* x);
```

Passing by pointer should be done when your function modifies the variable passed to it. This is a convention observed throughout Loam to make code easier to read.

I elaborate more as to why this is the case when I talk about passing by mutable reference, so read that if you want to understand why this is the convention.

###### Always remember to check for nullptr! 
###### Also, fun fact: C++ compilers are usually smart enough to optimize out checks for nullptr, so there is no reason to not check

##### Passing by **nonconstant/mutable** reference (you should only do this in very specific situations):
```c++
    //this is the syntax for passing by nonconstant/mutable reference
    void func(int& x);
```

Unlike passing by value, passing by mutable reference means the function gets to modify the original copy of the variable passed to it. Plus, unlike passing by pointer, there's no address-of operator needed! 
Sounds pretty great! 

Unfortunately, while passing by mutable reference has its uses, I think avoiding it in most situations is a very helpful style choice. There's a pretty simple reason for that:

###### **Call-Site-Clarity**

As we've established, parameters should be passed by value or constant reference when passed immutably, and pointer when passed mutably:
```c++
    immutative_function(x);
    mutative_function(&x);
```

This creates that magical stuff called Call-Site-Clarity. At a glance, you can now tell whether a function mutates a value or not.

The thing about passing by mutable reference is that it ruins that. The syntax for passing by mutable reference looks identical to passing by constant reference and value.

Solution? Passing by mutable reference is banned outside of one exception:

###### Operator overloads
```c++
    //an operator overload for the send-to-stream operator that uses mutable references
    friend std::ostream& operator<<(std::ostream& os, const Foo& foo);
```

Operator overloads are made to be ergonomic, and using pointers flies in the face of that, so you're free to use mutable references on an as-needed basis in operator overloads. 
Still use constant references where you can in operator overloads though.

###### "But I understand code even when it uses mutable references!"

Okay. Cry me a river. Loam does not use mutable references outside of operator overloads. If you don't like the convention, you can always edit your copy of the source code.
That said, I must highlight that Google's C++ style guide actually has this same convention, so this isn't by any means some esoteric convention exclusive to Loam.


##### Passing by **constant** pointer (don't do this ever):
```c++
    //this is the syntax for passing by constant pointer
    void func(const int* x);
```

There is... quite literally no reason to pass values like this. You can get the same effect by just passing by constant reference, and that won't require the address-of operator.

Because this also breaks the established Call-Site-Clarity conventions, passing by constant pointer is banned in Loam. Never do it.


### 4. Prefer stack and custom-allocated memory over heap memory where possible

Heap memory is slow to allocate and slow to free. That's a problem in gamedev, where you often need to hit tight frametimes. 
For that reason, Loam uses stack memory or memory from custom allocators where possible to keep things fast.

###### Note: Loam's current custom allocators include:
###### Cache - A fixed-size heap array wrapper
###### Coil - A memory allocator for trivially destructible types

Both the stack and most custom allocators allocate memory by simply moving a pointer. 
The heap has to talk to the OS to allocate memory, making it orders of magnitude slower.

###### "But wait, don't most objects have to use heap allocations in their constructors? Coil and Cache literally allocate heap memory in their constructors!"

Yes, but a good sign you're being responsible with the heap is if the only new and delete calls are in object constructors. 
Not only does this make your code more memory-safe, it makes heap allocation pauses easier to reason about, as an object, especially a memory 
allocator, being constructed basically says "hey, the program may lag here because we're allocating heap memory!"

Also, ideally you should load textures and other things into dynamic memory when your program starts. 
This keeps frame times predictable for the rest of your program, as, well, with no more heap allocations needed, 
there won't be more pauses from heap allocations!

### 5. Error handling

The first and foremost rule of error handling in Loam is to ***never use exceptions***; in fact, Loam is compiled with -fno-exceptions, 
so you have to use other methods of handling errors.

Now, you may ask, "why?" (The great part about writing documentation is that I can put words in your mouth and you can't stop me, muahaha!)

I'll tell you why. Exceptions suck. I'm not kidding. There are lots of arguments against them, but I'll go over the most common ones here:

##### 1. They're basically a goto in disguise

So, it's pretty widely agreed that the following bit of code is badly structured code:

```c++

if (status) {
    status = do_stuff_that_might_fail();
    if (status == ERROR) goto cleanup;
}

cleanup:
cleanup_stuff();
```

So why is code using exceptions any different?

```c++

if (status) {
    try {
        do_stuff_that_might_fail();
    } catch (const std::exception& e) {
        cleanup_stuff();
    }
}
```

The thing is also that when actually writing code outside of examples, exceptions are a far bigger nightmare than this. When your code 
uses them, you're constantly calling into functions and potentially causing unbounded jumps all over the call graph.

##### 2. In practice, they actually make error handling *harder*, not easier

You heard that right. Here's the thing about exceptions; when you throw, the runtime goes through this process called "stack unwinding" 
where it looks at a bunch of tables and figure out how to trace its way up the call tree from where you threw. Along the way, it calls 
destructors and tries to keep the stack in order.

The catch is that stack unwinding isn't magic. In fact, it's entirely blind to what's happening on the heap, so using exceptions is a 
very easy way to send your program to The Void of No Return.

For this reason, I find it way harder to actually properly deal with errors when using exceptions.

##### 3. In theory, they're a zero-cost abstraction, but they're not in practice

The big assumption I see around exceptions is that it's a zero-cost abstraction if you don't ever throw. While this seems reasonable, 
and it is technically true *at runtime*, exceptions can actually make your code slower by a significant margin compared to other 
methods of error handling.

One of the reasons for this is that there's this part of the compiler called the "optimizer," and an optimizer is a serious thing. For 
example, take this code snippet from Loam's Math header:

```c++
size_t below = static_cast<size_t>(n);
size_t above = below + 1;
float percent = n - below;
return SQRT_TABLE[below] + percent * (SQRT_TABLE[above] - SQRT_TABLE[below]);
```

The optimizer is smart enough to see that we're creating below, above, and percent and just using them to immediately compute the return 
value. Because of that, the optimizer is able to just store the variables in CPU caches or even roll it all into one expression, which 
ends up being faster. It's actually one of the pros of writing code in a compiled language like C++; you can write clear code that's 
easy to scan through and understand and the optimizer optimizes it down to the spaghetti instructions you would have written in a 
scripting language like Python or Lua:
```python
return SQRT_TABLE[int(n)] + (n - int(n)) * (SQRT_TABLE[int(n) + 1] - SQRT_TABLE[int(n)])
```

```lua
return SQRT_TABLE[flr(n)] + (n - flr(n)) * (SQRT_TABLE[flr(n) + 1] - SQRT_TABLE[flr(n)])
```

Optimizer fun facts aside, they also do this thing called "branch prediction." I'll spare you the technical details, but in a nutshell;
if the compiler can safely assume that a certain code path is more likely to be taken, it can optimize around that assumption.

Now, here's the catch; using exceptions absolutely slaughters branch prediction. It stops the compiler from being able to assume that code 
follows linear execution, so branch prediction has to be a lot more conservative if you use them.

While exceptions aren't zero-cost in other ways, like that they bloat binary size somewhat, the biggest issue is that because they stunt 
branch prediction, even if your code never throws, you still pay a price, which is especially annoying in gamedev where you want to hit 
consistent and often very tight frametimes.

#### Alright, I get it. Exceptions suck; but what should I use instead?

Glad you asked! Modern C++ actually has lots of great alternatives to exceptions. There are four main methods that Loam uses.

##### 1. SDL_Log

A simple SDL_Log message often works for trivial things that aren't grounds for completely halting the program.

As for why Loam mostly uses SDL_Log instead of something like std::clog or something is that SDL_Log is platform-aware. If the user is on 
a platform without a proper output terminal, the output from std::clog is not likely to go anywhere useful. Meanwhile, SDL_Log logs to 
the appropriate logs for the system, such as log files on iOS.

##### 2. Boolean return values

A convention used by SDL3 is to have functions that might fail return true on success and false on failure. This convention is present in 
Loam as well as it comes with the big pro of being able to structure code like this:

```c++
if (do_stuff_that_might_fail()) {
    //normal path
} else {
    cleanup_stuff();
}
```

Or like this:

```c++
if (!do_stuff_that_might_fail()) {
    cleanup_stuff();
}
//normal path
```

This allows you to very easily structure error-resilient code, and if you read Loam's headers, you'll see it all over the place for things 
like texture loading, file IO, etc.

##### 3. std::expected

This is basically an error object built into C++'s type system, and probably one of my favorite modern C++ features. It basically means 
"this function should probably return properly, but it might error, so be ready for that." 

The nice thing about std::expected is that it's kind of like boolean return values but for return values. It forces whatever called your 
function to account for the fact that the function might fail.

##### 4. assert

Good ol' assert. So, while this isn't technically "error handling" as much as it is a macro for debugging, it's worth mentioning. Loam 
uses assert liberally all over the library to catch logic errors that shouldn't be present in release code at all. It's used for things 
like out-of-range on containers because that is really something that should never be happening.

The other great thing about assert is that it goes away entirely in release builds, which is especially great for gamedev where you need 
code that runs *fast*.

## This file is likely to change as Loam and my own personal coding style evolve. For now though, this covers 90% of the coding conventions that come up on a day-to-day basis in Loam

