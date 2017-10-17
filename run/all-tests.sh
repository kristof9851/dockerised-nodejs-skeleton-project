#!/bin/bash

. ./run/_library/_before.sh

echo " "
echo "================================"
echo "| ALL TESTS (run/all-tests.sh) |"
echo "================================"

if [ "$env" == "local" ]; then
    script="docker-compose $dc_project build"
    echo ">>>> Building containers: $script"
    bash -c "$script"

    script="docker-compose $dc_project $dc_file run --no-deps web npm run unitTest"
    echo ">>>> Running containers: $script"
    bash -c "$script"

    script="docker-compose $dc_project $dc_file run acceptance_test"
    echo ">>>> Running containers: $script"
    bash -c "$script"
else
    echo ">>>> ERROR: You can only run All Tests locally"
    exit 1
fi

. ./run/_library/_after.sh
