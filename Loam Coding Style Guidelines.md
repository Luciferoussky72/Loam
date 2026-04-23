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


### 4. Prefer stack and Coil-allocated memory over heap memory where possible

Heap memory is slow to allocate and slow to free. That's a problem in gamedev, where you often need to hit tight frametimes. For that reason, Loam uses stack or Coil memory where possible to keep things fast.

###### Note: A Coil is a special class in Loam that works like a memory arena but with some extra features. Read Coil.hpp if you're curious about it

Both the stack and Coils allocate memory by simply moving a pointer. The heap has to talk to the OS to allocate memory, making it far slower.

###### "But wait, don't most objects have to use heap allocations in their constructors? Coil literally allocates heap memory in its constructor!"

Yes, but a good sign you're being responsible with the heap is if the only new and delete calls are in object constructors. Not only does this make your code more memory-safe, it makes heap
allocation pauses easier to reason about, as an object being constructed basically says "hey, the program may lag here because we're allocating heap memory"

Also, ideally you should load textures and other things into dynamic memory when your program starts. 
This keeps frame times predictable for the rest of your program, as, well, with no more heap allocations needed, 
there won't be more pauses from heap allocations!



## This file is likely to change as Loam and my own personal coding style evolve. For now though, this covers 90% of the coding conventions that come up on a day-to-day basis in Loam

