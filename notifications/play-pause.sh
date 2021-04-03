#!/bin/sh
paused=$(mpc -f %artist% | sed -n '2p' | grep -oP '\[\K[^\]]+')
title=$(mpc -f %title% | sed -n '1p')
artist=$(mpc -f %artist% | sed -n '1p')
[ "$paused" = "playing" ] && notify-send -u normal -t 1500 "$artist" "$title" --icon="~/.config/dunst/icons/play.png" || notify-send -u normal -t 1500 "$artist" "$title" --icon="~/.config/dunst/icons/pause.png"
