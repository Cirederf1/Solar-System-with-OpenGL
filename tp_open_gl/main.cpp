#include <iostream>
#include <filesystem>

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include "glm/glm.hpp"
#include <vector>

#include "vertexbuffer.h"
#include "vertexarray.h"
#include "shader.h"
#include "renderer.h"
#include "camera.h"
#include "navigationcontrols.h"
#include "fpscontrols.h"
#include "pointlight.h"
#include "object.h"
#include "userinterface.h"

#include "imgui/imgui.h"
#include "imgui/backends/imgui_impl_glfw.h"
#include "imgui/backends/imgui_impl_opengl3.h"



using namespace std;

int main()
{
    // Chemin du projet // Attention, changer le nom du dossier final
    string path = std::filesystem::current_path().parent_path().string() + "/tp_open_gl";


/////////////////////////Initialisation de GLFW/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    if(!glfwInit()){
        fprintf(stderr, "Failed to initialize GLFW\n");
        return -1;
    }


    glfwWindowHint(GLFW_SAMPLES, 4); //antialiasing
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3); //version 3.3
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE); //version core

    // Cull triangles which normal is not towards the camera
    glEnable(GL_CULL_FACE);


/////////////////////////Ouverture de la fenêtre/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //définition de la taille de la fenêtre
    int width=600;
    int height=600;

    //On récupère les dimensions de l'écran pour créer la fenètre
    GLFWmonitor* primary = glfwGetPrimaryMonitor();
    glfwGetMonitorWorkarea(primary,nullptr,nullptr, &width, &height);

    //Enfin on crée la fenêtre
    GLFWwindow* window = glfwCreateWindow(width,height,"OpenGL_API",NULL,NULL);
    glfwSwapInterval(1);
    //On vérifie que l'initialisation a bien marché
    if (window==NULL){
        fprintf(stderr, "Erreur lors de la création de la fénêtre\n");
        glfwTerminate();
        return -1;
    }

    //Enfin on définit la fenêtre créée comme la fenêtre sur laquelle on va dessiner
    glfwMakeContextCurrent(window);


/////////////////////////Initialisation de GLEW/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //Initialisation de GLEW
    glewExperimental=true;
    if (glewInit() != GLEW_OK){
        fprintf(stderr, "Erreur lors de l'initialisation de GLEW\n");
        return -1;
    }


/////////////////////////On crée un Renderer/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Renderer renderer;


/////////////////////////On crée les Shaders/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    Shader shader(path+"/shaders/SimpleVertexShader.vertexshader", path+"/shaders/SimpleFragmentShader.fragmentshader");
    Shader shaderSphere(path+"/shaders/SphereSimpleVertexShader.vertexshader", path+"/shaders/SphereSimpleFragmentShader.fragmentshader");

/////////////////////////On crée un vertex array/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    VertexArray va;
    va.Bind();


