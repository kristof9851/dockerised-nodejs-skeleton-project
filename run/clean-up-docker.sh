#!/bin/bash

echo "============================================"
echo "| CLEAN UP DOCKER (run/clean-up-docker.sh) |"
echo "============================================"

script="docker volume rm \$(docker volume ls -qf dangling=true)"
echo ">>>> Executing script: $script"
echo " "
bash -c "$script"

script="docker rm \$(docker ps -a -q)"
echo ">>>> Executing script: $script"
echo " "
bash -c "$script"

script="docker rmi \$(docker images -q) --force"
echo ">>>> Executing script: $script"
echo " "
bash -c "$script"

script="docker volume rm \$(docker volume ls -q)"
echo ">>>> Executing script: $script"
echo " "
bash -c "$script"
