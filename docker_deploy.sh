#!/bin/bash
echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin

docker push heikoschmidt1187/udagram-reverse-proxy
docker push heikoschmidt1187/udagram-api-feed
docker push heikoschmidt1187/udagram-api-users
docker push heikoschmidt1187/udagram-frontend
