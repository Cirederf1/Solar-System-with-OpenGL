#ifndef USERINTERFACE_H
#define USERINTERFACE_H

#include "pointlight.h"
#include "object.h"
#include <glm/glm.hpp>
#include <GLFW/glfw3.h>



class UserInterface
{
public:
    UserInterface(PointLight m_pl, Object m_o, GLFWwindow* window);
    void Bind(Shader* shader);
    void Draw();



protected:
    PointLight m_pl;
    Object m_o;
    glm::vec3 m_ambiantLightColor;
};

#endif // USERINTERFACE_H
