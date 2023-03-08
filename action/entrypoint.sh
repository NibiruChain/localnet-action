#!/bin/sh -l

set -e

mkdir -p templates
mkdir -p action
mkdir -p /github/contrib/docker
mkdir -p /contrib/scripts/

curl -s https://raw.githubusercontent.com/NibiruChain/nibiru/master/contrib/docker-compose/docker-compose-chaosnet.yml >action/docker-compose-chaosnet.yml
curl -s https://raw.githubusercontent.com/NibiruChain/nibiru/master/contrib/templates/bdjuno.yaml >templates/bdjuno.yaml

echo $(ls /contrib/scripts)

echo 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 | docker login ghcr.io -u matthiasmat --password-stdin

docker compose -f action/docker-compose-chaosnet.yml up $INPUT_SERVICES --detach
