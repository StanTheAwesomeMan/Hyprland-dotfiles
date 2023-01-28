#!/bin/bash

./desktop-portal-script.sh &
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP & # I have no idea what this does, i forgot why i added it :p
/usr/lib/polkit-kde-authentication-agent-1 &
easyeffects --gapplication-service &
corectl &
waybar &
~/.config/hypr/scripts/wallcycle.sh &
dunst &
