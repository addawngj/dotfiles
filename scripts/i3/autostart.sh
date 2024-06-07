#!/usr/bin/env bash

## Author: An Dang <addawngj@gmail.com>
##
## Autostart Programs

# Config dir
CDIR="$HOME/.config"

# Export desktop session
export XDG_CURRENT_DESKTOP='i3'

# Kill already running process
_ps=(xsettingsd ksuperkey)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done

# Lauch xsettingsd daemon
xsettingsd --config="$CDIR"/xsettingsd/xsettingsd.conf &

# polkit agent
if [[ ! `pidof xfce-polkit` ]]; then
	/usr/lib/xfce-polkit/xfce-polkit &
fi

# Enable power management
xfce4-power-manager &

# Enable Super Keys For Menu
ksuperkey -e 'Super_L=Alt_L|F1' &
ksuperkey -e 'Super_R=Alt_L|F1' &

# Fix cursor
xsetroot -cursor_name left_ptr

# Restore wallpaper
feh --bg-scale "$CDIR"/wallpaper.jpg

# Lauch notification daemon
"$CDIR"/scripts/i3/dunst.sh

# Lauch polybar
"$CDIR"/scripts/i3/bar.sh

# Lauch compositor
"$CDIR"/scripts/i3/comp.sh

# Start spotify
exec spotify &