#!/bin/bash

set -ex

apt-get autoclean
apt-get autoremove -y
apt-get clean

rm -rf /var/lib/apt/lists/*
rm -rf /tmp/*
