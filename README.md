# Hyprland-dotfiles
Dotfiles for my Hyprland Rice  
![Rice (1)](https://user-images.githubusercontent.com/80547533/215270070-48e70444-8a7e-4644-9afc-abc1a70fdaaa.png)

## 'bin'
This folder contains my heavily modified hyprland screenshot script, which without additional modification, will not work on anything other than a dual 2560x1440 display setup, resulting in a resolution of 5120x1440.  
The script depends on the following:  
- `feh` for Overlaying a static image
- `swappy` for Editing
- `imagemagick` For Cropping
- `grim` for screenshots obviously
- `slurp` for region selecting
- `wofi` to select how to screenshot, eg region or fullscreen
- `wl-clipboard` to copy image to clipboard
- `jq` to parse json from hyprctl
