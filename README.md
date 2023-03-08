# localnet-action


## Introduction

This action sets up a Nibiru localnet with toolings for testing.

This includes:
- nibiru chain
- faucet
- liquidation engine
- heart monitor
- bdjuno
- hasura
- big dipper
- price feeder

This is build using the latest image of each service.

You can run this in any github worflow using:

```bash
  - name: Run chaosnet
    uses: NibiruChain/run-chaosnet
    id: chaosnet
    with:
      services: nibiru
      ghtoken: ${{ secrets.GITHUB_TOKEN }}
      ghactor: ${{ github.actor }} 
```

> Notes: Some of the services are still private for now (liquidator), and can only be used by workflows inside the NibiruChain github organisation. These repository are either internal devops tool, or temporary tools we developped for testnets that will be open source later on (like liquidator).

## Parameters

By default, a new chain will launch with the chaosnet default configuration from the NibiruChain/Nibiru latest branch repository.

A price-feeder service will also run to provide prices to the oracle.

You can define precisely the services you need for your execution by listing them in the `services` parameters.

For example:

```yml
      - name: Run chaosnet
        uses: NibiruChain/run-chaosnet
        id: chaosnet
        with:
          services: nibiru pricefeeder liquidator
          ghtoken: ${{ secrets.GITHUB_TOKEN }}
          ghactor: ${{ github.actor }}          
```

A list of all services can be found in the [docker compose file for the chaosnet service](https://raw.githubusercontent.com/NibiruChain/nibiru/master/contrib/docker-compose/docker-compose-chaosnet.yml)
