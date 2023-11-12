#include "camera.h"
#include "renderer.h"

Camera::Camera(float width, float height)
    :position(0,200,0), horizontalAngle(3.14), verticalAngle(0), FoV(80), width(width), height(height)
{
    computeMatrices(width, height);
}

void Camera::computeMatrices(float width, float height)
{

    glm::vec3 direction(
        cos(verticalAngle) * sin(horizontalAngle),
        sin(verticalAngle),
        cos(verticalAngle) * cos(horizontalAngle)
    );

    // Right vector
    glm::vec3 right = glm::vec3(
        sin(horizontalAngle - 3.14f/2.0f),
        0,
        cos(horizontalAngle - 3.14f/2.0f)
    );

    // Up vector : perpendicular to both direction and right
    glm::vec3 up = glm::cross( right, direction );


    // Projection matrix : 45&deg; Field of View, 4:3 ratio, display range : 0.1 unit <-> 100000 units
    projectionMatrix = glm::perspective(glm::radians(FoV), width/height, 0.1f, 100000.0f);
    // Camera matrix
    viewMatrix       = glm::lookAt(
        position,           // Camera is here
        position+direction, // and looks here : at the same position, plus "direction"
        up                  // Head is up (set to 0,-1,0 to look upside-down)
    );

}

void Camera::setFoV(float newFoV)
{
    FoV = newFoV;
}

const glm::mat4 &Camera::getViewMatrix() const
{
    return viewMatrix;
}

const glm::mat4 &Camera::getProjectionMatrix() const
{
    return projectionMatrix;
}

void Camera::Bind(Shader *shader)
{
    shader->setUniform3fv("camPosition", position);
}

void Camera::SetPosition(const glm::vec3& planetePosition, const glm::vec3& sunPosition, float planeteRadius)
{
    // Décalez la caméra de quelques mètres dans la direction opposée à la Terre
   glm::vec3 offset = (-20.0f - planeteRadius*2) * glm::normalize(planetePosition);
   position = planetePosition + offset;
   verticalAngle = 0;

   // Calculez l'angle entre la Terre et le Soleil
   glm::vec3 directionToSun = glm::normalize(sunPosition - planetePosition);
   float planetRotationAngle = atan2(directionToSun.x, directionToSun.z);

   // Ajoutez l'angle de rotation de la planète pour que la caméra regarde correctement la planète
   horizontalAngle = planetRotationAngle + glm::pi<float>();  // Utilisez le pi pour orienter la caméra dans la direction opposée
}


