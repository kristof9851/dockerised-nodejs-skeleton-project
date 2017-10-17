#!/usr/bin/env bash

echo " "
echo "===================================================================="
echo "| GENERATING DOCKER-ENV (run/_library/generate-docker-env-file.sh) |"
echo "===================================================================="

dockerEnvFile="$PWD/docker-env"
rm -f $dockerEnvFile || true
echo ">>>> Removed existing \"$dockerEnvFile\""

cat ${local_config_folder}/common.json | jq -r '.common_application_environment | to_entries | map(.key  + "=" + ( .value | tostring ))[]' > docker-env
cat ${local_config_folder}/${env}.json | jq -r '.application_environment | to_entries | map(.key  + "=" + ( .value | tostring ))[]' >> docker-env

echo ">>>> Created new \"$dockerEnvFile\" with the following content:"
cat $dockerEnvFile | sed 's/^/    /'