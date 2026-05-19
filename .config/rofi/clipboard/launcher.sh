#!/usr/bin/env bash


dir="$HOME/.config/rofi/clipboard"
theme='style-1'

## Run
rofi \
    -dmenu -p " " \
    -theme ${dir}/${theme}.rasi
