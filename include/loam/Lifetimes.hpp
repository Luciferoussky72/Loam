#pragma once

namespace loam {
    /**
     * This class is meant to encode "borrowing" a type, in that you're taking a temporary reference to a type that won't escape
     * a function's scope
     * @author luciferoussky72
     * @note C++ is a spartan language in its scoping conventions. While this is meant to encode that a reference doesn't escape
     * a function call, it takes discipline to ensure it's used as intended
     * @tparam T the type that the object stores
     */
    template <typename T>
    class Borrow {
    public:
        [[nodiscard]] Borrow(T* ptr) : raw_ptr(ptr) {

        }

        Borrow(const Borrow&) = delete("Deleted so borrows can't easily escape the current scope.");
        Borrow& operator=(const Borrow&) = delete("Deleted so borrows can't easily escape the current scope.");
        Borrow(Borrow&&) = delete("Deleted so borrows can't easily escape the current scope.");
        Borrow& operator=(Borrow&&) = delete("Deleted so borrows can't easily escape the current scope.");



    private:
        T* raw_ptr;
    };
}