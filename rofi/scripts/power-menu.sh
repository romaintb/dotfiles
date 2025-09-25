#!/bin/bash

# Power menu script for rofi

options="⏻ Shutdown\n🔄 Restart\n🌙 Sleep\n🔒 Lock\n📤 Logout\n💤 Hibernate"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power Menu" -theme-str 'window {width: 20%;}')

case $chosen in
    "⏻ Shutdown")
        systemctl poweroff
        ;;
    "🔄 Restart")
        systemctl reboot
        ;;
    "🌙 Sleep")
        systemctl suspend
        ;;
    "🔒 Lock")
        i3lock-fancy || i3lock || loginctl lock-session
        ;;
    "📤 Logout")
        i3-msg exit || loginctl terminate-session $XDG_SESSION_ID
        ;;
    "💤 Hibernate")
        systemctl hibernate
        ;;
esac