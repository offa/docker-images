ARG VERSION=15

FROM teeks99/clang-ubuntu:${VERSION}

ARG VERSION
ENV CC=clang-${VERSION} CXX=clang++-${VERSION}

COPY script/ /tmp/bin/

RUN tmp/bin/install_dev_tools.sh && \
        tmp/bin/install_cpp_tools.sh && \
        if [ ${VERSION} -ge 12 ]; then \
                apt-get install -y --no-install-recommends libunwind-${VERSION}-dev; \
        fi && \
        if [ ${VERSION} -ge 14 ]; then \
            apt-get install -y --no-install-recommends libclang-rt-${VERSION}-dev; \
        fi && \
        tmp/bin/cleanup.sh
