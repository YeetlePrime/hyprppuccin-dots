# Hyprppuccin
These are my personal dotfiles for my personal daily driver linux machine.

## Used softare
- Display System: [wayland](https://wayland.freedesktop.org/) 
- Display/Login Manager: [sddm](https://github.com/sddm/sddm)
- Window Manager: [hyprland](https://hyprland.org/)
- Wallpaper Daemon: [swww](https://hyprland.org/)
- Statusbar: [waybar](https://github.com/Alexays/Waybar)
- Editor: [neovim](https://github.com/neovim/neovim)
- Shell: [zsh](https://wiki.archlinux.org/title/zsh)
- Terminal: [kitty](https://github.com/kovidgoyal/kitty)

## Dependencies
- hyprland (install hyprland with nvidia method, if you have a nvidia gpu)
- swww
- nvim (or any other editor)
- kitty
- sddm (enable with `systemctl enable sddm`)
- zsh

## Installation
1. Install all the listed dependencies
1. Clone the repository `git clone --recurse-submodules --remote-submodules https://github.com/YeetlePrime/hyprppuccin-dots`
1. Cd into repository `cd hyprppuccin-dots`
1. Execute the install script `sudo devscripts/install.sh` (sudo is needed for sddm config) WARNING!! Your configs for the same packages will be overwritten. You may create a backup beforehand.
