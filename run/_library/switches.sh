#!/usr/bin/env bash

echo " "
echo "============================================================="
echo "| ENVIRONMENT + JENKINS SWITCHES (run/_library/switches.sh) |"
echo "============================================================="

env="local"
on_jenkins=false

while getopts ':je:' flag; do
  case $flag in
    j)
      on_jenkins=true
      ;;
    e)
      env=$OPTARG
      ;;
  esac
done


if [ "$env" != "local" ]; then
    echo ">>>> Switched environment"
else
    echo ">>>> Environment is unchanged"
fi
echo ">>>> env=$env"
echo " "

if [ "$on_jenkins" == true ]; then
    echo ">>>> Switched to Jenkins mode"
    dc_file="-f docker-compose-jenkins.yml"
else
    echo ">>>> Not running in Jenkins mode"
    dc_file="-f docker-compose.yml"
fi
