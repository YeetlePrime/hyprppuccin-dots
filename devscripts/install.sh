#!/bin/env sh

# █░█ ▄▀█ █▀█ █▀
# ▀▄▀ █▀█ █▀▄ ▄█

homedir=$( getent passwd "$USER" | cut -d: -f6 )
scriptdir="$(dirname $0)"
repodir="${scriptdir}/.."
configdir="${scriptdir}/../config"


# █▀▄ █▀▀ █▀▀ ▄▀█ █░█ █░░ ▀█▀
# █▄▀ ██▄ █▀░ █▀█ █▄█ █▄▄ ░█░

# make config directories
mkdir -p "${homedir}/.config"

# config for zsh 
cp -f "${configdir}/.zshrc" "${homedir}"
cp -rf "${configdir}/.zsh" "${homedir}"

# copy all files from .config
cp -rf "${configdir}/.config/." "${homedir}/.config"


# █▀█ █▀█ █▀█ ▀█▀
# █▀▄ █▄█ █▄█ ░█░
#
if [[ "$(id -u)" -ne 0 ]] then
	echo "The configuration for SDDM and the installation of fonts requires root privileges."
else
	mkdir -p "/etc/sddm.conf.d"
	mkdir -p "/usr/share/sddm/themes"
	mkdir -p "/usr/local/share/fonts"

	# sddm config and theme
	cp -f "${configdir}/sddm/sddm.conf" "/etc/sddm.conf.d/sddm.conf"
	cp -rf "${configdir}/sddm/themes/." "/usr/share/sddm/themes/"
	cp -rf "${repodir}/fonts/." "/usr/local/share/fonts/"
fi
