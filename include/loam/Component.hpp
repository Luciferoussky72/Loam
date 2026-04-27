#pragma once

namespace loam {
    class Entity;

    /**
     * A simple base class for defining components for Loam entities
     */
    class Component {
    public:
        virtual void update(Entity* e) {}
        virtual void draw(Entity* e) {}
        virtual ~Component() = default;
    };
} // loam