#!/bin/bash

# ===== COLOR CODES =====
GREEN='\e[32m'
CYAN='\e[36m'
RED='\e[31m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
NC='\e[0m' # No Color


echo -e "\n${BLUE}[✔] Stop supervisor ${NC}"
sudo supervisorctl stop $PROCESS_NAME

echo -e "\n${BLUE}[✔] Stop docker compose ${NC}"
docker-compose down
docker-compose down

echo -e "\n${BLUE}[✔] Doing some intermediate steps ${NC}"

echo -e "\n${GREEN}[✔] Start supervisor again ${NC}"
sudo supervisorctl start $PROCESS_NAME




