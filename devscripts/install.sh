#!/bin/env sh
homedir=$( getent passwd "$USER" | cut -d: -f6 )
scriptdir="$(dirname $0)"
repodir="${scriptdir}/.."
configdir="${scriptdir}/../config"

#create directories if they don't exist yet
mkdir -p "${homedir}/.config"
mkdir -p "/etc/sddm.conf.d"
mkdir -p "/usr/share/sddm/themes"
mkdir -p "/usr/share"

# zsh
cp "${configdir}/.zshrc" "${homedir}"
cp -r "${configdir}/.zsh" "${homedir}"

# copy all files from .config
cp -r "${configdir}/.config/." "${homedir}/.config"

# sddm config and theme
cp "${configdir}/sddm/sddm.conf" "/etc/sddm.conf.d/sddm.conf"
cp -r "${configdir}/sddm/themes/sddm-astronaut-theme" "/usr/share/sddm/themes/"
cp -r "${configdir}/sddm/themes/sddm-astronaut-theme/Fonts/." "/usr/share/fonts"
