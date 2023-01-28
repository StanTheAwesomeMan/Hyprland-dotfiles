#!/bin/bash

title=$(playerctl metadata | grep title | cut -c36-)
artist=$(playerctl metadata | grep artist | cut -c36-)
microseconds=$(playerctl metadata | grep length | cut -c36-)

hours=$(($microseconds / 3600000000))
microseconds=$(($microseconds % 3600000000))

minutes=$(($microseconds / 60000000))
microseconds=$(($microseconds % 60000000))

seconds=$(($microseconds / 1000000))
microseconds=$(($microseconds % 1000000))

if [ $hours -gt 0 ]; then
  length=$(printf "%02d:" $hours)
fi

length+=$(printf "%02d:" $minutes)
length+=$(printf "%02d\n" $seconds)

seconds=$(echo $(playerctl position)/1 | bc)

hours=$(($seconds / 3600))
seconds=$(($seconds % 3600))

minutes=$(($seconds / 60))
seconds=$(($seconds % 60))

if [ $hours -gt 0 ]; then
  pos=$(printf "%02d:" $hours)
fi

pos+=$(printf "%02d:" $minutes)
pos+=$(printf "%02d\n" $seconds)

if [[ $(playerctl status) == "Playing" ]]; then
  echo "'$title' - $artist ⏐ ╼ $pos / $length ╾" | sed 's/&/\&amp;/g' # sed replaces '&' with '&amp;' because Waybar wants it
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#      | Edit this to change the output format |
#      -----------------------------------------
fi
