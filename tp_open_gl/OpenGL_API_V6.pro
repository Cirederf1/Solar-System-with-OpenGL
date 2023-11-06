TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

LIBS += -lglfw -lGLEW -lGLU -lGL -lXrandr -lXi -l Xinerama -lX11 -lrt -ldl

SOURCES += \
        camera.cpp \
        controls.cpp \
        fpscontrols.cpp \
        main.cpp \
        navigationcontrols.cpp \
        object.cpp \
        renderer.cpp \
        shader.cpp \
        stb_image/stb_image.cpp \
        texture.cpp \
        uvbuffer.cpp \
        vertexarray.cpp \
        vertexbuffer.cpp

RESOURCES += \
    textures/texture.qrc

DISTFILES += \
    shaders/SimpleFragmentShader.fragmentshader \
    shaders/SimpleVertexShader.vertexshader \
    textures/eau.jpg \
    textures/marbre.png \
    textures/roche.jpg \
    textures/t0010_0.png \
    textures/t0011_0.png \
    textures/texture.jpg \
    textures/texture.png

HEADERS += \
    camera.h \
    controls.h \
    fpscontrols.h \
    navigationcontrols.h \
    object.h \
    renderer.h \
    shader.h \
    stb_image/stb_image.h \
    texture.h \
    uvbuffer.h \
    vertexarray.h \
    vertexbuffer.h
