#!/bin/env sh
install_yay () {
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si;
	cd ..
	rm -rf yay
	yay -Y --gendb
}

# Exit, if the script was executed as root.
if [[ "$(id -u)" -eq 0 ]]; then
	echo "This script should not be executed as root.";
	exit
fi

# Exit if yay is not installed
if ! command -v yay &> /dev/null
then
	echo "You need to install yay in order to install the aur dependencies.\nDo you wish to install it?"
	select yn in "Yes" "No"; do
	    case $yn in
		Yes ) install_yay; break;;
		No ) exit;;
	    esac
	done
fi

scriptdir="$(dirname $0)"

yay -Sy
while read dependency || [[ -n $dependency ]]; do
	yay -S --noconfirm --needed "${dependency}"
done < "${scriptdir}/aur_dependencies.txt"
