ARG VERSION=9

FROM registry.gitlab.com/offa/docker-images/base-cpp:latest

ARG VERSION
RUN curl -Lo arm-none-eabi-gcc.tar.bz2 \
        https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2020q2/gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz2 && \
    mkdir -p /opt/arm-none-eabi && \
    tar xjf arm-none-eabi-gcc.tar.bz2 -C /opt/arm-none-eabi/ --strip-components 1 && \
    chmod -R -w /opt/arm-none-eabi && \
    rm *.tar.bz2

ENV PATH="${PATH}:/opt/arm-none-eabi/bin"
