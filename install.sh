#!/usr/bin/env bash

PATH_OF_DOTFILES=$HOME/config/dotfiles
CONFIG_FOLDER=$HOME/.config
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
curl -L git.io/antigen > $HOME/antigen.zsh

# Remove links to existing dotfiles
echo "Remove links to existing dotfiles"
ls -A $PATH_OF_DOTFILES | xargs -I {} rm -f $HOME/{}

# Linking dotfiles
echo "Linking dotfiles"
ls -A $PATH_OF_DOTFILES | xargs -I {} ln -nfs $PATH_OF_DOTFILES/{} $HOME/{}

# Linking .vimrc dotfile to a new intellij dotfile
[ -e "$HOME/.ideavimrc" ] && rm "$HOME/.ideavimrc"
ln -s "$HOME/.vimrc" "$HOME/.ideavimrc"

# Remove .config folder if it already exists and create a new one
if [ -d "$CONFIG_FOLDER" ]; then
    echo "Removing existing .config folder"
    rm -rf "$CONFIG_FOLDER"
fi

echo "Creating new .config folder"
mkdir -p "$CONFIG_FOLDER"

# Copy nvim folder to config folder
echo "Linking nvim folder to config folder"
ln -s "$HOME/config/nvim" "$CONFIG_FOLDER"
