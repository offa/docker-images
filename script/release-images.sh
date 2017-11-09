#!/bin/bash

set -ex

IMG=$1

DEV_TAG=latest
RELEASE_TAG=stable

DEV_IMAGE=${DEPLOY_REGISTRY}/${IMG}:${DEV_TAG}
RELEASE_IMAGE=${DEPLOY_REGISTRY}/${IMG}:${RELEASE_TAG}


docker pull ${DEV_IMAGE}
docker tag ${DEV_IMAGE} ${RELEASE_IMAGE}
docker push ${RELEASE_IMAGE}
