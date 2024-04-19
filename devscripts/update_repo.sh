#!/bin/env sh
homedir=$( getent passwd "$USER" | cut -d: -f6 )
scriptdir="$(dirname $0)"
configdir="${scriptdir}/../config"

cp "${homedir}/.zshrc" "${configdir}"
cp -r "${homedir}/.zsh" "${configdir}"
cp -r "${homedir}/.config/hypr" "${configdir}/.config"
cp -r "${homedir}/.config/waybar" "${configdir}/.config"
cp -r "${homedir}/.config/kitty" "${configdir}/.config"
cp -r "${homedir}/.config/qt6ct" "${configdir}/.config"
cp "${homedir}/.config/dolphinrc" "${configdir}/.config"
