#pragma once

/**
 * Provides utilities for debugging and testing with Loam
 * @author luciferoussky72
 * @note this header heavily uses reflection; it's therefore heavily commented because many C++ developers are unfamiliar
 * with the concept, and editor tooling has been slow to adopt it- at the time of writing, Clang is still mostly reflection-blind
 */

#include <type_traits>
#include <iostream>
#include <meta>

#include "imgui.h"

namespace loam {

    /**
     * Uses C++ reflection to log *ANY* object's values; yes, reflection is that powerful!
     * @note make sure to explicitly cast for polymorphic objects because reflection can't handle polymorphism
     * @tparam T the type to reflect over and print
     * @param obj the instance to log the values of
     * @param stream the stream to use; defaults to std::clog
     */
    template <typename T>
    requires std::is_aggregate_v<T>
    void log_object(const T& obj, std::ostream& stream = std::clog) {
        //get a static array of all the members in the struct
        static constexpr auto members = std::define_static_array(
            //the ^^ operator is the "reflection operator." it returns special metadata about a type that allows your code to know
            //certain things about itself
            //note: the reflection operator also gets called the "cat-ears operator" and "unibrow operator"
            std::meta::nonstatic_data_members_of(^^T, std::meta::access_context::unchecked())
        );

        //loop through all the members and print their names and values
        template for (constexpr auto m : members) {

            //get the type of the member to improve the logging
            using member_type = [:std::meta::type_of(m):];

            std::print(stream, "{}: ", std::meta::identifier_of(m));

            //enter a recursive call if the class has an instance of another class as its member
            if constexpr (std::is_aggregate_v<member_type>) {
                std::println(stream);
                log_object(obj.[:m:], stream);
            } else if constexpr (std::is_convertible_v<member_type, std::string>) {
                std::print(stream, "\"{}\"\n", obj.[:m:]);
            } else {
                //the [: :] operator is the "splicer," which basically is the opposite of the reflection operator
                //it takes some metadata and turns it back into a variable, so you can do things like obj.[:m:],
                //and it compiles to obj.id, obj.name, etc.
                //note: I sometimes call it the "carriage operator"
                std::print(stream, "{}\n", obj.[:m:]);
            }
        }
    }

    /**
     * Gets the name of a type as a string using reflection
     * @note reflection really is a game-changer for stuff like this as before you'd have to use macros for this
     * @tparam T the type name to get
     * @return the type name as an instance of std::string_view
     */
    template <typename T>
    consteval std::string_view type_name(T) {
        return std::meta::identifier_of(^^T);
    }
    /**
     * Gets the name of a type as a string using reflection
     * @note reflection really is a game-changer for stuff like this as before you'd have to use macros for this
     * @tparam T the type name to get
     * @return the type name as an instance of std::string_view
     */
    template <typename T>
    consteval std::string_view type_name() {
        return std::meta::identifier_of(^^T);
    }

    /**
     * Calls a function and prints its results for debugging purposes
     * @param function the function to call; must take one numeric argument
     * @param start the number to start with
     * @param stop the number to stop with
     * @param step the step to take between calls; defaults to 1
     * @param stream the stream to use; defaults to std::clog
     */
    template <typename T, typename F>
    requires std::is_arithmetic_v<T> and std::invocable<F, T>
    void step_through(F&& function, T start, T stop, T step = static_cast<T>(1), std::ostream& stream = std::clog) {
        for (; start <= stop; start += step) {
            std::println(stream, "Input: {} Result: {}", start, function(start));
        }
    }
}

