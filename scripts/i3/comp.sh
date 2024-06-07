#!/usr/bin/env bash

## Author: An Dang <addawngj@gmail.com>

# i3 directory
DIR="$HOME/.config"

# Terminate if picom is already running
killall -q picom

# Wait until the processes have been shut down
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done

# Launch picom
picom --config "$DIR"/picom/picom.conf &