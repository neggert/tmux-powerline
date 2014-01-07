# Default Theme

if patched_font_in_use; then
	TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="⮂"
	TMUX_POWERLINE_SEPARATOR_LEFT_THIN="⮃"
	TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="⮀"
	TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="⮁"
else
	TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="◀"
	TMUX_POWERLINE_SEPARATOR_LEFT_THIN="❮"
	TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="▶"
	TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="❯"
fi

TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR:-'brightblack'}
TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR:-'brightblue'}

TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}
TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_LEFT_BOLD}

if [ -z $TMUX_POWERLINE_LEFT_STATUS_SEGMENTS ]; then
	TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
		#"tmux_session_info 148 234" \
		"hostname blue brightblack" \
		#"ifstat cyan brightblack \
		"ifstat_sys yellow brightblack" \
		#"lan_ip cyan brightblack ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
		#"wan_ip cyan brightblack" \
		#"vcs_branch 29 88" \
		#"vcs_compare 60 255" \
		#"vcs_staged 64 255" \
		#"vcs_modified 9 255" \
		#"vcs_others 245 0" \
	)
fi

if [ -z $TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS ]; then
	TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
		#"pwd 89 211" \
		#"mail_count_maildir 9 255" \
		#"now_playing 234 37" \
		#"cpu 240 136" \
		"load yellow brightblack" \
		#"tmux_mem_cpu_load yellow brightblack" \
		"battery yellow brightblack" \
		#"weather 37 255" \
		#"xkb_layout 125 117" \
		"date_day blue brightblack" \
		"date_full blue brightblack ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
		"time blue brightblack ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
	)
fi
