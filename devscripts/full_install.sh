#!/bin/bash

scriptdir="$(dirname "${0}")"

sudo "$scriptdir/install_pacman_dependencies.sh"
"$scriptdir/install_aur_dependencies.sh"
sudo "$scriptdir/apply_config.sh"

kbuildsycoca6 # rebuild system configuration
