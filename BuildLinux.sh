#!/bin/bash
# ~/bin/build-polycode

mkdir -p dependencies/Build/Debug dependencies/Build/Release
cd dependencies/Build/Debug
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug ../..
make
cd ../Release
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release ../..
make

