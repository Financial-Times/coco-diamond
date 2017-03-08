#!/bin/bash

TEMP=. read -r -a HOSTNAME_SLICED <<< "$NODE_NAME"
export DOCKER_HOSTNAME="${ENVIRONMENT}.${HOSTNAME_SLICED}"
export PREFIX="${ENVIRONMENT}.servers"

echo "DOCKER_HOSTNAME=${DOCKER_HOSTNAME}"
./entrypoint.sh