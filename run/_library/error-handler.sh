#!/usr/bin/env bash

function on_error {
    echo " "
    echo "================================================="
    echo "| ERROR-HANDLER (run/_library/error-handler.sh) |"
    echo "================================================="

    set -e
    echo '>>>> Docker-compose logs:'
    docker-compose logs
    exit 1
}

trap on_error ERR
