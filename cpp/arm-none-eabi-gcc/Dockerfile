ARG VERSION=6

FROM registry.gitlab.com/offa/docker-images/base-cpp:latest

ARG VERSION

RUN add-apt-repository ppa:team-gcc-arm-embedded/ppa && \
    apt-get update && \
    apt-get install -y --no-install-recommends gcc-arm-embedded

