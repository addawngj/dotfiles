#!/usr/bin/env bash

## Author: An Dang <addawngj@gmail.com>

# Import Current Theme
DIR="$HOME/.config"
RASI="$DIR/rofi/launcher.rasi"

# Run
rofi \
    -show drun \
	-kb-cancel Super-D \
	-theme ${RASI}