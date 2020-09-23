ARG VERSION=8

FROM registry.gitlab.com/offa/docker-images/base-cpp:latest

ARG VERSION
ENV CC=clang-${VERSION} CXX=clang++-${VERSION}

RUN add-apt-repository ppa:ubuntu-toolchain-r/test && \
    curl -fsSL https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && \
    add-apt-repository "deb http://apt.llvm.org/focal/ llvm-toolchain-focal-${VERSION} main" && \
    apt-get update && \
    apt-get install -y --no-install-recommends clang-${VERSION}


RUN LLVM_RELEASE=release_$(echo ${VERSION} | sed -e "s/\.//g") && \
    if echo "${VERSION}" | grep -q "10"; then \
        apt-get install -y --no-install-recommends libc++-10-dev libc++abi-10-dev; \
    elif echo "${VERSION}" | grep -q "9"; then \
        apt-get install -y --no-install-recommends libc++-9-dev libc++abi-9-dev; \
    elif echo "${VERSION}" | grep -q "8"; then \
        apt-get install -y --no-install-recommends libc++-8-dev libc++abi-8-dev; \
    elif echo "${VERSION}" | grep -q "7"; then \
        apt-get install -y --no-install-recommends libc++-7-dev libc++abi-7-dev; \
    else \
    fi
