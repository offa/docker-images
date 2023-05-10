#!/bin/sh

DEPLOY_BRANCH="master"

if [ "${GIT_COMMIT_BRANCH}" != "${DEPLOY_BRANCH}" ] && [ "${CI_COMMIT_REF_NAME}" != "${DEPLOY_BRANCH}" ]; then
    echo "Skip deployment"
    exit 0
fi

if [ -z "${DEPLOY_REGISTRY}" ]; then
    echo "No DEPLOY_REGISTRY set"
    exit 1
fi

PUBLISH_IMAGE="${DEPLOY_REGISTRY}/${1}"
docker tag "${1}" "${PUBLISH_IMAGE}"
docker push "${PUBLISH_IMAGE}"
