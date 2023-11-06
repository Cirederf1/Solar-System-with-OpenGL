#include "pointlight.h"

PointLight::PointLight(glm::vec3 m_position, glm::vec3 m_color, float m_power)
    :position(m_position), color(m_color), power(m_power)
{

}


void PointLight::Bind(Shader *shader)
{
    shader->setUniform3fv("PointLightPosition", position);
    shader->setUniform3fv("PointLightColor", color);
    shader->setUniform1f("PointLightPower", power);
}
