#!/bin/zsh

if [[ $({wpctl get-volume @DEFAULT_AUDIO_SINK@ | cut -c9- | tr -d "\n"; echo " > 1"} | bc) == 1 ]]; then
	wpctl set-volume @DEFAULT_AUDIO_SINK@ 100%
fi