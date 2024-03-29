cmake_minimum_required(VERSION 3.5)

project(exec)

set(OpenGL_GL_PREFERENCE GLVND)
find_package(glfw3 3.3 REQUIRED)
find_package(OpenGL REQUIRED)

set(CMAKE_CXX_FLAGS "-Wall -Werror -Wextra -std=c++17")
set(CMAKE_CXX_FLAGS_DEBUG "-ggdb3 -O0")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -DNDEBUG")

set(SOURCE_DIR "${PROJECT_SOURCE_DIR}/../src/")
set(HEADER_DIR "${PROJECT_SOURCE_DIR}/../include/")
set(EXEC_DIR "${PROJECT_SOURCE_DIR}/../bin/apps/")
set(LINK_LIB "")

file(GLOB_RECURSE SOURCE_FILES "${SOURCE_DIR}/*.cpp")
file(GLOB_RECURSE HEADER_FILES "${HEADER_DIR}/*.hpp")

add_executable(${PROJECT_NAME} ${SOURCE_FILES})
target_include_directories(${PROJECT_NAME} PRIVATE ${HEADER_DIR})
target_link_libraries(${PROJECT_NAME} ${LINK_LIB})
target_link_libraries(${PROJECT_NAME} glfw OpenGL::GL)
set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${EXEC_DIR})
