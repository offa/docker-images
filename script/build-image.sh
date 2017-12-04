#!/bin/sh

# Arguments:
#
#   1: Image Name
#   2: Version
#   3: Path to Dockerfile
#   4: --no-push - Only build the image [Optional]


set -ex

IMG=$1
VERSION=$2
IMG_PATH=$3
OPT_ARG=$4

DEV_IMAGE=${DEPLOY_REGISTRY}/${IMG}

docker build --pull --build-arg VERSION=${VERSION} -t ${DEV_IMAGE} ${IMG_PATH}

if [ "${OPT_ARG}" != "--no-push" ];
then
    docker push ${DEV_IMAGE}
fi
