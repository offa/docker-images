ARG VERSION=12

FROM teeks99/gcc-ubuntu:${VERSION}

ARG VERSION
ENV CC=gcc-${VERSION} CXX=g++-${VERSION}

COPY script/ /tmp/bin/

RUN tmp/bin/install_dev_tools.sh && \
        tmp/bin/install_cpp_tools.sh && \
        tmp/bin/cleanup.sh
