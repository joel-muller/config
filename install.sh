#!/bin/sh

OS="$(uname)"

if [ "$OS" = "Darwin" ]; then
    echo "This is Mac \n"
    echo "Updating package lists and upgrading existing packages... \n"
    brew update
    brew upgrade
    echo "\nInstalling brew packages"
    xargs brew install < packages/brew.txt
    echo "Installing cask packages..."
    xargs brew install --cask < packages/cask.txt
elif [ "$OS" = "Linux" ]; then
    echo "This is Linux \n"
    echo "Updating package lists and upgrading existing packages..."
    sudo apt update
    sudo apt upgrade -y
    echo "\nInstalling apt repositories"
    xargs sudo apt install -y < packages/apt.txt
else
    echo "Unknown system: $OS"
fi

echo "\nDone."
