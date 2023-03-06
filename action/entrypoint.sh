#!/bin/sh -l

set -e

mkdir templates
mkdir -p action

curl -s https://raw.githubusercontent.com/NibiruChain/nibiru/master/contrib/docker-compose/docker-compose-chaosnet.yml >action/docker-compose-chaosnet.yml
curl -s https://raw.githubusercontent.com/NibiruChain/nibiru/master/contrib/templates/bdjuno.yaml >templates/bdjuno.yaml

echo $INPUT_GHTOKEN | docker login ghcr.io -u $INPUT_GHACTOR --password-stdin

docker compose -f action/docker-compose-chaosnet.yml up $INPUT_SERVICES
