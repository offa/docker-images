#!/bin/sh

# Arguments:
#
#   1: Image Name
#   2: Path to Dockerfile
#   3: Version [Optional]


set -ex

IMG=$1
IMG_PATH=$2
VERSION=$3
OPT_ARG=$4

DEV_IMAGE=${DEPLOY_REGISTRY}/${IMG}

if [ ! -z "${VERSION}" ]
then
    BUILD_ARG="--build-arg VERSION=${VERSION}"
fi

docker build --pull ${BUILD_ARG} -t ${DEV_IMAGE} ${IMG_PATH}

if [ ! -v IMAGE_NO_PUSH ]
then
    docker push ${DEV_IMAGE}
fi
