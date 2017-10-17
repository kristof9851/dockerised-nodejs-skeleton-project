#!/usr/bin/env bash

echo " "
echo "======================================================="
echo "| SCRIPT VARIABLES (run/_library/script-variables.sh) |"
echo "======================================================="

## Is the config repo in the parent or in the current directory?
local_config_folder="$PWD/config"
if [ -d "$local_config_folder" ]; then
    echo ">>>> local_config_folder=$local_config_folder"
else
    echo ">>>> ERROR: Did not find local config folder \"$local_config_folder\".  Please clone from Github."
    exit 1;
fi

## If this is not ran on Jenkins, then we have to set it
if [ -z "$version" ]
then
    version="local"
fi
echo ">>>> version=$version"

## Which env file should we read from config dir?
env="local"
echo ">>>> env=$env"

## Namespace the current docker container
dc_project="-p $version"
echo ">>>> dc_project=$dc_project"
