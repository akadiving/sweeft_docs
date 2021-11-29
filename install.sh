#!/usr/bin/env bash


DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "${DIR}"/.env
source "${DIR}"/styles.env
source "${DIR}"/functions.sh

clear

echo -e "${COLOR_BLUE}Welcome to ${PROJECT_NAME}.ge installer!${COLOR_NONE}\n"

TOTAL_STEPS=4
CURRENT_STEP=0

CURRENT_STEP=$((CURRENT_STEP + 1))
echo -e "\n\v${COLOR_BLUE}[${CURRENT_STEP}/${TOTAL_STEPS}] Cloning Docs repository...\n\v${COLOR_NONE}"
clone_repository "${DOCS_GIT_REPO}" "${DOCS_DIR}"

CURRENT_STEP=$((CURRENT_STEP + 1))
echo -e "\n\v${COLOR_BLUE}[${CURRENT_STEP}/${TOTAL_STEPS}] Building images...\n\v${COLOR_NONE}"
docker-compose build --pull

CURRENT_STEP=$((CURRENT_STEP + 1))
echo -e "\n\v${COLOR_BLUE}[${CURRENT_STEP}/${TOTAL_STEPS}] Building containers...\n\v${COLOR_NONE}"
docker-compose pull
docker-compose up -d --remove-orphans


CURRENT_STEP=$((CURRENT_STEP + 1))
echo -e "\n\v${COLOR_BLUE}[${CURRENT_STEP}/${TOTAL_STEPS}] Building documentation...\n\v${COLOR_NONE}"
docker exec -ti "${PROJECT_NAME}".jekyll bash -c 'cd docs && bundle && jekyll b'

echo -e "\n\v${COLOR_BLUE}Containers has been Installed and are running.\n\v${COLOR_NONE}"