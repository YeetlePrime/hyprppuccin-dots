if [[ "$(id -u)" -ne 0 ]] then
	echo "Requires root privileges to execute";
	exit
fi

scriptdir="$(dirname $0)"

pacman -Sy
while read dependency || [[ -n $dependency ]]; do
	pacman -S --noconfirm --needed "${dependency}"
done < "${scriptdir}/pacman_dependencies.txt"
