#!/bin/env sh

# █░█ ▄▀█ █▀█ █▀
# ▀▄▀ █▀█ █▀▄ ▄█

user=${SUDO_USER:-${LOGNAME}}
homedir=$( getent passwd "$user" | cut -d: -f6 )
scriptdir="$(dirname $0)"
repodir="${scriptdir}/.."
configdir="${repodir}/config"
 

# █▀▄ █▀▀ █▀▀ ▄▀█ █░█ █░░ ▀█▀
# █▄▀ ██▄ █▀░ █▀█ █▄█ █▄▄ ░█░

#create directories if they don't exist yet
mkdir -p "${configdir}/.config"
mkdir -p "${configdir}/sddm/themes"
mkdir -p "${configdir}/icons"

# zsh
cp -f "${homedir}/.zshrc" "${configdir}"
cp -rf "${homedir}/.zsh" "${configdir}"
cp -f "${homedir}/.config/starship.toml" "${configdir}/.config"

# hyprland
cp -rf "${homedir}/.config/hypr" "${configdir}/.config"

# waybar
cp -rf "${homedir}/.config/waybar" "${configdir}/.config"

# kitty
cp -rf "${homedir}/.config/kitty" "${configdir}/.config"

# qt6ct
cp -rf "${homedir}/.config/qt6ct" "${configdir}/.config"

# qt5ct
cp -rf "${homedir}/.config/qt5ct" "${configdir}/.config"

# dolphin
cp -f "${homedir}/.config/dolphinrc" "${configdir}/.config"

# kvantum
cp -rf "${homedir}/.config/Kvantum" "${configdir}/.config"

# wlogout
cp -rf "${homedir}/.config/wlogout" "${configdir}/.config"

# swaylock-effects
cp -rf "${homedir}/.config/swaylock" "${configdir}/.config"

# rofi
cp -rf "${homedir}/.config/rofi" "${configdir}/.config"

# copy icons
cp -rf "${homedir}/.icons/Tela-circle-dracula" "${repodir}/icons"


# █▀█ █▀█ █▀█ ▀█▀
# █▀▄ █▄█ █▄█ ░█░

if [[ "$(id -u)" -ne 0 ]] then
	echo "Copying the sddm configuration requires root privileges."
else
	# sddm config and theme
	cp -f "/etc/sddm.conf.d/sddm.conf" "${configdir}/sddm"
	cp -rf "/usr/share/sddm/themes/hyprppuccin" "${configdir}/sddm/themes"
fi
