FROM registry.gitlab.com/offa/docker-images/base-cpp:latest

ENV CC=clang-4.0 CXX=clang++-4.0

RUN add-apt-repository ppa:ubuntu-toolchain-r/test && \
    curl -fsSL https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && \
    add-apt-repository 'deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-4.0 main' && \
    apt-get update && \
    apt-get install -y --no-install-recommends clang-4.0

