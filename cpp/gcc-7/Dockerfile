FROM registry.gitlab.com/offa/docker-images/base-cpp:latest

ENV CC=gcc-7 CXX=g++-7

RUN add-apt-repository ppa:ubuntu-toolchain-r/test && \
    apt-get update && \
    apt-get install -y --no-install-recommends g++-7 && \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 60 --slave /usr/bin/g++ g++ /usr/bin/g++-7

