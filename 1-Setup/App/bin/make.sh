#!/bin/bash

sudo apt-get update
sudo apt-get install g++ cmake freeglut3-dev libglfw3-dev

glxinfo | grep "OpenGL version"
glxinfo | grep "direct rendering"
