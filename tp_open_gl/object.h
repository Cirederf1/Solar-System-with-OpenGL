#ifndef OBJECT_H
#define OBJECT_H

#include <string>

#include <glm/glm.hpp>

#include "vertexbuffer.h"
#include "vertexarray.h"
#include "texture.h"
#include "uvbuffer.h"
#include "shader.h"

class Object
{
public:
    Object(std::vector< glm::vec3 > vertices, std::vector< glm::vec2 > uvs, std::string texturePath);
    Object(std::vector< glm::vec3 > vertices, std::vector< glm::vec2 > uvs, std::vector< glm::vec3 > normales,std::string texturePath);
    Object(const char * objPath, std::string texturePath, bool isCircle);
    Object(const char * objPath, std::string texturePath);

    ~Object();
    void Bind() const;
    void Unbind() const;
    void Draw() const;
    void Update(float currentTime, float deltaTime, float speed);

    glm::vec3 position;
    glm::vec3 rotationAngles;

    float radius;
    float period;
    float inclinaison = 0;
    float rotationSpeed = 1;
    float orbital_radius;
    glm::vec3 orbital_center;


    glm::mat4 getModelMatrix();

private:
    VertexBuffer *m_vb;
    UVBuffer *m_uvsb;
    Texture *m_texture;
    VertexBuffer *m_normalsb;

    bool loadOBJ(const char *path, std::vector<glm::vec3> &out_vertices,
    std::vector<glm::vec2> &out_uvs, std::vector<glm::vec3> &out_normals);
    bool loadCircleOBJ(const char* path, std::vector<glm::vec3>& out_vertices, std::vector<glm::vec2>& out_uvs);


};

#endif // OBJECT_H
