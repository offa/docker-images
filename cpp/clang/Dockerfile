ARG VERSION=5

FROM registry.gitlab.com/offa/docker-images/base-cpp:latest

ARG VERSION
ENV CC=clang-${VERSION}.0 CXX=clang++-${VERSION}.0

RUN add-apt-repository ppa:ubuntu-toolchain-r/test && \
    PPA="deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-${VERSION}.0 main" && \
    curl -fsSL https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && \
    add-apt-repository ${PPA} && \
    apt-get update && \
    apt-get install -y --no-install-recommends clang-${VERSION}.0


RUN LLVM_RELEASE=release_${VERSION}0 && \
    mkdir -p deps && cd deps && \
    git clone --depth=1 -b ${LLVM_RELEASE} https://github.com/llvm-mirror/llvm.git llvm-source && \
    git clone --depth=1 -b ${LLVM_RELEASE} https://github.com/llvm-mirror/libcxx.git llvm-source/projects/libcxx && \
    git clone --depth=1 -b ${LLVM_RELEASE} https://github.com/llvm-mirror/libcxxabi.git llvm-source/projects/libcxxabi && \
    mkdir -p build && cd build && \
    cmake -DCMAKE_C_COMPILER=${CC} \
        -DCMAKE_CXX_COMPILER=${CXX} \
        -DCMAKE_BUILD_TYPE=RelWithDebInfo \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DLIBCXX_ABI_UNSTABLE=ON \
        ../llvm-source && \
    make cxx -j4 && \
    make install-cxxabi install-cxx && \
    cd ../.. && rm -rf deps

