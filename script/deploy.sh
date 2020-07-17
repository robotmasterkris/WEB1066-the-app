#!/usr/bin/env bash
set -e

echo "Starting deploy"
echo "${DOCKER_PWD}" | docker login --username "${DOCKER_LOGIN}" --password-stdin
docker tag zutherb/monolithic-shop:latest $DOCKER_LOGIN/monolithic-shop:latest
docker push $DOCKER_LOGIN/monolithic-shop:latest