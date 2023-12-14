#ifndef POINTLIGHT_H
#define POINTLIGHT_H
#include <glm/glm.hpp>
#include "shader.h"


class PointLight
{
public:
    PointLight(glm::vec3 position, glm::vec3 color, float power);
    void Bind(Shader *shader);
    void Unbind();

    const glm::vec3 position;
    const glm::vec3 color;
    const float power;
};

#endif // POINTLIGHT_H
