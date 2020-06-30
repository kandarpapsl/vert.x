#!/bin/bash
cd $HOME
git clone https://github.com/ninja-build/ninja.git
cd ninja
./configure.py --bootstrap && cmake -Bbuild-cmake -H. && cmake --build build-cmake
sudo cp ninja /usr/local/bin
