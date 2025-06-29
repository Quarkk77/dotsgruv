#!/bin/bash

choice=$(echo -e "Shutdown\nReboot\nLogout\nSuspend\nLock\nCancel" | wofi --dmenu --width 200 --height 200 --prompt "Select an option...")

case "$choice" in
    Shutdown)
        systemctl poweroff
        ;;
    Reboot)
        systemctl reboot
        ;;
    Logout)
        hyprctl dispatch exit
        ;;
    Suspend)
        systemctl suspend
        ;;
    Lock)
        $HOME/.local/bin/lock.sh
        ;;
    *)
        exit 0
        ;;
esac
