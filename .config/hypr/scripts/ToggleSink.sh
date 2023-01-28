#!/bin/bash

CFG="$HOME/.config/wofi/launcher/config"
STYLE="$HOME/.config/wofi/style.css"

CHOICE=$(echo -e "Starship/Matisse HD Audio\nCORSAIR VOID ELITE Wireless" | wofi -c $CFG -s $STYLE -d -p "Output")

if [[ "$CHOICE" == "Starship/Matisse HD Audio" ]]; then
    pactl set-default-sink "alsa_output.pci-0000_2f_00.4.iec958-stereo"
elif [[ "$CHOICE" == "CORSAIR VOID ELITE Wireless" ]]; then
    pactl set-default-sink "alsa_output.usb-Corsair_CORSAIR_VOID_ELITE_Wireless_Gaming_Dongle-00.iec958-stereo"
fi