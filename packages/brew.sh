#!/bin/bash

echo "Updating package lists and upgrading existing packages..."
brew update
brew upgrade

echo ""
echo "Installing brew packages"

curl https://raw.githubusercontent.com/joel-muller/config/main/packages/brew.txt | xargs -I {} brew install {}

echo ""
echo "Installing cask packages..."
curl https://raw.githubusercontent.com/joel-muller/config/main/packages/cask.txt | xargs -I {} brew install --cask {}

echo ""
echo "Done ."
