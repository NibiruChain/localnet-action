#!/bin/sh -l

set -e

mkdir -p templates
mkdir -p action
mkdir -p /github/contrib/docker
mkdir -p /contrib/scripts/

curl -s https://raw.githubusercontent.com/NibiruChain/nibiru/master/contrib/docker-compose/docker-compose-chaosnet.yml >action/docker-compose-chaosnet.yml
curl -s https://raw.githubusercontent.com/NibiruChain/nibiru/master/contrib/scripts/chaosnet.sh >/contrib/scripts/chaosnet.sh
curl -s https://raw.githubusercontent.com/NibiruChain/nibiru/master/contrib/templates/bdjuno.yaml >templates/bdjuno.yaml

echo $(ls /contrib/scripts)

echo $INPUT_GHTOKEN | docker login ghcr.io -u $INPUT_GHACTOR --password-stdin

docker compose -f action/docker-compose-chaosnet.yml up $INPUT_SERVICES --detach
docker network inspect ls
