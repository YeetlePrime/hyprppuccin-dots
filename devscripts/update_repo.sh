#!/bin/env sh
homedir=$( getent passwd "$USER" | cut -d: -f6 )
scriptdir="$(dirname $0)"
repodir="${scriptdir}/.."
configdir="${repodir}/config"

#create directories if they don't exist yet
mkdir -p "${configdir}/.config"
mkdir -p "${configdir}/sddm/themes"

# zsh
cp -f "${homedir}/.zshrc" "${configdir}"
cp -rf "${homedir}/.zsh" "${configdir}"

# hyprland
cp -rf "${homedir}/.config/hypr" "${configdir}/.config"

# waybar
cp -rf "${homedir}/.config/waybar" "${configdir}/.config"

# kitty
cp -rf "${homedir}/.config/kitty" "${configdir}/.config"

# qt6ct
cp -rf "${homedir}/.config/qt6ct" "${configdir}/.config"

# dolphin
cp -f "${homedir}/.config/dolphinrc" "${configdir}/.config"

# wlogout
cp -rf "${homedir}/.config/wlogout" "${configdir}/.config"

# swaylock-effects
cp -rf "${homedir}/.config/swaylock" "${configdir}/.config"

# sddm config and theme
cp -f "/etc/sddm.conf.d/sddm.conf" "${configdir}/sddm"
cp -rf "/usr/share/sddm/themes/sddm-astronaut-theme" "${configdir}/sddm/themes"
