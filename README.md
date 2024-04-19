# Hyprppuccin
These are my personal dotfiles for my personal daily driver linux machine.

## Dependencies
- hyprland (install hyprland with nvidia method, if you have a nvidia gpu)
- swww
- nvim (or any other editor)
- kitty
- sddm (enable with `systemctl enable sddm`)
- zsh

## Installation
1. Install all the listed dependencies
1. Clone the repository `git clone https://github.com/YeetlePrime/hyprppuccin-dots`
1. Move into repository `cd hyprppuccin-dots`
1. Backup your current config directory `cp -r ~/.config ~/.config.bak`
1. Copy config files `cp -r config/.config/* ~/.config`
1. Backup .zsh and .zshrc (if it exists) `cp -r ~/.zsh ~/.zsh.bak` and `cp ~/.zshrc ~/.zshrc.bak`
1. Copy those aswell `cp -r config/.zsh ~` and `cp config/.zshrc ~`
