#!/bin/bash

. ./run/_library/_before.sh

echo " "
echo "================================"
echo "| RUN LOCALLY (run/locally.sh) |"
echo "================================"

script="docker-compose $dc_project build web"
echo ">>>> Building containers: $script"
bash -c "$script"

script="docker-compose $dc_project $dc_file run --service-ports web npm run dev"
echo ">>>> Running containers: $script"
bash -c "$script"

. ./run/_library/_after.sh
