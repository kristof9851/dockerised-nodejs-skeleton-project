#!/bin/bash

. ./run/_library/_before.sh

echo " "
echo "=================================="
echo "| UNIT TESTS (run/unit-tests.sh) |"
echo "=================================="

script="docker-compose $dc_project build web"
echo ">>>> Building containers: $script"
bash -c "$script"

script="docker-compose $dc_project $dc_file run --no-deps web npm run unitTest"
echo ">>>> Running containers: $script"
bash -c "$script"

. ./run/_library/_after.sh
