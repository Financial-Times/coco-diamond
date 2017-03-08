#!/bin/bash

read -r -d "." HOSTNAME_SLICED <<< "$NODE_NAME"
export DOCKER_HOSTNAME="${ENVIRONMENT}.${HOSTNAME_SLICED}"
export PREFIX="${ENVIRONMENT}.servers"

echo "DOCKER_HOSTNAME=${DOCKER_HOSTNAME}"
./entrypoint.sh