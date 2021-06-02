#!/bin/sh
device=$(bluetoothctl info | grep Alias | cut -d ' ' -f 2,3,4)
battery=$(bluebattery.py "mac adress")
blhbat=${battery##* }
notify-send -u normal "$device" "$blhbat"
