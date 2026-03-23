#!/bin/bash

cat <<'EOF'
╔══════════════════════════════════════════════════════╗
║                   SZURYUU CHEATSHEET                 ║
╚══════════════════════════════════════════════════════╝

  HYPRLAND
  ─────────────────────────────────────────────────────
  SUPER + Return          Terminal
  SUPER + D               Launcher (rofi)
  SUPER + Q               Kill window
  SUPER + W               Wallpaper picker
  SUPER + V               Clipboard
  SUPER + L               Lock screen
  SUPER + H               Hide waybar
  SUPER + Space           Toggle float
  SUPER + SHIFT + F       Fullscreen
  SUPER + SHIFT + S       Screenshot
  SUPER + SHIFT + E       Yazi file manager
  SUPER + SHIFT + RETURN  Float terminal
  SUPER + Tab             App switcher
  SUPER + 1-0             Switch workspace
  SUPER + SHIFT + 1-0     Move to workspace
  SUPER + arrows          Move focus
  SUPER + CTRL + arrows   Move window
  SUPER + SHIFT + arrows  Resize window
  SUPER + SHIFT + C       Center window
  CTRL + ALT + Delete     Exit Hyprland

  NEOVIM — NAVIGATION
  ─────────────────────────────────────────────────────
  Space + ff              Find files
  Space + fw              Find word (grep)
  Space + fb              Find buffers
  Space + e               File tree
  ;                       Command mode
  jk                      Exit insert mode

  NEOVIM — COPILOT
  ─────────────────────────────────────────────────────
  Ctrl + L                Accept suggestion
  Ctrl + J                Accept word
  Ctrl + ]                Dismiss suggestion
  :CopilotChat            Open AI chat
  :CopilotChatExplain     Explain selected code
  :CopilotChatFix         Fix bug
  :CopilotChatOptimize    Optimize code
  :CopilotChatTests       Generate tests
  :CopilotChatCommit      Generate commit message
  :CopilotChatModels      List available models

  NEOVIM — LSP
  ─────────────────────────────────────────────────────
  gd                      Go to definition
  gr                      Go to references
  K                       Hover docs
  Space + fm              Format file

  NEOVIM — GIT
  ─────────────────────────────────────────────────────
  Space + gs              Git status
  Space + gc              Git commits

EOF
EOF
