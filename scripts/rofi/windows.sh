#!/usr/bin/env bash

## Author: An Dang <addawngj@gmail.com>

# Import Current Theme
DIR="$HOME/.config"
RASI="$DIR/rofi/windows.rasi"

# Run
rofi \
    -show window \
	-theme ${RASI}