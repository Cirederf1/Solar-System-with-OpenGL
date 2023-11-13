#include "userinterface.h"
#include "./imgui/imgui.h"
#include "./imgui/backends/imgui_impl_glfw.h"
#include "./imgui/backends/imgui_impl_opengl3.h"

UserInterface::UserInterface(PointLight *pl, Camera *camera, GLFWwindow* window, std::vector<Object *> planetes, Object *soleil)
    :m_pl(pl),m_rotationSpeed(1.0f), camera(camera), planetes(planetes), soleil(soleil)
{

    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGui_ImplGlfw_InitForOpenGL(window, true);
    ImGui_ImplOpenGL3_Init("#version 330 core");
    ImGui::StyleColorsDark();

}

UserInterface::~UserInterface()
{
    // Nettoyer ImGui à la fin de la vie de l'objet
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();
}

float UserInterface::getRotationSpeed() const
{
    return m_rotationSpeed;
}


void UserInterface::Bind( Shader *shader) // Ce sera pour envoyer des uniformes aux shaders pour modifier le système (couleur ou bien planète par exemple)
{
    shader->setUniform3fv("PointLightColor", m_pl->color);
    shader->setUniform1f("PointLightPower", m_pl->power);
}

void UserInterface::Draw()
{
    const char* planetNames[] = { "Mercure", "Venus", "Terre", "Mars", "Jupiter", "Saturne", "Uranus", "Neptune" };


    // Démarrez une nouvelle frame ImGui
    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplGlfw_NewFrame();
    ImGui::NewFrame();

    // Définissez la position et la taille de la fenêtre ImGui
    ImGui::SetNextWindowPos(ImVec2(0, 0), ImGuiCond_Always);
    ImGui::SetNextWindowSize(ImVec2(450, 350), ImGuiCond_Always);

    // Démarrez la fenêtre ImGui en désactivant la possibilité de redimensionner
    ImGui::Begin("Hello, Florent!", nullptr, ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoResize);

    // Sélection de la planète à suivre
    ImGui::Text("Sélectionnez une planète :");

    for (int i = 0; i < 8; ++i)
    {
        if (ImGui::RadioButton(planetNames[i], &selectedPlanet, i))
        {
        }
    }

    // Si une des planètes est selectionnée, la caméra la suit
    if (selectedPlanet != -1)
    {
        camera->SetPosition(planetes[selectedPlanet]->position, soleil->position, planetes[selectedPlanet]->radius);
    }

    // Caméra libre
    if (ImGui::Button("Caméra Libre")) {
        selectedPlanet = -1;
    }

    // Float Slider pour gérer la vitesse de l'application
    ImGui::SliderFloat("Rotation Speed", &m_rotationSpeed, 0, 2);

    // Couleur de la source de lumière
    ImGui::ColorEdit3("Clear Color", (float*)&m_pl->color);

    // Int Slider pour gérer la puissance de la lumière
    ImGui::SliderFloat("Luminosité", (float*)&m_pl->power, 0, 10000);

    // Fin de la fenêtre
    ImGui::End();

    // Rendu de l'interface utilisateur ImGui
    ImGui::Render();

    // Rendu de l'interface utilisateur dans la fenêtre principale GLFW
    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
}


