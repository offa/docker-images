#!/bin/bash

apt-get update
apt-get install -y --no-install-recommends build-essential

CMAKE_VERSION="4.0.2"

curl -sSL "https://github.com/Kitware/CMake/releases/download/v${CMAKE_VERSION}/cmake-${CMAKE_VERSION}-linux-x86_64.sh" -o install-cmake.sh
chmod +x install-cmake.sh
./install-cmake.sh --prefix=/usr/local --skip-license
rm install-cmake.sh
