ARG VERSION=12

FROM registry.gitlab.com/offa/docker-images/base-cpp:latest

ARG VERSION
ENV CC=clang-${VERSION} CXX=clang++-${VERSION}

RUN add-apt-repository ppa:ubuntu-toolchain-r/test && \
    if [ ${VERSION} -ge 9 ]; then \
        curl -fsSL https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && \
        add-apt-repository "deb http://apt.llvm.org/focal/ llvm-toolchain-focal-${VERSION} main"; \
    fi && \
    apt-get update && \
    if [ ${VERSION} -ge 12 ]; then \
        apt-get install -y --no-install-recommends libunwind-dev; \
    fi && \
    apt-get install -y --no-install-recommends clang-${VERSION} libc++-${VERSION}-dev libc++abi-${VERSION}-dev
