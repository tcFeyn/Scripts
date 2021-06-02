#!/bin/sh
vol=$(amixer get Master | grep 'Right:' | awk -F'[][]' '{ print $2 }' | sed 's/%$//')
notify-send -u normal -t 500 "$vol" "" --icon="~/.config/dunst/icons/unmuted.png"
