#ifndef USERINTERFACE_H
#define USERINTERFACE_H

#include "pointlight.h"
#include "object.h"
#include "camera.h"

#include <glm/glm.hpp>
#include <GLFW/glfw3.h>



class UserInterface
{
public:
    UserInterface(PointLight* m_pl, Camera* camera, GLFWwindow* window, std::vector<Object *> planetes, Object* soleil);
    ~UserInterface();
    void Bind(Shader *shader);
    void Draw();
    float getRotationSpeed() const;
    int selectedPlanet = -1;




protected:
    PointLight *m_pl;
    float m_rotationSpeed;
    Camera *camera;
    std::vector<Object *> planetes;
    Object *soleil;

};

#endif // USERINTERFACE_H
