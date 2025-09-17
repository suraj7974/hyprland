#!/bin/bash

ASSETS_DIR="$HOME/.config/fastfetch/assets"
CONFIG_TEMPLATE="$HOME/.config/fastfetch/config-template.json"
CONFIG_FINAL="$HOME/.config/fastfetch/config.json"

# Generate a number between 1 and 100
RANDOM_NUM=$((RANDOM % 100 + 1))

if [ "$RANDOM_NUM" -le 20 ]; then
    # 20% chance: show Arch ASCII logo
    jq '.logo.source = "arch" | .logo.type = "auto"' "$CONFIG_TEMPLATE" > "$CONFIG_FINAL"
else
    # 80% chance: show random image
    RANDOM_IMAGE=$(find "$ASSETS_DIR" -type f -name "*.png" | shuf -n 1)
    jq --arg img "$RANDOM_IMAGE" '.logo.source = $img | .logo.type = "kitty-direct"' "$CONFIG_TEMPLATE" > "$CONFIG_FINAL"
fi

# Run fastfetch with updated config
fastfetch --load-config "$CONFIG_FINAL"
