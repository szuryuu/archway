#!/bin/bash

files=("hypr" "cava" "fastfetch" "kitty" "matugen" "rofi" "swaync" "swaync 0.12" "waybar" "wlogout" "zed" "nvim")

for item in "${files[@]}"; do
	rsync -av --delete ~/.config/"$item"/ "$item"/
	echo "Synced $item"
done