/////////////////////////Création des objets/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    const char* objPath;
    std::string objPathString;
    std::string texturePath;

    /*_______________________________________________________________________________________*/

    objPathString = path + "/obj/orbite.obj";
    objPath = objPathString .c_str();
    texturePath = path+"/textures/blanc.jpg";

    Object orbite(objPath, texturePath);
    Object orbite_moon(objPath, texturePath);

    /*_______________________________________________________________________________________*/

    objPathString = path + "/obj/sphere.obj";
    objPath = objPathString .c_str();
    texturePath = path+"/textures/systeme/galaxy.jpg";

    Object sky(objPath, texturePath);
    sky.radius = 10000.0;


    /*_______________________________________________________________________________________*/
    objPathString = path + "/obj/sphere.obj";
    objPath = objPathString .c_str();
    texturePath = path+"/textures/systeme/soleil.jpg";

    Object soleil(objPath, texturePath);
    soleil.position = {0.0f, 0.0f, 0.0f};
    soleil.radius = 100.0;


    /*_______________________________________________________________________________________*/
    objPathString = path + "/obj/sphere.obj";
    objPath = objPathString .c_str();
    texturePath = path+"/textures/systeme/terre.jpg";

    Object terre(objPath, texturePath);
    terre.radius = 2.5;
    terre.period = 60; // Fais le tour du Soleil en 60 sec
    terre.orbital_radius = 149.6 + soleil.radius;
    terre.orbital_center = soleil.position;
    terre.inclinaison = glm::radians(23.0f);


    /*_______________________________________________________________________________________*/

    texturePath = path+"/textures/systeme/moon.jpg";

    Object moon(objPath, texturePath);
    moon.radius = 0.7;
    moon.period = 5;
    moon.orbital_radius = terre.radius + moon.radius + 5.0;


    /*_______________________________________________________________________________________*/

    texturePath = path+"/textures/systeme/mercury.jpg";

    Object mercure(objPath, texturePath);
    mercure.radius = 1.0;
    mercure.period = 23.0;
    mercure.orbital_radius = 57.91 + soleil.radius;
    mercure.orbital_center = soleil.position;


    /*_______________________________________________________________________________________*/

    texturePath = path+"/textures/systeme/venus.jpg";

    Object venus(objPath, texturePath);
    venus.radius = 2.5;
    venus.period = 43.0;
    venus.orbital_radius = 108.21 + soleil.radius;
    venus.orbital_center = soleil.position;
    venus.inclinaison = glm::radians(177.0f);


    /*_______________________________________________________________________________________*/

    texturePath = path+"/textures/systeme/mars.jpg";

    Object mars(objPath, texturePath);
    mars.radius = 1.35;
    mars.period = 91.1;
    mars.orbital_radius = 227.94 + soleil.radius;
    mars.orbital_center = soleil.position;
    mars.inclinaison = glm::radians(25.0f);


    /*_______________________________________________________________________________________*/

    texturePath = path+"/textures/systeme/jupiter.jpg";

    Object jupiter(objPath, texturePath);
    jupiter.radius = 28.0;
    jupiter.period = 321.0;
    jupiter.orbital_radius = 778.41 + soleil.radius;
    jupiter.orbital_center = soleil.position;
    jupiter.inclinaison = glm::radians(3.0f);


    /*_______________________________________________________________________________________*/

    texturePath = path+"/textures/systeme/saturn.jpg";

    Object saturn(objPath, texturePath);
    saturn.radius = 23.5;
    saturn.period = 527.7;
    saturn.orbital_radius = 1426.72 + soleil.radius;
    saturn.orbital_center = soleil.position;
    saturn.inclinaison = glm::radians(26.73f);


    /*_______________________________________________________________________________________*/

    objPathString = path + "/obj/ring.obj";
    objPath = objPathString .c_str();
    texturePath = path+"/textures/systeme/saturn_ring.png";

    Object saturn_ring(objPath, texturePath);
    saturn_ring.radius = 23.5;
    saturn_ring.period = 527.7;
    saturn_ring.orbital_radius = 1426.72 + soleil.radius;
    saturn_ring.orbital_center = soleil.position;
    saturn_ring.inclinaison = glm::radians(26.73f);


    /*_______________________________________________________________________________________*/

    objPathString = path + "/obj/sphere.obj";
    objPath = objPathString .c_str();
    texturePath = path+"/textures/systeme/uranus.jpg";

    Object uranus(objPath, texturePath);
    uranus.radius = 10.0;
    uranus.period = 1163.5;
    uranus.orbital_radius = 2870.97 + soleil.radius;
    uranus.orbital_center = soleil.position;
    uranus.inclinaison = glm::radians(98.0f);


    /*_______________________________________________________________________________________*/

    texturePath = path+"/textures/systeme/neptune.jpg";

    Object neptune(objPath, texturePath);
    neptune.radius = 10.0;
    neptune.period = 1808.2;
    neptune.orbital_radius = 4498.25 + soleil.radius;
    neptune.orbital_center = soleil.position;
    neptune.inclinaison = glm::radians(28.0f);


