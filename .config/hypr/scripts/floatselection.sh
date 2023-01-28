#!/bin/bash

input=$(slurp -s 1e1e2e7f -b 00000000 -c cba6f7 -w 4 -d)
posx=$(hyprctl cursorpos -j | jq ".x")

# Split input string into x,y and wxh
x=$(echo $input | awk -F',' '{print $1}')
y=$(echo $input | awk -F',' '{print $2}' | awk -F' ' '{print $1}')
wxh=$(echo $input | awk -F',' '{print $2}' | awk -F' ' '{print $2}')

# Split wxh into w and h
w=$(echo $wxh | awk -F'x' '{print $1}')
h=$(echo $wxh | awk -F'x' '{print $2}')

if [[ $posx -gt 2560 ]]; then
  x=$((x-2560))
fi

hyprctl dispatch exec "[float;move $x $y;size $w $h] kitty"