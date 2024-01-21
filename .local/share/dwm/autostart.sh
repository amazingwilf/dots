#!/bin/bash

killall -9 polkit-gnome/polkit-gnome-authentication-agent-1 picom slstatus &

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
nitrogen --restore
dunst &
picom -b
slstatus &

