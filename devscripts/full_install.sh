#!/bin/bash

scriptdir="$(dirname "${0}")"

sudo "$scriptdir/install_pacman_dependencies.sh"
"$scriptdir/install_aur_dependencies.sh"
sudo "$scriptdir/apply_config.sh"

# Change default shell to zsh, if not already
temp="$(grep ^"$USER" /etc/passwd)"
current_shell="${temp: -3}"
if [[ "${current_shell}" != "zsh" ]]; then
	chsh -s "$(which zsh)"
fi

kbuildsycoca6 # rebuild system configuration
