FROM docker.io/ubuntu:jammy

ARG VERSION

COPY script/ /tmp/bin/

RUN tmp/bin/install_dev_tools.sh && \
        tmp/bin/install_cpp_tools.sh && \
        tmp/bin/cleanup.sh

RUN curl -Lo arm-none-eabi-gcc.tar.xz \
        https://developer.arm.com/-/media/Files/downloads/gnu/${VERSION}/binrel/arm-gnu-toolchain-${VERSION}-x86_64-arm-none-eabi.tar.xz && \
    mkdir -p /opt/arm-none-eabi && \
    tar xf arm-none-eabi-gcc.tar.xz -C /opt/arm-none-eabi/ --strip-components 1 && \
    chmod -R -w /opt/arm-none-eabi && \
    rm ./*.tar.xz

ENV PATH="${PATH}:/opt/arm-none-eabi/bin"
