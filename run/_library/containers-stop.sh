#!/usr/bin/env bash

echo " "
echo "========================================================="
echo "| STOPPING CONTAINERS (run/_library/containers-stop.sh) |"
echo "========================================================="

docker-compose $dc_project down --remove-orphans
docker image prune -f
echo " "
