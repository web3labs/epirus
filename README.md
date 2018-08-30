![alt text](https://raw.githubusercontent.com/blk-io/epirus/master/img/epirus.png "Epirus")

## Introduction

The Enterprise Ethereum platform.

Epirus provides everything you need to deploy, run and integrate with a blockchain in production.

This repository contains a bundled distribution of some of the core components of the platform 
making it really straight-forwards to run the plaform locally and start developing decentralised 
apps (DApps) on the blockchain.

## Getting started

The fastest way to start the whole software stack is to run the below script. You will need 
[Docker](https://www.docker.com/products/docker-desktop) installed.

```bash
git clone https://github.com/blk-io/epirus.git
cd epirus
./epirus.sh
```

It spins up a [4 node Quorum network](https://github.com/blk-io/crux/tree/master/docker/quorum-crux) using
[Crux](https://github.com/blk-io/crux) as the secure enclave communicating over gRPC and brings up the
[Blockchain Explorer](https://github.com/blk-io/blk-explorer-free) to view all the transactions.

![alt text](https://raw.githubusercontent.com/blk-io/blk-explorer-free/master/docs/source/ExplorerCaption.png "Blk-Explorer-Free")

To stop the all the docker containers, use:

```bash
./stop.sh
```

The first time you run the script it will take a number of minutes to start up as Docker images 
need to be downloaded.
