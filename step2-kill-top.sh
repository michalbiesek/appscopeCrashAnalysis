#!/bin/bash
set -e

echo "Send SIGILL to top"
sudo kill -s SIGILL `pidof top`
