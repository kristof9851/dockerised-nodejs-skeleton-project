#!/bin/bash

. ./run/_library/_before.sh

echo " "
echo "============================================"
echo "| TDD (run/tdd.sh)                         |"
echo "============================================"

script="docker-compose $dc_project build web"
echo ">>>> Building containers: $script"
bash -c "$script"

script="docker-compose $dc_project run --no-deps web npm run tdd"
echo ">>>> Running containers: $script"
bash -c "$script"

. ./run/_library/_after.sh
