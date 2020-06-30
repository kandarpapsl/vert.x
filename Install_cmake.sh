#!/bin/bash
cd $HOME
git clone https://github.com/Kitware/CMake.git
cd CMake
./bootstrap && make && sudo make install