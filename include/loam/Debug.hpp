#pragma once

/**
 * Provides utilities for debugging and testing with Loam
 * @author luciferoussky72
 * @note this header heavily uses reflection; it's therefore heavily commented because many C++ developers are unfamiliar
 * with the concept, and editor tooling has been slow to adopt it- at the time of writing, Clangd is completely reflection-blind
 */
#include <type_traits>
#include <iostream>
#include <meta>

namespace loam {
    /**
     * Uses C++ reflection to log *ANY* class's values; yes, reflection is that powerful!
     * @note make sure to explicitly cast for polymorphic classes because reflection doesn't implicitly understand polymorphism
     * @tparam T the type to reflect over and print
     * @param obj the instance to log the values of
     * @param stream the stream to use; defaults to std::clog
     */
    template <typename T>
    requires std::is_aggregate_v<T>
    void log_class(const T& obj, std::ostream& stream = std::clog) {
        //get a static array of all the members in the struct
        static constexpr auto members = std::define_static_array(
            //the ^^ operator is the "reflection operator." it returns special metadata about a type
            //note: the reflection operator also gets called the "cat-ears operator" and "unibrow operator"
            std::meta::nonstatic_data_members_of(^^T, std::meta::access_context::current())
        );

        //loop through all the members and print their names and values
        template for (constexpr auto m : members) {
            //enter a recursive call if the class has a another class as its member
            if constexpr (std::is_aggregate_v<decltype(obj.[:m:])>) {
                log_class(obj.[:m:], stream);
            } else {
                //the [: :] operator is the "splicer," which basically is the opposite of the reflection operator
                //it takes some metadata and turns it back into a variable, so you can do things like obj.[:m:],
                //and it compiles to obj.id, obj.name, etc.
                //note: I sometimes call it the "carriage operator"
                stream << std::meta::identifier_of(m) << ": " << obj.[:m:] << '\n';
            }
        }
    }

    /**
     * Gets the name of a type using reflection
     * @note reflection really is a game-changer for stuff like this as before you'd have to use macros for this
     * @tparam T the type name to get
     * @return the type name as an instance of std::string view
     */
    template <typename T>
    constexpr std::string_view type_name() {
        return std::meta::identifier_of(^^T);
    }

    /**
     * Converts an enum identifier to a string
     * @tparam E the enum or enum class the enum value belongs to
     * @param value the value within the enum that you want as a string
     * @return returns just the enumerator name, e.g. "East" rather than "Directions::East"
     */
    template<typename E>
    requires std::is_enum_v<E>
    constexpr std::string_view enum_to_string(E value) {
        //as this is constexpr, we can simply run a for loop over all members in the enum, looking for our match
        template for (constexpr auto e : std::define_static_array(std::meta::enumerators_of(^^E))) {
            if (value == [:e:])
                return std::meta::identifier_of(e);
        }
        return "enum member is lost in Fairy Country. (enum member not found)";
    }
} // loam