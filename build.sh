#!/usr/bin/env bash

# Base directory containing source code
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Optional TAG argument (if set, only the specified image will be built)
TAG=${1:-null}

# Check if the TAG variable is set
if [ "$TAG" != null ]

  # Only build one image
  then
    docker build -t stephenneal/node-yarn:"${TAG}" "${DIR}"/"${TAG}"/

  # Build all images
  else
    docker build -t stephenneal/node-yarn:v1 "${DIR}"/v1/
    docker build -t stephenneal/node-yarn:v2 "${DIR}"/v2/
    docker build -t stephenneal/node-yarn:v3 "${DIR}"/v3/
    docker build -t stephenneal/node-yarn:v4 "${DIR}"/v4/

    docker build -t stephenneal/node-yarn:v18-alpine "${DIR}"/v18-alpine/
    docker build -t stephenneal/node-yarn:v18-bullseye "${DIR}"/v18-bullseye/
    docker build -t stephenneal/node-yarn:v18-slim "${DIR}"/v18-slim/
    docker build -t stephenneal/node-yarn:v20-alpine "${DIR}"/v20-alpine/
    docker build -t stephenneal/node-yarn:v20-bullseye "${DIR}"/v20-bullseye/
    docker build -t stephenneal/node-yarn:v20-slim "${DIR}"/v20-slim/
    docker build -t stephenneal/node-yarn:v21-alpine "${DIR}"/v21-alpine/
    docker build -t stephenneal/node-yarn:v21-bullseye "${DIR}"/v21-bullseye/
    docker build -t stephenneal/node-yarn:v21-slim "${DIR}"/v21-slim/
    docker build -t stephenneal/node-yarn:v22-alpine "${DIR}"/v22-alpine/
    docker build -t stephenneal/node-yarn:v22-bullseye "${DIR}"/v22-bullseye/
    docker build -t stephenneal/node-yarn:v22-slim "${DIR}"/v22-slim/
    docker build -t stephenneal/node-yarn:v23-alpine "${DIR}"/v23-alpine/
    docker build -t stephenneal/node-yarn:v23-bullseye "${DIR}"/v23-bullseye/
    docker build -t stephenneal/node-yarn:v23-slim "${DIR}"/v23-slim/
fi