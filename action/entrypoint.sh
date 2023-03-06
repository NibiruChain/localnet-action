#!/bin/sh -l

set -e

echo "$1"
echo "$2"
echo "$3"

echo "service $input_service"
echo "ghtoken $input_ghtoken"
echo "ghuser $input_ghactor"
echo "SERVICE $INPUT_SERVICE"
echo "GHTOKEN $INPUT_GHTOKEN"
echo "GHUSER $INPUT_GHACTOR"

mkdir templates
mkdir -p action

curl -s https://raw.githubusercontent.com/NibiruChain/nibiru/master/contrib/docker-compose/docker-compose-chaosnet.yml >action/docker-compose-chaosnet.yml
curl -s https://raw.githubusercontent.com/NibiruChain/nibiru/master/contrib/templates/bdjuno.yaml >templates/bdjuno.yaml

echo $ghtoken | docker login ghcr.io -u $ghactor --password-stdin

docker compose -f action/docker-compose-chaosnet.yml up $services
