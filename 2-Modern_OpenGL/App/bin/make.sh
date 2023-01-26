#!/bin/bash

sudo apt-get update
sudo apt-get install g++ cmake \
    xorg-dev mesa-utils \
    build-essential libxmu-dev libxi-dev libgl-dev libglew-dev
sudo apt-get build-dep glfw3

cd ..

mkdir -p tmp/glfw/build
cd tmp/glfw
git clone https://github.com/glfw/glfw.git
cmake -G "Unix Makefiles" -S glfw -B build
cd build
make
sudo make install
cd ../..
sudo rm -rv glfw
cd ..

mkdir -p tmp/glew
cd tmp/glew
git clone https://github.com/nigels-com/glew.git
cd glew/auto
make
cd ..
make
sudo make install
make clean
cd ../..
sudo rm -rv glew
cd ..

glxinfo | grep "OpenGL version"
glxinfo | grep "direct rendering"
