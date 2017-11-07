FROM registry.gitlab.com/offa/docker-images/base-cpp:latest

ENV CC=gcc-6 CXX=g++-6

RUN add-apt-repository ppa:ubuntu-toolchain-r/test && \
    apt-get update && \
    apt-get install -y --no-install-recommends g++-6 && \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 60 --slave /usr/bin/g++ g++ /usr/bin/g++-6

