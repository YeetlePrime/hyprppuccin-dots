
#!/bin/env sh

scriptdir="$(dirname $0)"

sudo $scriptdir/install_pacman_dependencies.sh
$scriptdir/install_aur_dependencies.sh
sudo $scriptdir/install.sh
