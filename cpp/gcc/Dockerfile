ARG VERSION=7

FROM registry.gitlab.com/offa/docker-images/base-cpp:latest

ARG VERSION
ENV CC=gcc-${VERSION} CXX=g++-${VERSION}

RUN add-apt-repository ppa:ubuntu-toolchain-r/test && add-apt-repository ppa:jonathonf/gcc-9.0 && \
    apt-get update && \
    apt-get install -y --no-install-recommends g++-${VERSION} && \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-${VERSION} 60 --slave /usr/bin/g++ g++ /usr/bin/g++-${VERSION} && \
    update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-${VERSION} 90
