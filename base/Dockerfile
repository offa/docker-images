FROM ubuntu:16.04

RUN  apt-get update && apt-get -y upgrade && \
        apt-get install -y --no-install-recommends software-properties-common && \
        add-apt-repository ppa:git-core/ppa && \
        apt-get install -y --no-install-recommends git curl && \
        apt-get autoclean && apt-get autoremove

