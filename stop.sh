#!/bin/bash

docker-compose -f crux/docker/quorum-crux/docker-compose.yaml down

# We defined the NODE_ENDPOINT to prevent the warning message from docker
NODE_ENDPOINT=http://localhost:22001 docker-compose -f blk-explorer-free/docker-compose.yaml down