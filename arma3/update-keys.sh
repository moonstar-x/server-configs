#!/bin/bash

KEYS_DIR=~/arma3/keys
MODS_DIR=~/arma3mods/steamapps/workshop/content/107410

# Remove old keys
find $KEYS_DIR ! -name 'a3.bikey' -type f -exec rm -f {} +
echo "Old keys removed."

# Copy new keys
find $MODS_DIR -name '*.bikey' -type f -exec cp {} $KEYS_DIR \;
echo "New keys copied."
