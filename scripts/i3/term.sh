#!/usr/bin/env bash

## Author: An Dang <addawngj@gmail.com>
##
## launch alacritty with i3 config

# i3 directory
DIR="$HOME/.config"
CONFIG="$DIR/alacritty/alacritty.toml"

if [ "$1" == "--float" ]; then
	alacritty --class 'alacritty-float,alacritty-float' --config-file "$CONFIG"
elif [ "$1" == "--full" ]; then
	alacritty --class 'alacritty-fullscreen,alacritty-fullscreen' --config-file "$CONFIG" \
			  -o window.startup_mode="'Fullscreen'" \
			  window.padding.x=30 window.padding.y=30 \
			  window.opacity=0.95 font.size=14
else
	alacritty --config-file "$CONFIG" ${@}
fi