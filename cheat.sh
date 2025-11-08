#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 [-t|-c|-s] <command>"
    exit 1
fi

prefix="$1"
shift

case "$prefix" in
    -t)
        tldr "$1"
        ;;
    -c)
        cheat "$1"
        ;;
    -s)
        curl "https://cheat.sh/$1" | less
        ;;
    *)
        vim -R ~/notes/cheat/"$prefix".txt
        ;;
esac
