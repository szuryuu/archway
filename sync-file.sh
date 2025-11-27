#!/bin/bash

files=("hypr" "cava" "fastfetch" "kitty" "matugen" "rofi" "swaync" "waybar" "wlogout" "zed" "nvim" "spicetify")

for item in "${files[@]}"; do
	rsync -av --delete ~/.config/"$item"/ "$item"/
	echo "Synced $item"
done
