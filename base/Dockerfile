FROM ubuntu:20.04

RUN  apt-get update &&  \
        apt-get install -y --no-install-recommends software-properties-common && \
        add-apt-repository ppa:git-core/ppa && \
        apt-get update && \
        apt-get install -y --no-install-recommends git curl gnupg-agent && \
        apt-get autoclean && apt-get autoremove -y
