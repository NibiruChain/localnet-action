#!/bin/sh -l

# set -e

curl -s https://raw.githubusercontent.com/NibiruChain/nibiru/master/contrib/docker-compose/docker-compose-chaosnet.yml >action/docker-compose-chaosnet.yml
curl -s https://raw.githubusercontent.com/NibiruChain/nibiru/master/contrib/templates/bdjuno.yaml >templates/bdjuno.yaml

docker compose -f action/docker-compose-chaosnet.yml up $services
