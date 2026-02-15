#!/bin/bash

files=("hypr" "cava" "fastfetch" "kitty" "matugen" "rofi" "swaync" "waybar" "wlogout" "zed" "nvim" "spicetify")

for item in "${files[@]}"; do
	rsync -av --delete ~/.config/"$item"/ "$item"/
	echo "Synced $item"
done

sed -i 's/"api-key": ".*"/"api-key": "API_KEY"/' zed/settings.json

echo "DONE: sanitized zed api key in repository"
