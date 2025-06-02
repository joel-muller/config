#!/bin/bash

dir_name="backup_repositories_$(date -u +%d_%m_%Y)"
backup_dir="$HOME/$dir_name"

mkdir "$backup_dir"

echo "Create backup dir"
cd "$backup_dir" || exit 1

curl https://raw.githubusercontent.com/joel-muller/config/refs/heads/main/backup/joel-muller-repositories.txt | xargs -I {} git clone --mirror {}

cd || exit

echo "Creating zip"
zip -r "${dir_name}.zip" "$dir_name"

echo "Removing dir"
rm -rf "$backup_dir"

echo "Done"
