#!/bin/zsh

# Define associative arrays for aliases
typeset -A REPO_MAP
REPO_MAP=(
  c "config"
  n "notes"
  s "scripts"
  e "hslu-enlab"
)

typeset -A WEBSITES
WEBSITES=(
)

# Check if an alias was passed
if [[ $# -lt 1 ]]; then
  echo "Please provide an alias as an argument."
  exit 1
fi

alias=$1

if [[ -n ${REPO_MAP[$alias]} ]]; then
  repo_name=${REPO_MAP[$alias]}
  url="https://github.com/joel-muller/${repo_name}"
elif [[ -n ${WEBSITES[$alias]} ]]; then
  url=${WEBSITES[$alias]}
else
  url="https://github.com/joel-muller/${alias}"
fi

open "$url"
