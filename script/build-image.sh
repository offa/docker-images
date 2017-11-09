#!/bin/sh

set -ex

IMG=$1
IMG_PATH=$2

DEV_IMAGE=${DEPLOY_REGISTRY}/${IMG}

docker build -t ${DEV_IMAGE} ${IMG_PATH}
docker push ${DEV_IMAGE}

