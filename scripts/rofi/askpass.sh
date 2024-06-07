#!/usr/bin/env bash

## Author: An Dang <addawngj@gmail.com>

# Import Current Theme
DIR="$HOME/.config"
RASI="$DIR/rofi/askpass.rasi"

# Rofi text dialog to get password
rofi -dmenu \
     -password \
     -i \
     -p "Root" \
     -theme ${RASI}