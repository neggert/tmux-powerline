__print_colored_content() {
	echo -n "#[fg=$3, bg=$2]"
	echo -n "$1"
	echo -n "#[default]"
}
