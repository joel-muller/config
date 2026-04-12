#!/bin/sh

OS="$(uname)"

if [ "$OS" = "Darwin" ]; then
    echo "This is Mac"
    curl https://raw.githubusercontent.com/joel-muller/config/main/install/mac.sh | sh
elif [ "$OS" = "Linux" ]; then
    echo "This is Linux"
    curl https://raw.githubusercontent.com/joel-muller/config/main/install/debian.sh | sh
else
    echo "Unknown system: $OS"
fi
