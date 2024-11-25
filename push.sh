#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Optional TAG argument (if set, only the specified image will be built)
TAG=${1:-null}

# Check if the TAG variable is set
if [ "$TAG" != null ]

  # Only build & push one image
  then
    sh "${DIR}"/build.sh "${TAG}"
    docker push stephenneal/node-yarn:"${TAG}"

  # Build & push all images
  else
    sh "${DIR}"/build.sh

    docker push stephenneal/node-yarn:v1
    docker push stephenneal/node-yarn:v2
    docker push stephenneal/node-yarn:v3
    docker push stephenneal/node-yarn:v4

    docker push stephenneal/node-yarn:v18-alpine
    docker push stephenneal/node-yarn:v18-bullseye
    docker push stephenneal/node-yarn:v18-slim
    docker push stephenneal/node-yarn:v20-alpine
    docker push stephenneal/node-yarn:v20-bullseye
    docker push stephenneal/node-yarn:v20-slim
    docker push stephenneal/node-yarn:v21-alpine
    docker push stephenneal/node-yarn:v21-bullseye
    docker push stephenneal/node-yarn:v21-slim
    docker push stephenneal/node-yarn:v22-alpine
    docker push stephenneal/node-yarn:v22-bullseye
    docker push stephenneal/node-yarn:v22-slim
    docker push stephenneal/node-yarn:v23-alpine
    docker push stephenneal/node-yarn:v23-bullseye
    docker push stephenneal/node-yarn:v23-slim
fi