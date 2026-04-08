#!/bin/bash

VAULT_DIR="/home/weberty/Documents/P21"

/usr/bin/git -C "$VAULT_DIR" add .

if ! /usr/bin/git -C "$VAULT_DIR" diff --cached --quiet; then
    /usr/bin/git -C "$VAULT_DIR" commit -m "Hour auto backup: $(date '+%Y-%m-%d %H:%M:%S')"
    /usr/bin/git -C "$VAULT_DIR" push origin master
fi

export PATH=/usr/bin:/bin:/usr/local/bin
