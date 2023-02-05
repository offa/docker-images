ARG VERSION=15

# hadolint ignore=DL3007
FROM registry.gitlab.com/offa/docker-images/base-cpp:latest

ARG VERSION
ENV CC=clang-${VERSION} CXX=clang++-${VERSION}

RUN add-apt-repository ppa:ubuntu-toolchain-r/test && \
    if [ ${VERSION} -ge 9 ]; then \
        mkdir -p /etc/apt/keyrings/ && \
        curl -fsSL https://apt.llvm.org/llvm-snapshot.gpg.key --output llvm-apt.key && \
        gpg --no-default-keyring --keyring ./keyring.gpg.tmp --import llvm-apt.key && \
        gpg --no-default-keyring --keyring ./keyring.gpg.tmp --export --output /etc/apt/keyrings/llvm-apt.gpg && \
        if [ ${VERSION} -ge 13 ]; then \
            echo "deb [signed-by=/etc/apt/keyrings/llvm-apt.gpg] https://apt.llvm.org/jammy/ llvm-toolchain-jammy-${VERSION} main" > /etc/apt/sources.list.d/llvm.list; \
        else \
            echo "deb [signed-by=/etc/apt/keyrings/llvm-apt.gpg] https://apt.llvm.org/focal/ llvm-toolchain-focal-${VERSION} main" > /etc/apt/sources.list.d/llvm.list; \
        fi; \
    fi && \
    apt-get update && \
    if [ ${VERSION} -ge 12 ]; then \
        apt-get install -y --no-install-recommends libunwind-${VERSION}-dev; \
    fi && \
    if [ ${VERSION} -ge 14 ]; then \
        apt-get install -y --no-install-recommends libclang-rt-${VERSION}-dev; \
    fi && \
    apt-get install -y --no-install-recommends clang-${VERSION} libc++-${VERSION}-dev libc++abi-${VERSION}-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
