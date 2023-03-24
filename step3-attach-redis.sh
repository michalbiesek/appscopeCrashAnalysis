#!/bin/bash
set -e

echo "Attach to redis-server"
sudo ./scope attach --backtrace redis-server