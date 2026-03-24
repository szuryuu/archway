#!/bin/bash

T='\033[0m'
H='\033[38;2;134;209;233m'
G='\033[38;2;204;170;0m'
W='\033[38;2;224;224;224m'
D='\033[38;2;68;68;68m'

echo -e "
${H}╔══════════════════════════════════════════════════════════════════════════════════╗
║                           HYPRLAND — SZURYUU                                     ║
╚══════════════════════════════════════════════════════════════════════════════════╝${T}

  ${G}APPS${T}                                   ${G}SYSTEM${T}
  ${D}─────────────────────────────────────  ─────────────────────────────────────${T}
  ${H}SUPER + Return${T}          Terminal       ${H}SUPER + L${T}               Lock screen
  ${H}SUPER + SHIFT + RETURN${T}  Float terminal ${H}SUPER + H${T}               Hide waybar
  ${H}SUPER + D${T}               Launcher       ${H}SUPER + R${T}               Restart waybar
  ${H}SUPER + B${T}               Browser        ${H}SUPER + F1${T}              Cheatsheet Neovim
  ${H}SUPER + E${T}               File manager   ${H}SUPER + F2${T}              Cheatsheet Hyprland
  ${H}SUPER + SHIFT + E${T}       Yazi           ${H}SUPER + CTRL + B${T}        Waybar styles
  ${H}SUPER + V${T}               Clipboard      ${H}SUPER + ALT + B${T}         Waybar layout
  ${H}SUPER + W${T}               Wallpaper      ${H}CTRL + ALT + Delete${T}     Exit Hyprland
  ${H}SUPER + C${T}               Color picker   ${H}SUPER + SHIFT + Q${T}       Kill process

  ${G}WINDOW${T}                                 ${G}WORKSPACE${T}
  ${D}─────────────────────────────────────  ─────────────────────────────────────${T}
  ${H}SUPER + Q${T}               Kill window    ${H}SUPER + 1-0${T}             Switch workspace
  ${H}SUPER + Space${T}           Toggle float   ${H}SUPER + SHIFT + 1-0${T}     Move to workspace
  ${H}SUPER + SHIFT + F${T}       Fullscreen     ${H}SUPER + scroll up${T}       Workspace +1
  ${H}SUPER + SHIFT + C${T}       Center window  ${H}SUPER + scroll down${T}     Workspace -1
  ${H}SUPER + P${T}               Pseudo tile    ${H}SUPER + J${T}               Toggle split
  ${H}SUPER + Tab${T}             App switcher
  ${H}SUPER + SHIFT + Tab${T}     App sw reverse

  ${G}FOCUS${T}                                  ${G}MOVE WINDOW${T}
  ${D}─────────────────────────────────────  ─────────────────────────────────────${T}
  ${H}SUPER + Left${T}            Focus left     ${H}SUPER + CTRL + Left${T}     Move left
  ${H}SUPER + Right${T}           Focus right    ${H}SUPER + CTRL + Right${T}    Move right
  ${H}SUPER + Up${T}              Focus up       ${H}SUPER + CTRL + Up${T}       Move up
  ${H}SUPER + Down${T}            Focus down     ${H}SUPER + CTRL + Down${T}     Move down
                                         ${H}SUPER + LMB drag${T}        Move (mouse)
                                         ${H}SUPER + RMB drag${T}        Resize (mouse)

  ${G}RESIZE${T}                                 ${G}MEDIA${T}
  ${D}─────────────────────────────────────  ─────────────────────────────────────${T}
  ${H}SUPER + SHIFT + Left${T}    Shrink width   ${H}XF86AudioRaiseVolume${T}    Volume up
  ${H}SUPER + SHIFT + Right${T}   Grow width     ${H}XF86AudioLowerVolume${T}    Volume down
  ${H}SUPER + SHIFT + Up${T}      Shrink height  ${H}XF86AudioMute${T}           Toggle mute
  ${H}SUPER + SHIFT + Down${T}    Grow height    ${H}XF86AudioMicMute${T}        Toggle mic
                                         ${H}XF86MonBrightnessUp${T}     Brightness up
  ${G}SCREENSHOT${T}                             ${H}XF86MonBrightnessDown${T}   Brightness down
  ${D}─────────────────────────────────────${T}  ${H}XF86AudioPlay${T}           Play/pause
  ${H}SUPER + SHIFT + S${T}       Area capture   ${H}XF86AudioNext${T}           Next track
                          (auto copy)    ${H}XF86AudioPrev${T}           Prev track

  ${G}GESTURES (Touchpad 3 finger)${T}
  ${D}────────────────────────────────────────────────────────────────────────────${T}
  ${H}3f Right${T}                Next workspace    ${H}3f Up + SUPER${T}         Fullscreen
  ${H}3f Down + ALT${T}           Close window      ${H}3f Left${T}               Float toggle
"
read -n 1 -s -r -p "  [any key to close]"
