#!/bin/bash

curl https://raw.githubusercontent.com/joel-muller/config/main/packages/apt.sh | sh

echo "Make zsh the standard shell"
chsh -s $(which zsh)

echo "Your default Terminal is now:"
echo $SHELL

echo "Everything went fine, restart the pc now to have zsh your standard shell"
