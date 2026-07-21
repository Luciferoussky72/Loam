#pragma once
#include <meta>
#include <expected>

#include <loam/Concepts.hpp>

namespace loam {
    /**
     * Gets an enum identifier as a string
     * @tparam E the enum or enum class the enum value belongs to
     * @param value the value within the enum that you want as a string
     * @return returns just the enumerator name, e.g. "East" rather than "Directions::East"
     */
    template <Enum E>
    constexpr std::expected<std::string_view, const char*> string_from_enum(E value) {
        //as this is constexpr, we can simply run a for loop over all members in the enum, looking for our match
        template for (constexpr auto e : std::define_static_array(std::meta::enumerators_of(^^E))) {
            if (value == [:e:]) {
                return std::meta::identifier_of(e);
            }
        }
        return std::unexpected("Couldn't find the enum value!");
    }

    /**
     * Gets an enum value from a string
     * @tparam E the enum to get the value from
     * @param string the string to get the identifier based on
     * @return either the enumerator value or an error instance if it can't find a match
     */
    template<Enum E>
    constexpr std::expected<E, const char*> enum_from_string(std::string_view string) {
        template for (constexpr auto e : std::define_static_array(std::meta::enumerators_of(^^E))) {
            if (string == std::meta::identifier_of(e))
                return [:e:];
        }
        return std::unexpected("Couldn't find an associated enum value!");
    }

    /**
     * Checks that a value actually belongs to an enum
     * @param value the value to check
     * @tparam E the enum to check
     * @return the value as the enum type if it's found, an unexpected instance if it's not
     */
    template <Enum E>
    constexpr std::expected<E, const char*> verify_enum(auto value) {
        template for (constexpr auto e : std::define_static_array(std::meta::enumerators_of(^^E))) {
            if ([:e:] == static_cast<E>(value)) {
                return static_cast<E>(value);
            }
        }
        return std::unexpected("Couldn't find the enum value!");
    }

    /**
     * Gets the number of members in the enum
     * @tparam E the enum to get the member count of
     * @return the number of members that E has
     */
    template <Enum E>
    consteval size_t enum_member_count() {
        return std::define_static_array(std::meta::enumerators_of(^^E)).size();
    }

}
