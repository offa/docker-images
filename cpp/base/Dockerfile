FROM registry.gitlab.com/offa/docker-images/base:latest

RUN apt-get update && apt-get install -y --no-install-recommends build-essential

RUN curl -sSL https://github.com/Kitware/CMake/releases/download/v3.21.3/cmake-3.21.3-linux-x86_64.sh -o install-cmake.sh && \
    chmod +x install-cmake.sh && \
    ./install-cmake.sh --prefix=/usr/local --skip-license && \
    rm install-cmake.sh
