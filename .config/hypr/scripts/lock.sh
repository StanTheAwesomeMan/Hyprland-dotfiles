#!/bin/bash

rosewater="f5e0dc"
flamingo="f2cdcd"
pink="f5c2e7"
mauve="cba6f7"
red="f38ba8"
maroon="eba0ac"
peach="fab387"
yellow="f9e2af"
green="a6e3a1"
teal="94e2d5"
sky="89dceb"
sapphire="74c7ec"
blue="89b4fa"
lavender="b4befe"

text="cdd6f4"
base="1e1e2ec6"
mantle="181825c6"
crust="11111bc6"

status=$(playerctl status)

if [[ "$status" == "Playing" ]]; then
  playerctl pause
fi

swaylock $(echo\
  --clock \
  --indicator \
  --indicator-radius 150 \
  --screenshots \
  --effect-scale 0.4 \
  --effect-blur 7x5 \
  --datestr "%a %e.%m.%Y" \
  --timestr "%k:%M" \
  --grace 2 \
  --grace-no-mouse \
  -F \
  -e \
  --fade-in 0.7 \
  --ring-color $mauve \
  --ring-clear-color $green \
  --ring-ver-color $sapphire \
  --ring-wrong-color $red \
  --inside-{,clear-,caps-lock-,ver-,wrong-}color\ $base \
  --text-{,clear-,caps-lock-,ver-,wrong-}color\ $text \
  --{,caps-lock-}key-hl-color\ $blue \
  --{,caps-lock-}bs-hl-color\ $red
)

if [[ "$status" == "Playing" ]]; then
  playerctl play
fi
