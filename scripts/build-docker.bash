#!/usr/bin/env bash
set -eu
cd $(dirname $0)/..

. scripts/docker-env

docker build -t ${IMAGE}:${RELEASE_TAG} .
docker tag ${IMAGE}:${RELEASE_TAG} ${IMAGE}:${LATEST_TAG}
