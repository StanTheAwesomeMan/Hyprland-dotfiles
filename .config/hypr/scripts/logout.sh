#!/bin/bash

# Using Wofi to select Logoff/Reboot/Shutdown because yes

WOFICFG="$HOME/.config/wofi/launcher/config"
WOFISTYLE="$HOME/.config/wofi/style.css"

Command=$(printf "%s\n" Logoff Reboot Shutdown | wofi -d -p "")

if [[ $Command = "Logoff" ]]; then
	hyprctl dispatch exit ""
elif [[ $Command = "Reboot" ]]; then
	sudo reboot now
elif [[ $Command = "Shutdown" ]]; then
	shutdown now
else
	exit 1;
fi