#ifndef ORBIT_H
#define ORBIT_H

#include <GL/glew.h>
#include <glm/glm.hpp>
#include <vector>


class Orbit
{
public:

    Orbit(float r);
    void Draw();

protected:

    float radius;
    std::vector<glm::vec3> circleVertices;
    void generateCircleVertices();
};

#endif // ORBIT_H
