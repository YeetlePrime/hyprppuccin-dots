if [[ $# -ne 1 ]]; then
	printf "This script requires 1 of the following parameters:\n\ti - increase the brightness\n\td - decrease the brightness\n";
	exit;
fi

if [[ $1 = "i" ]]; then
	brightnessctl s 1%+;
elif [[ $1 = "d" ]]; then
	current_brightness=$(brightnessctl g -m);
	max_brightness=$(brightnessctl m -m);
	current_brightness_percent=$((current_brightness * 100 / max_brightness));

	if [[ $current_brightness_percent -lt 6 ]]; then
		brightnessctl s 5%;
	else
		brightnessctl s 1%-;
	fi
else 
	printf "Invalid parameter.\nThis script requires 1 of the following parameters:\n\ti - increase the brightness\n\td - decrease the brightness\n";
fi

