# Epirus

## Introduction

The Enterprise Ethereum platform.

The platform that provides everything you need to deploy, run and integrate with a blockchain in production.

We've made available a bundled distribution of some of the core components of the platform making it really 
straight-forwards to run the plaform locally and start developing decentralised apps (DApps) on the blockchain. 

## Getting started

The fastest way to start the whole software stack is to run the [script](https://github.com/blk-io/epirus/tree/master/epirus.sh).

```bash
git clone https://github.com/blk-io/epirus.git
./epirus.sh
```

It spins up a [4 node Quorum network](https://github.com/blk-io/crux/tree/master/docker/quorum-crux) using 
[Crux](https://github.com/blk-io/crux) as the secure enclave communicating over gRPC and brings up the 
[Blockchain Explorer](https://github.com/blk-io/blk-explorer-free) to view all the transactions. 

To stop the all the docker containers, use:

```bash
./stop.sh
```
