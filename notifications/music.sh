#!/bin/sh
title=$(mpc -f %title% | sed -n '1p')
artist=$(mpc -f %artist% | sed -n '1p')
notify-send -u normal -t 1500 "$artist" "$title" --icon="~/.config/dunst/icons/music.png"
