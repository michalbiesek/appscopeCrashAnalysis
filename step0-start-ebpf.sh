#!/bin/bash
set -e

echo "Start scope listener (ebpf)"
sudo ./scope daemon --filedest localhost:10087 &