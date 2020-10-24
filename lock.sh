#!/bin/sh

if ! pgrep i3lock 2>/dev/null
then
	tmp_img=/tmp/lock.png
	if [ -z "$WALLPAPER" ]
	then
		scrot lock.png -e "mv lock.png $tmp_img"
		WALLPAPER=$tmp_img
	fi
	convert $WALLPAPER -scale 2.5% -resize 4000% $tmp_img
	i3lock -i $tmp_img
fi
