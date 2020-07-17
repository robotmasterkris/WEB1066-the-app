#!/usr/bin/env bash
set -e

echo "Starting deploy"
echo "${DOCKER_PASSWORD}" | docker login --username "${DOCKER_USERNAME}" --password-stdin
docker tag zutherb/monolithic-shop:latest $DOCKER_USERNAME/monolithic-shop:latest
docker push $DOCKER_USERNAME/monolithic-shop:latest