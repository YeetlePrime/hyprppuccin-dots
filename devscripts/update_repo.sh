#!/bin/env sh
homedir=$( getent passwd "$USER" | cut -d: -f6 )
scriptdir="$(dirname $0)"
repodir="${scriptdir}/.."
configdir="${repodir}/config"

#create directories if they don't exist yet
mkdir -p "${configdir}/.config"
mkdir -p "${configdir}/sddm/themes"

# zsh
cp "${homedir}/.zshrc" "${configdir}"
cp -r "${homedir}/.zsh" "${configdir}"

# hyprland
cp -r "${homedir}/.config/hypr" "${configdir}/.config"

# waybar
cp -r "${homedir}/.config/waybar" "${configdir}/.config"

# kitty
cp -r "${homedir}/.config/kitty" "${configdir}/.config"

# qt6ct
cp -r "${homedir}/.config/qt6ct" "${configdir}/.config"

# dolphin
cp "${homedir}/.config/dolphinrc" "${configdir}/.config"

# wlogout
cp -r "${homedir}/.config/wlogout" "${configdir}/.config"

# swaylock-effects
cp -r "${homedir}/.config/swaylock" "${configdir}/.config"

# sddm config and theme
cp "/etc/sddm.conf.d/sddm.conf" "${configdir}/sddm"
cp -r "/usr/share/sddm/themes/sddm-astronaut-theme" "${configdir}/sddm/themes"
