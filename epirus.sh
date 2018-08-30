#!/bin/bash
set -u
set -e

BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Updating dependencies${NC} "
if [ ! -d crux ]; then
    git clone https://github.com/blk-io/crux.git
else
    cd crux && git pull && cd ..
fi

if [ ! -d blk-explorer-free ]; then
    git clone https://github.com/blk-io/blk-explorer-free.git
else
    cd blk-explorer-free && git pull && cd ..
fi

echo -e "${BLUE}Starting 4 node Quorum network${NC} "
docker-compose -f crux/docker/quorum-crux/docker-compose.yaml up -d

until $(curl --output /dev/null --silent --head --fail http://localhost:22001); do
    printf "${BLUE}\xE2\x97\x88${NC}"
    sleep 2
done
echo -e "${BLUE}\xE2\x97\x88 done${NC}"

echo -e "${BLUE}Starting the Blockchain Explorer ${NC}"
NODE_ENDPOINT=http://localhost:22001 docker-compose -f blk-explorer-free/docker-compose.yaml up -d
until $(curl --output /dev/null --silent --head --fail http://localhost:8081); do
    printf "${BLUE}\xE2\x97\x88${NC}"
    sleep 2
done
echo -e "${BLUE}\xE2\x97\x88 backend started${NC}"

until $(curl --output /dev/null --silent --head --fail http://localhost:5000); do
    printf "${BLUE}\xE2\x97\x88${NC}"
    sleep 2
done
echo -e "${BLUE}\xE2\x97\x88 front-end started${NC}"
echo -e "${BLUE}Opening Blockchain Explorer at http://localhost:5000${NC} "

printf "${BLUE}

███████╗██████╗ ██╗██████╗ ██╗   ██╗███████╗
██╔════╝██╔══██╗██║██╔══██╗██║   ██║██╔════╝
█████╗  ██████╔╝██║██████╔╝██║   ██║███████╗
██╔══╝  ██╔═══╝ ██║██╔══██╗██║   ██║╚════██║
███████╗██║     ██║██║  ██║╚██████╔╝███████║
╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝
by blk.io (hi@blk.io)
${NC}"

echo -e "\n${BLUE}Platform started successfully, to stop run: ./stop.sh${NC} "
python -mwebbrowser "http://localhost:5000"