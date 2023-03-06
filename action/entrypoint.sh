#!/bin/sh -l

set -e

echo "service $service"
echo "ghtoken $ghtoken"
echo "ghuser $ghuser"

mkdir templates
mkdir -p action

curl -s https://raw.githubusercontent.com/NibiruChain/nibiru/master/contrib/docker-compose/docker-compose-chaosnet.yml >action/docker-compose-chaosnet.yml
curl -s https://raw.githubusercontent.com/NibiruChain/nibiru/master/contrib/templates/bdjuno.yaml >templates/bdjuno.yaml

echo $ghtoken | docker login ghcr.io -u $ghactor --password-stdin

docker compose -f action/docker-compose-chaosnet.yml up $services
