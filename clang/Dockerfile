ARG VERSION

FROM docker.io/teeks99/clang-ubuntu:${VERSION}

ARG VERSION
ENV CC=clang-${VERSION} CXX=clang++-${VERSION}

COPY script/ /tmp/bin/

RUN tmp/bin/update.sh && \
        tmp/bin/install_dev_tools.sh && \
        tmp/bin/install_cpp_tools.sh && \
        if [ "${VERSION}" -ge 12 ] && [ "${VERSION}" -lt 15 ]; then \
            apt-get install -y --no-install-recommends libunwind-${VERSION}-dev; \
        fi && \
        if [ "${VERSION}" -eq 14 ]; then \
            apt-get install -y --no-install-recommends libclang-rt-${VERSION}-dev; \
        fi && \
        tmp/bin/cleanup.sh
