#!/bin/sh

CAPACITY=$(cat /sys/class/power_supply/BAT1/capacity)

STATUS=$(cat /sys/class/power_supply/BAT1/status)

[ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -lt 25 ] && /usr/bin/notify-send -u critical -a power_supply_low "Low Battery" "You are running low on battery ($CAPACITY%).\nPlease plug in the charger." && $(ffplay -nodisp -autoexit /home/wandored/Google\ Drive/sounds/hard-rubby.mp3)

[ "$STATUS" = "Charging" ] && [ "$CAPACITY" -gt 99 ] && /usr/bin/notify-send -u normal -a power_supply_full "Battery Full" "Charge full ($CAPACITY%).\nPlease unplug from charger." && $(ffplay -nodisp -autoexit /home/wandored/Google\ Drive/sounds/hard-rubby.mp3)
