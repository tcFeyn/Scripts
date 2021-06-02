#!/bin/sh
percentage=$(cat /sys/class/power_supply/BAT0/capacity)
notify-send -u normal "Battery" "$percentage%" --icon="~/.config/dunst/icons/battery.png"
~/.config/polybar/scripts/battery.sh &
