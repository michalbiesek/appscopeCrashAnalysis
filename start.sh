#!/bin/bash
source .env

echo "Start docker compose"
docker-compose --env-file .env up -d --build