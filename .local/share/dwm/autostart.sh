#!/bin/bash

_ps=(picom dunst ksuperkey mpd xfce-polkit xfce4-power-manager)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done

xsetroot -cursor_name left_ptr

/usr/lib/xfce-polkit/xfce-polkit &

nitrogen --restore

killall -q picom
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom --config /usr/share/archcraft/dwm/picom.conf &

dwmblocks &

mpd &
