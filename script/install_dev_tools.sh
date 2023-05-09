#!/bin/bash

apt-get update
apt-get install -y --no-install-recommends software-properties-common gpg-agent
add-apt-repository ppa:git-core/ppa
apt-get update
apt-get install -y --no-install-recommends git curl gnupg-agent
