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
mkdir -p "${homedir}/.icons"

# config for zsh 
echo "Applying zsh config..."
cp -f "${configdir}/.zshrc" "${homedir}"
cp -rf "${configdir}/.zsh" "${homedir}"

# copy all files from .config
echo "Applying config for everything in ~/.config"
cp -rf "${configdir}/.config/." "${homedir}/.config"

# copy all icon packs
echo "Copying icon packs..."
cp -rf "${repodir}/icons/." "${homedir}/.icons"

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
	echo "Applying sddm config..."
	cp -f "${configdir}/sddm/sddm.conf" "/etc/sddm.conf.d/sddm.conf"
	cp -rf "${configdir}/sddm/themes/." "/usr/share/sddm/themes/"
	cp -rf "${repodir}/fonts/." "/usr/local/share/fonts/"
fi
