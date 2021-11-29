
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "${DIR}"/styles.env

clone_repository() {
  REPO=$1
  REPO_DIR=$2

  if [[ -d ${REPO_DIR} && ! "$(ls -A "$REPO_DIR")" ]]; then
    sudo rm -rf "$REPO_DIR"
  fi

  if [[ -d ${REPO_DIR} ]]; then
    cd "${REPO_DIR}" || return
    git pull
    cd "${DIR}"/.. || return
  else
    git clone "${REPO}" "${REPO_DIR}"
  fi
}

check_command() {
  COMMAND=$1

  if ! command -v "$COMMAND" &>/dev/null; then
    echo -e "${COLOR_RED}Command ${COMMAND} could not be found!${COLOR_NONE}\n"
    exit 1
  fi

  echo -e "${COLOR_GREEN}Command ${COMMAND} exists!${COLOR_NONE}\n"
}

check_port() {
  PORT=$1

  if sudo netstat -tulpn | grep -q ":${PORT}"; then
    echo -e "${COLOR_RED}Port ${PORT} in use!${COLOR_NONE}\n"
    exit 1
  fi

  echo -e "${COLOR_GREEN}Port ${PORT} not in use!${COLOR_NONE}\n"
}

die() {
  echo -e "${COLOR_RED}${1}${COLOR_NONE}"
  exit 1
}
