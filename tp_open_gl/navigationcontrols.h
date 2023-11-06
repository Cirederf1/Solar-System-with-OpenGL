#ifndef NAVIGATIONCONTROLS_H
#define NAVIGATIONCONTROLS_H

#include "controls.h"

class NavigationControls : public Controls
{
public:
    NavigationControls(GLFWwindow* window, Camera *camera);
    void update(float deltaTime, Shader *shader);
private:
    glm::vec2 lastPosCursor;
};

#endif // NAVIGATIONCONTROLS_H
