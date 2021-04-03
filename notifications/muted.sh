#!/bin/sh
sound=$(amixer get Master | grep 'Right:' | awk -F'[][]' '{ print $4 }')
[ "$sound" = "off" ] && notify-send -u normal -t 600 "Sound Muted" "" --icon="~/.config/dunst/icons/muted.png" || notify-send -u normal -t 600 "Sound Resumed" "" --icon="~/.config/dunst/icons/unmuted.png"
