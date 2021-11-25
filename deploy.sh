#!/bin/bash

# ===== COLOR CODES =====
GREEN='\e[32m'
CYAN='\e[36m'
RED='\e[31m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
NC='\e[0m' # No Color


echo -e "\n${BLUE}[✔] Moving to folder's project ${NC}"
cd /opt/test.actions
ls

echo -e "\n${BLUE}[✔] Stop supervisor ${NC}"
supervisorctl stop test.actions

echo -e "\n${BLUE}[✔] Pulling updates from the repo ${NC}"
git pull origin master



