cmake_minimum_required(VERSION 3.5)

project(tp_open_gl LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(tp_open_gl main.cpp
    userinterface.h userinterface.cpp
    camera.cpp camera.h
    pointlight.h pointlight.cpp
    controls.cpp controls.h
    fpscontrols.cpp fpscontrols.h
    navigationcontrols.cpp navigationcontrols.h
    object.cpp object.h
    renderer.cpp renderer.h
    shader.cpp shader.h
    texture.cpp texture.h
    uvbuffer.cpp uvbuffer.h
    vertexarray.cpp vertexarray.h
    vertexbuffer.cpp vertexbuffer.h
    stb_image/stb_image.cpp stb_image/stb_image.h
    imgui/imconfig.h imgui/imgui.h imgui/imgui.cpp
    imgui/imgui_demo.cpp imgui/imgui_draw.cpp
    imgui/imgui_internal.h imgui/imgui_tables.cpp
    imgui/imgui_widgets.cpp imgui/imstb_rectpack.h
    imgui/imstb_textedit.h imgui/imstb_truetype.h
    imgui/backends/imgui_impl_glfw.cpp
    imgui/backends/imgui_impl_glfw.h
    imgui/backends/imgui_impl_opengl3.cpp
    imgui/backends/imgui_impl_opengl3.h
    imgui/backends/imgui_impl_opengl3_loader.h
    )
target_link_libraries(tp_open_gl glfw GLEW libGLEW.so libGLU.so libGL.so )
