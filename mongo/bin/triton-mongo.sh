#! /usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

die() {
  local msg="$@"
  [[ -z "${msg}" ]] || {
    echo
    tput rev  # reverse
    tput bold # bold
    echo "${msg}"
    tput sgr0 # clear
  }
  exit 1
}


healthcheck() {
  # Am I primary?
  echo "health"
}

run_command() {
  local cmd="$1"

  case "${cmd}" in
    "health")
      healthcheck
      ;;
    "on_change") 
      echo "change"
      ;;
    *)
      die "Unrecognised command"
      ;;
  esac
}

run_command "$@"

