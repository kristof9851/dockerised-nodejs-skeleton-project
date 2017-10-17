#!/usr/bin/env bash

echo " "
echo "==========================================================="
echo "| CURRENT CONTAINERS (run/_library/containers-current.sh) |"
echo "==========================================================="

docker ps --format "table \t{{.ID}}\t{{.Names}}\t{{.Status}}"
echo " "
