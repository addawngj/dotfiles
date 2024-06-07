#!/usr/bin/env bash

## Author: An Dang <addawngj@gmail.com>

# Import Current Theme
DIR="$HOME/.config"
RASI="$DIR/rofi/runner.rasi"

# Run
rofi \
    -show run \
	-theme ${RASI}