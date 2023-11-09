#include "orbit.h"

Orbit::Orbit(float r)
    :radius(r)
{
    generateCircleVertices();
}

void Orbit::Draw() {
    glBegin(GL_LINE_LOOP);

    for (const glm::vec3& vertex : circleVertices) {
        glVertex3f(vertex.x, vertex.y, vertex.z);
    }

    glEnd();
}

void Orbit::generateCircleVertices() {
        for (int i = 0; i < 360; i++) {
            float angle = glm::radians(static_cast<float>(i));
            float x = radius * glm::cos(angle);
            float y = radius * glm::sin(angle);
            circleVertices.emplace_back(x, 0.0f, y);
        }
    }
