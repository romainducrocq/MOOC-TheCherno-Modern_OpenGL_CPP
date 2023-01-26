#!/bin/bash

sudo apt-get update
sudo apt-get install g++ cmake xorg-dev
sudo apt-get build-dep glfw3

mkdir -p ../tmp/glfw/build
cd ../tmp/glfw
git clone https://github.com/glfw/glfw
cmake -G "Unix Makefiles" -S glfw -B build
cd build
make
sudo make install
cd ../../
sudo rm -rv glfw
