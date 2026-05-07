#!/bin/bash

# Simplified Power menu script using wofi to avoid buffer overflow issues

options="Lock\nSleep\nRestart\nShutdown"

# Use basic wofi command first to verify it works
chosen=$(echo -e "$options" | wofi --dmenu --width 300 --lines 4  --hide-search --cache-file /dev/null --prompt "Power Menu")

case $chosen in
    Lock)
        hyprlock || swaylock
        ;;
    Sleep)
        systemctl suspend
        ;;
    Restart)
        systemctl reboot
        ;;
    Shutdown)
        systemctl poweroff
        ;;
esac
