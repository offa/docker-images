ARG VERSION

FROM docker.io/teeks99/clang-ubuntu:${VERSION}

ARG VERSION
ENV CC=clang-${VERSION} CXX=clang++-${VERSION}

ENV DEBIAN_FRONTEND=noninteractive
COPY script/ /tmp/bin/

RUN tmp/bin/update.sh && \
        tmp/bin/install_dev_tools.sh && \
        tmp/bin/install_cpp_tools.sh && \
        tmp/bin/cleanup.sh
