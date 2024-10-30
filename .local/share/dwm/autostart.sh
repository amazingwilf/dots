#!/bin/bash

kill -9 polkit-gnome-authentication-agent-1 picom

/usr/libexec/polkit-gnome-authentication-agent-1 &
light -S 80
nitrogen --restore
picom -b
