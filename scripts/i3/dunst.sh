#!/usr/bin/env bash

## Author: An Dang <addawngj@gmail.com>

# i3 directory
DIR="$HOME/.config"

# Launch dunst daemon
if [[ `pidof dunst` ]]; then
	pkill dunst
fi

dunst -config "$DIR"/dunst/dunstrc &