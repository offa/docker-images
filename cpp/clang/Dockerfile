ARG VERSION=6

FROM registry.gitlab.com/offa/docker-images/base-cpp:latest

ARG VERSION
ENV CC=clang-${VERSION}.0 CXX=clang++-${VERSION}.0

RUN add-apt-repository ppa:ubuntu-toolchain-r/test && \
    curl -fsSL https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && \
    add-apt-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-${VERSION}.0 main" && \
    apt-get update && \
    apt-get install -y --no-install-recommends clang-${VERSION}.0


RUN LLVM_RELEASE=release_${VERSION}0 && \
    mkdir -p deps && cd deps && \
    git clone --depth=1 -b ${LLVM_RELEASE} https://github.com/llvm-mirror/llvm.git llvm-source && \
    git clone --depth=1 -b ${LLVM_RELEASE} https://github.com/llvm-mirror/libcxx.git llvm-source/projects/libcxx && \
    git clone --depth=1 -b ${LLVM_RELEASE} https://github.com/llvm-mirror/libcxxabi.git llvm-source/projects/libcxxabi && \
    if echo "${VERSION}" | grep -q "4"; then \
        curl -sSL https://github.com/llvm-mirror/libcxx/commit/6e02e89f65ca1ca1d6ce30fbc557563164dd327e.patch -o xlocale.patch && \
        patch llvm-source/projects/libcxx/include/__locale < xlocale.patch; \
    fi && \
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

