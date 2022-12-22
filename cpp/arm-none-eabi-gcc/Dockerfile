ARG VERSION=11

# hadolint ignore=DL3007
FROM registry.gitlab.com/offa/docker-images/base-cpp:latest

ARG VERSION
RUN REL_VERSION="12.2.rel1" && \
    curl -Lo arm-none-eabi-gcc.tar.xz \
        https://developer.arm.com/-/media/Files/downloads/gnu/${REL_VERSION}/binrel/arm-gnu-toolchain-${REL_VERSION}-x86_64-arm-none-eabi.tar.xz && \
    mkdir -p /opt/arm-none-eabi && \
    tar xf arm-none-eabi-gcc.tar.xz -C /opt/arm-none-eabi/ --strip-components 1 && \
    chmod -R -w /opt/arm-none-eabi && \
    rm ./*.tar.xz && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV PATH="${PATH}:/opt/arm-none-eabi/bin"
