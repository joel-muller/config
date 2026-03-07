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
curl -L git.io/antigen > "$ANTIGEN_PATH"

echo "Linking the dotfiles"
# Linking the Dotfiles
rm -f "$HOME/.vimrc"
rm -f "$HOME/.aerospace.toml"
rm -f "$HOME/.gitconfig"
rm -f "$HOME/.neomuttrc"
rm -f "$HOME/.tmux.conf"
rm -f "$HOME/.zshrc"
rm -f "$HOME/.ideavimrc"

ln -nfs "$PATH_OF_DOTFILES/.vimrc" "$HOME/.vimrc"
ln -nfs "$PATH_OF_DOTFILES/.aerospace.toml" "$HOME/.aerospace.toml"
ln -nfs "$PATH_OF_DOTFILES/.gitconfig" "$HOME/.gitconfig"
ln -nfs "$PATH_OF_DOTFILES/.neomuttrc" "$HOME/.neomuttrc"
ln -nfs "$PATH_OF_DOTFILES/.tmux.conf" "$HOME/.tmux.conf"
ln -nfs "$PATH_OF_DOTFILES/.zshrc" "$HOME/.zshrc"
ln -nfs "$HOME/.vimrc" "$HOME/.ideavimrc"

# Lining the config folders
mkdir -p "$CONFIG_FOLDER"
rm -rf "$CONFIG_FOLDER/nvim"
ln -s "$HOME/config/nvim" "$CONFIG_FOLDER/nvim"
