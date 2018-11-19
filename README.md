![alt text](https://raw.githubusercontent.com/blk-io/epirus/master/img/epirus.png "Epirus")

## Introduction

The Enterprise Ethereum platform.

Epirus provides everything you need to deploy, run and integrate with a blockchain in production.

This repository contains a bundled distribution of some of the core components of the platform 
making it really straight-forwards to run the plaform locally and start developing decentralised 
apps (DApps) on the blockchain.

Please [contact us](https://blk.io/index.html#contactus) if If you'd like to use the full version 
of the platform that includes on premise/cloud/SaaS deployments, integrated authentication and 
support services.

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

The node endpoints are as follows:

| Name    | Quorum node address    | Account key                                | Private transaction node key                 |
| ------- | ---------------------- | ------------------------------------------ | -------------------------------------------- |
| quorum1 | http://localhost:22001 | 0xed9d02e382b34818e88b88a309c7fe71e65f419d | BULeR8JyUWhiuuCMU/HLA0Q5pzkYT+cHII3ZKBey3Bo= | 
| quorum2 | http://localhost:22002 | 0xca843569e3427144cead5e4d5999a3d0ccf92b8e | QfeDAys9MPDs2XHExtc84jKGHxZg/aj52DTh0vtA3Xc= |
| quorum3 | http://localhost:22003 | 0x0fbdc686b912d7722dc86510934589e0aaf3b55a | 1iTZde/ndBHvzhcl7V68x44Vx7pl8nwx9LqnM/AfJUg= |
| quorum4 | http://localhost:22004 | 0x9186eb3d20cbd1f5f992a950d808c4495153abd5 | oNspPPgszVUFw0qmGFfWwh1uxVUXgvBxleXORHj07g8= |

To stop the all the docker containers, use:

```bash
./stop.sh
```

The first time you run the script it will take a number of minutes to start up as Docker images 
need to be downloaded.


## Below is a diagram displaying the core components of Epirus.

![alt text](https://github.com/JohnChangUK/epirus/blob/master/EpirusDiagram.png "Epirus components")
