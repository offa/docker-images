ARG VERSION=8

FROM registry.gitlab.com/offa/docker-images/base-cpp:latest

ARG VERSION
RUN curl -Lo arm-none-eabi-gcc.tar.bz2 \
        https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2019q3/RC1.1/gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2 && \
    mkdir -p /opt/arm-none-eabi && \
    tar xjf arm-none-eabi-gcc.tar.bz2 -C /opt/arm-none-eabi/ --strip-components 1 && \
    chmod -R -w /opt/arm-none-eabi && \
    rm *.tar.bz2

ENV PATH="${PATH}:/opt/arm-none-eabi/bin"

