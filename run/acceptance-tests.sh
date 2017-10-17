#!/bin/bash

. ./run/_library/_before.sh

echo " "
echo "=============================================="
echo "| ACCEPTANCE TESTS (run/acceptance-tests.sh) |"
echo "=============================================="

if [ "$env" == "local" ]; then
    script="docker-compose $dc_project build"
    echo ">>>> Building containers: $script"
    bash -c "$script"

    script="docker-compose $dc_project $dc_file run acceptance_test"
    echo ">>>> Running containers: $script"
    bash -c "$script"
else
    script="docker-compose $dc_project build acceptance_test"
    echo ">>>> Building container: $script"
    bash -c "$script"

    script="docker-compose $dc_project $dc_file run --no-deps acceptance_test"
    echo ">>>> Running containers: $script"
    bash -c "$script"
fi

. ./run/_library/_after.sh
