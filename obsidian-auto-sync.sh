#!/bin/bash

VAULT_DIR="/home/weberty/Documents/P21"

cd "$VAULT_DIR" || exit

git add .

if ! git diff --cached --quiet; then
    git commit -m "Daily auto backup: $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin master
fi

