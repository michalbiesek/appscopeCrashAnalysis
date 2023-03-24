#!/bin/bash
set -e

echo "Attach to top"
sudo ./scope attach --backtrace `pidof top`