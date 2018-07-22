FROM registry.gitlab.com/offa/docker-images/base:latest

RUN apt-get update && apt-get install -y --no-install-recommends build-essential

RUN curl -sSL https://cmake.org/files/v3.12/cmake-3.12.0-Linux-x86_64.sh -o install-cmake.sh && \
    chmod +x install-cmake.sh && \
    ./install-cmake.sh --prefix=/usr/local --skip-license && \
    rm install-cmake.sh

