#!/bin/bash

dir="$HOME/.config/rofi/wallpaper"
theme='style-1'
WALLPAPER_DIR="$HOME/Pictures/wallpapers"
CACHE_DIR="$HOME/.cache/wall_thumb"

mkdir $CACHE_DIR

for f in $(ls -v "$WALLPAPER_DIR"/*.png); do
    num=$(basename "$f" .png)
    thumb="$CACHE_DIR/$num.png"
    if [ ! -f "$thumb" ]; then
      convert "$f" -thumbnail 200x120 "$thumb"
    fi
done


CHOICE=$(
  for f in $(ls -v "$WALLPAPER_DIR"/*.png); do
    num=$(basename "$f" .png)
    printf " \x00icon\x1f%s\n" "$CACHE_DIR/$num.png"
  done | rofi -dmenu \
    -p "󰸉 " \
    -theme ${dir}/${theme}.rasi \
    -show-icons \
    -i \
    -theme-str 'element-icon { size: 130px; }' \
    -format i
)

if [ -n "$CHOICE" ]; then
  files=($(ls -v "$WALLPAPER_DIR"/*.png))
  CHOSEN_FILE="${files[$CHOICE]}"
  matugen image "$CHOSEN_FILE" --source-color-index 2
  ln -f "$CHOSEN_FILE" "$HOME/.config/hypr/hyprlock/wallpaper"
fi
  
