cmake_minimum_required(VERSION 3.5)

project(tp_open_gl LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(tp_open_gl main.cpp orbit.h orbit.cpp userinterface.h userinterface.cpp camera.cpp camera.h pointlight.h pointlight.cpp controls.cpp controls.h fpscontrols.cpp fpscontrols.h navigationcontrols.cpp navigationcontrols.h object.cpp object.h renderer.cpp renderer.h shader.cpp shader.h texture.cpp texture.h uvbuffer.cpp uvbuffer.h vertexarray.cpp vertexarray.h vertexbuffer.cpp vertexbuffer.h stb_image/stb_image.cpp stb_image/stb_image.h)

target_link_libraries(tp_open_gl glfw GLEW libGLEW.so libGLU.so libGL.so )
