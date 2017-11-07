FROM registry.gitlab.com/offa/docker-images/base:latest

RUN apt-get update && \
    apt-get autoclean && apt-get autoremove

RUN curl -sSL https://cmake.org/files/v3.8/cmake-3.8.2-Linux-x86_64.sh -o install-cmake.sh && \
    chmod +x install-cmake.sh && \
    ./install-cmake.sh --prefix=/usr/local --skip-license && \
    rm install-cmake.sh

