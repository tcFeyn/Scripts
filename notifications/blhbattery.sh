#!/bin/sh
device=$(bluetoothctl info | grep Alias | cut -d ' ' -f 2,3,4)
battery=$(bluebattery.py 11:11:22:33:57:65)
blhbat=${battery##* }
notify-send -u normal "$device" "$blhbat"
