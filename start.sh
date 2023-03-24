#!/bin/bash
source .env

echo "Start docker compose"
# docker-compose --env-file .env up --detach --build edge-node1 java-app redis-app top-app
docker-compose --env-file .env up --detach --build edge-node1 redis-app top-app
#docker-compose up -d oomdemo-1
