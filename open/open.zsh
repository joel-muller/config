#!/bin/zsh

# Define associative arrays for aliases
typeset -A REPO_MAP
REPO_MAP=(
  i "hslu-intro-qc"
  c "config"
  p "hslu-pcp"
  n "notes"
  pe "hslu-pcp-exercise"
  s "scripts"
  e "hslu-enlab"
)

typeset -A WEBSITES
WEBSITES=(
  q "https://gpuhub.labservices.ch/"
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
