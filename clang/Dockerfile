ARG VERSION=15

FROM teeks99/clang-ubuntu:${VERSION}

COPY script/ /tmp/bin/

RUN tmp/bin/install_dev_tools.sh && \
        tmp/bin/install_cpp_tools.sh && \
        tmp/bin/cleanup.sh
