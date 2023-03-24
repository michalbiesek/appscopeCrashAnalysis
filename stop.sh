#!/bin/bash

echo "Stop docker compose"
docker-compose down
echo "Terminate ebpf listener"
# sudo kill -9 `pidof scope daemon`