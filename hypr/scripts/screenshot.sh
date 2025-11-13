#!/bin/zsh

SCREENSHOT_PATH=~/Pictures/screenshot/$(date +'%Y-%m-%d_%H-%M-%S').png

grim -g "$(slurp)" "$SCREENSHOT_PATH"
wl-copy < "$SCREENSHOT_PATH"

notify-send "Screenshot saved" "$SCREENSHOT_PATH"

