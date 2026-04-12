#!/bin/bash

ANTIGEN_PATH=$HOME/antigen.zsh
ANTIGEN_REPO=$HOME/.antigen

# Check if Antigen is already installed
if [ -f "$ANTIGEN_PATH" ]; then
    rm "$ANTIGEN_PATH"
    echo "Uninstall Antigen file"
fi

if [ -d "$ANTIGEN_REPO" ]; then
    rm -rf "$ANTIGEN_REPO"
    echo "Uninstall Antigen repository"
fi

# Installing Antigen
echo "Installing Antigen"
curl -L git.io/antigen > "$ANTIGEN_PATH"
