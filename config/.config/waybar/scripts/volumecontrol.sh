if [[ $# -ne 1 ]]; then
	echo "Expected one argument that specifies the action to take. ([I]ncrease, [D]ecrease, toggle [M]ute";
	exit;
fi

if [[ $1 == "I" || $1 == "i" ]]; then
	pamixer -i 5
	exit;
fi

if [[ $1 == "D" || $1 == "d" ]]; then
	pamixer -d 5;
	exit;
fi

if [[ $1 == "M" || $1 == "m" ]]; then
	pamixer -t;
	exit;
fi
