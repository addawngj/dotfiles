#!/usr/bin/env bash

## Author: An Dang <addawngj@gmail.com>

# i3 directory
DIR="$HOME/.config"

# rofi sudo askpass helper
export SUDO_ASKPASS="$DIR"/scripts/rofi/askpass.sh

# execute the application
sudo -A $1