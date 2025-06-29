#!/bin/bash

# Set your wallpaper directory
WALL_DIR="$HOME/.config/hypr/wallpapers"

# Pick a random image
RANDOM_WALL=$(find "$WALL_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | shuf -n 1)

# Preload and set the wallpaper
hyprctl hyprpaper preload "$RANDOM_WALL"
hyprctl hyprpaper wallpaper "eDP-1,$RANDOM_WALL"

# Optional: Unload unused wallpapers to save memory
hyprctl hyprpaper unload unused

hyprctl hyprpaper listloaded | head -n 1 | cut -d' ' -f2- > ~/.config/hypr/current_wallpaper