/////////////////////////Création d'un vecteur contenant toutes les planètes////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    std::vector<Object*> planets;
    planets.push_back(&mercure);
    planets.push_back(&venus);
    planets.push_back(&terre);
    planets.push_back(&mars);
    planets.push_back(&jupiter);
    planets.push_back(&saturn);
    planets.push_back(&uranus);
    planets.push_back(&neptune);



/////////////////////////Création d'une source de lumière////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    glm::vec3 lightPosition;
    lightPosition = soleil.position;
    glm::vec3 lightColor(1.0f, 1.0f, 1.0f);
    float lightPower = 1000.0f; // Puissance de la lumière

    PointLight lightSource(lightPosition, lightColor, lightPower);


/////////////////////////On crée la camera/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Camera cam(width, height);

/////////////////////////Création de la fenêtre IMGUI/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    UserInterface ui(&lightSource, &cam, window, planets, &soleil);

/////////////////////////Création des contrôles/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    NavigationControls controls(window, &cam, ui);
//    FPSControls controls(window,&cam);


/////////////////////////Création de la matrice MVP/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    cam.computeMatrices(width, height);
    glm::mat4 m ;
    glm::mat4 v = cam.getViewMatrix();
    glm::mat4 p = cam.getProjectionMatrix();

    glm::mat4 mvp;


