# Archway

A highly customized collection of dotfiles for Arch Linux, focused on building an aesthetic and productive environment using Hyprland. This repository serves as a personal configuration hub for window management, dynamic theming, and development workflows.

---

## Configuration Highlights

This project focuses on a seamless and visually cohesive desktop experience through deep customization:

-   **Dynamic Theming (Matugen)**
    Implementation of Matugen to generate color palettes from wallpapers and apply them dynamically across the system, including Hyprland borders, Kitty terminal, and Rofi launchers.

-   **Hyprland Ecosystem**
    A fully tuned Hyprland compositor setup featuring custom animations, blur effects, and specialized scripts for system controls (Airplane Mode, Brightness, Volume).

-   **Development Workflow (Neovim/Zed)**
    A robust Neovim configuration (based on NvChad) and Zed editor settings, optimized for coding with LSP support, auto-formatting, and distraction-free modes.

## Architecture Overview

The configuration is organized into modular components handling specific desktop functions:

### 1. Window Management
-   **Hyprland**: Core compositor managing tiling, rules, and input handling.
-   **Waybar**: Highly customized status bar with grouping modules and custom styles.
-   **SwayNC**: Notification center integrated with the overall theme.

### 2. Theming & Visuals
-   **Matugen**: The backbone of the color scheme, generating `colors.css` and config files for other apps.
-   **Spicetify**: Custom CSS and marketplace extensions for Spotify to match the system theme.
-   **Cava**: Audio visualizer configured with gradient shaders.

## Automation & Scripts

Custom shell scripts and configurations handle system management and maintenance:

| Workflow | Description |
| :--- | :--- |
| **Dotfiles Sync** | A custom `sync-file.sh` script to synchronize local configurations (`~/.config/`) back to this repository using rsync. |
| **System Controls** | dedicated scripts in `hypr/scripts/` for managing screenshots, lockscreen (Hyprlock), and waybar reloading. |
| **Session Management** | Wlogout configuration with custom icons for handling system power states. |

## Project Structure

```bash
.
├── hypr/                 # Hyprland core config & scripts
│   ├── configs/          # Keybinds, rules, and animation settings
│   └── scripts/          # Utility scripts (volume, brightness, screenshot)
├── nvim/                 # Neovim (NvChad) configuration
├── waybar/               # Status bar modules and styling
├── matugen/              # Theming generator templates
├── kitty/                # Terminal emulator config
├── rofi/                 # Application launcher styling
├── spicetify/            # Spotify client customization
├── zed/                  # Zed editor settings
└── sync-file.sh          # Automation script for repo synchronization
```

## Tech Stack

-   Compositor: Hyprland
-   Shell: Zsh / Bash
-   Theming: Matugen, Sass
-   Bar & Widgets: Waybar, SwayNC, Rofi, Wlogout
-   Editors: Neovim (Lua), Zed
-   Terminal: Kitty

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
