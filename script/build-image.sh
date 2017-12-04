#!/bin/sh

# Arguments:
#
#   1: Image Name
#   2: Path to Dockerfile
#   3: Version [Optional]
#   4: --no-push - Only build the image [Optional]


set -ex

IMG=$1
IMG_PATH=$2
VERSION=$3
OPT_ARG=$4

DEV_IMAGE=${DEPLOY_REGISTRY}/${IMG}

if [ ! -z "${VERSION}" ]; then
    BUILD_ARG="--build-arg VERSION=${VERSION}"
fi

docker build --pull ${VERSION} -t ${DEV_IMAGE} ${IMG_PATH}

if [ "${OPT_ARG}" != "--no-push" ]; then
    docker push ${DEV_IMAGE}
fi
