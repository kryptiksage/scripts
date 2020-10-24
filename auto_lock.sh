#!/bin/sh

xidlehook \
	`# Don't lock when there's a fullscreen application` \
	--not-when-fullscreen \
	`# Don't lock when there's audio playing` \
	--not-when-audio \
	`# i3lock` \
	--timer 600 'lock.sh' ''\
	`# Finally, suspend an hour after it locks` \
	--timer 1200 'systemctl suspend' ''
