FROM registry.gitlab.com/offa/docker-images/base-cpp:latest

RUN add-apt-repository ppa:team-gcc-arm-embedded/ppa && \
    apt-get update && \
    apt-get install -y --no-install-recommends gcc-arm-embedded

