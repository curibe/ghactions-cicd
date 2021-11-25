#!/bin/bash

# ===== COLOR CODES =====
GREEN='\e[32m'
CYAN='\e[36m'
RED='\e[31m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
NC='\e[0m' # No Color

echo -e "\n${BLUE}[✔] Registering ssh key in ssh-agent ${NC}"
eval $(ssh-agent -s)
echo "${GITHUB_KEY}" | ssh-add -

echo -e "\n${BLUE}[✔] Pulling updates from the repo ${NC}"
git pull origin master