/////////////////////////Boucle de rendu/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    // Assure que l'on peut capturer les touche de clavier
    glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);

    //On indique la couleur de fond
    glClearColor(0.0f, 0.0f, 0.0f, 0.0f);

    //On autorise les tests de profondeur

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    ////////////////On déclare les variables///////////////

    float lastTime = glfwGetTime();
    float currentTime, deltaTime;
    float speed;

    float x,y,z;

    glm::mat4 M_prime;
    glm::vec3 camPos;
    glm::mat4 scalingMatrix;


    while(glfwGetKey(window, GLFW_KEY_ESCAPE) != GLFW_PRESS && !glfwWindowShouldClose(window)){

        ////////////////On récupère les variables///////////////

        currentTime = glfwGetTime();
        deltaTime = (currentTime-lastTime);
        lastTime = currentTime;

        speed = ui.getRotationSpeed();


        ////////////////On commence par vider les buffers///////////////
        renderer.Clear();

        ////////////////Bind le shader des objets///////////////
        shader.Bind();

        // Utilisez la source de lumière en appelant Bind avec votre shader
        lightSource.Bind(&shader);

        ////////////////Détermination de la matrice MVP et envoie vers les shaders///////////////
        cam.computeMatrices(width, height);

        v = cam.getViewMatrix();
        p = cam.getProjectionMatrix();

        x= cam.position.x;
        y= cam.position.y;
        z= cam.position.z;

        //////////////Envoie de la position de la caméra vers le shader///////////////
        camPos = {x,y,z};
        shader.setUniform3fv("CamPosition", camPos);


        ////////////////Dessin de l'objet terre/////////////////////

        //Mise à jour de la position
        terre.Update(currentTime, deltaTime, speed);
        terre.orbital_center = soleil.position;

        //Mise à jour de taille
        m = terre.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(terre.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shader.setUniformMat4f("MVP", mvp);
        shader.setUniformMat4f("m", m);

        //Dessin
        renderer.Draw(va, terre, shader);


        ////////////////Dessin de l'objet lune/////////////////////

        //Mise à jour de la position
        moon.Update(currentTime, deltaTime, speed);
        moon.orbital_center = terre.position;

        //Mise à jour de taille
        m = moon.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(moon.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shader.setUniformMat4f("MVP", mvp);
        shader.setUniformMat4f("m", m);

        //Dessin
        renderer.Draw(va, moon, shader);


        ////////////////Dessin de l'objet mercure/////////////////////

        //Mise à jour de la position
        mercure.Update(currentTime, deltaTime, speed);
        mercure.orbital_center = soleil.position;

        //Mise à jour de taille
        m = mercure.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(mercure.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shader.setUniformMat4f("MVP", mvp);
        shader.setUniformMat4f("m", m);

        //Dessin
        renderer.Draw(va, mercure, shader);


        ////////////////Dessin de l'objet venus/////////////////////

        //Mise à jour de la position
        venus.Update(currentTime, deltaTime, speed);
        venus.orbital_center = soleil.position;

        //Mise à jour de taille
        m = venus.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(venus.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shader.setUniformMat4f("MVP", mvp);
        shader.setUniformMat4f("m", m);

        //Dessin
        renderer.Draw(va, venus, shader);


        ////////////////Dessin de l'objet mars/////////////////////

        //Mise à jour de la position
        mars.Update(currentTime, deltaTime, speed);
        mars.orbital_center = soleil.position;

        //Mise à jour de taille
        m = mars.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(mars.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shader.setUniformMat4f("MVP", mvp);
        shader.setUniformMat4f("m", m);

        //Dessin
        renderer.Draw(va, mars, shader);


        ////////////////Dessin de l'objet jupiter/////////////////////

        //Mise à jour de la position
        jupiter.Update(currentTime, deltaTime, speed);
        jupiter.orbital_center = soleil.position;

        //Mise à jour de taille
        m = jupiter.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(jupiter.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shader.setUniformMat4f("MVP", mvp);
        shader.setUniformMat4f("m", m);

        //Dessin
        renderer.Draw(va, jupiter, shader);



        ////////////////Dessin de l'objet saturn/////////////////////

        //Mise à jour de la position
        saturn.Update(currentTime, deltaTime, speed);
        saturn.orbital_center = soleil.position;

        //Mise à jour de taille
        m = saturn.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(saturn.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shader.setUniformMat4f("MVP", mvp);
        shader.setUniformMat4f("m", m);

        //Dessin
        renderer.Draw(va, saturn, shader);



        ////////////////Dessin de l'objet saturn_ring/////////////////////

        //Mise à jour de la position
        saturn_ring.Update(currentTime, deltaTime, speed);
        saturn_ring.orbital_center = soleil.position;

        //Mise à jour de taille
        m = saturn_ring.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(saturn_ring.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shader.setUniformMat4f("MVP", mvp);
        shader.setUniformMat4f("m", m);

        //Dessin
        renderer.Draw(va, saturn_ring, shader);



        ////////////////Dessin de l'objet uranus/////////////////////

        //Mise à jour de la position
        uranus.Update(currentTime, deltaTime, speed);
        uranus.orbital_center = soleil.position;

        //Mise à jour de taille
        m = uranus.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(uranus.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shader.setUniformMat4f("MVP", mvp);
        shader.setUniformMat4f("m", m);

        //Dessin
        renderer.Draw(va, uranus, shader);



        ////////////////Dessin de l'objet neptune/////////////////////

        //Mise à jour de la position
        neptune.Update(currentTime, deltaTime, speed);
        neptune.orbital_center = soleil.position;

        //Mise à jour de taille
        m = neptune.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(neptune.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shader.setUniformMat4f("MVP", mvp);
        shader.setUniformMat4f("m", m);

        //Dessin
        renderer.Draw(va, neptune, shader);



        ////////////////Bind le shader du ciel et du Soleil///////////////
        /// (Important de bind le 2e Shader après avoir Draw tous les objets du premier)
        shaderSphere.Bind();


        ////////////////Dessin du ciel///////////////

        // Mise à jour de la matrice de modèle (agrandissement)
        m = sky.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(sky.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shaderSphere.setUniform3fv("PointLightColor", lightColor);
        shaderSphere.setUniformMat4f("MVP", mvp);

        //Dessin
        renderer.Draw(va, sky, shaderSphere);



        ////////////////Dessin de l'objet soleil///////////////

        // Mise à jour de la taille
//        soleil.Update(currentTime, deltaTime);

        m = soleil.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(soleil.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shaderSphere.setUniformMat4f("MVP", mvp);

        //Dessin
        renderer.Draw(va, soleil, shaderSphere);



        ////////////////Dessin des orbites///////////////



        // Terre //

        // Mise à jour de la taille
        orbite.radius = terre.orbital_radius + terre.radius/2;
        m = orbite.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(orbite.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shaderSphere.setUniformMat4f("MVP", mvp);

        //Dessin
        renderer.Draw(va, orbite, shaderSphere);

        // Terre //



        // Moon //

        // Mise à jour de la taille
        orbite_moon.radius = moon.orbital_radius + moon.radius/2;
        orbite_moon.position = terre.position;
        m = orbite_moon.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(orbite_moon.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shaderSphere.setUniformMat4f("MVP", mvp);

        //Dessin
        renderer.Draw(va, orbite_moon, shaderSphere);

        // Moon //



        // Mercury //

        // Mise à jour de la taille
        orbite.radius = mercure.orbital_radius + mercure.radius;
        m = orbite.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(orbite.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shaderSphere.setUniformMat4f("MVP", mvp);

        //Dessin
        renderer.Draw(va, orbite, shaderSphere);

        // Mercury //



        // Venus //

        // Mise à jour de la taille
        orbite.radius = venus.orbital_radius + venus.radius/2;
        m = orbite.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(orbite.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shaderSphere.setUniformMat4f("MVP", mvp);

        //Dessin
        renderer.Draw(va, orbite, shaderSphere);

        // Venus //



        // Mars //

        // Mise à jour de la taille
        orbite.radius = mars.orbital_radius + mars.radius*3/2;
        m = orbite.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(orbite.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shaderSphere.setUniformMat4f("MVP", mvp);

        //Dessin
        renderer.Draw(va, orbite, shaderSphere);

        // Mars //



        // Jupiter //

        // Mise à jour de la taille
        orbite.radius = jupiter.orbital_radius + jupiter.radius / 3;
        m = orbite.getModelMatrix();

        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(orbite.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shaderSphere.setUniformMat4f("MVP", mvp);

        //Dessin
        renderer.Draw(va, orbite, shaderSphere);

        // Jupiter //



        // Saturn //

        // Mise à jour de la taille
        orbite.radius = saturn.orbital_radius + saturn.radius/2;
        m = orbite.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(orbite.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shaderSphere.setUniformMat4f("MVP", mvp);

        //Dessin
        renderer.Draw(va, orbite, shaderSphere);

        // Saturn //



        // Uranus //

        // Mise à jour de la taille
        orbite.radius = uranus.orbital_radius + uranus.radius*2;
        m = orbite.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(orbite.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shaderSphere.setUniformMat4f("MVP", mvp);

        //Dessin
        renderer.Draw(va, orbite, shaderSphere);

        // Uranus //



        // Neptune //

        // Mise à jour de la taille
        orbite.radius = neptune.orbital_radius + neptune.radius*3;
        m = orbite.getModelMatrix();
        scalingMatrix = glm::scale(glm::mat4(1.0f), glm::vec3(orbite.radius));
        M_prime = m * scalingMatrix;
        mvp = p*v*M_prime;

        //Envoie au shader
        shaderSphere.setUniformMat4f("MVP", mvp);

        //Dessin
        renderer.Draw(va, orbite, shaderSphere);

        // Neptune //


        ////////////////Mis à jour des controls et de l'interface UI///////////////
        controls.update(deltaTime, &shaderSphere);


        ////////////////Partie rafraichissement de l'image et des évènements///////////////
        //Swap buffers : frame refresh
        glfwSwapBuffers(window);

        //get the events
        glfwPollEvents();


    }


    glfwTerminate();

    return 0;
}
