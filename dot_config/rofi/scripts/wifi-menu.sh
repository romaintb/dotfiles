#!/bin/bash

# WiFi menu script for rofi using nmcli

get_wifi_status() {
    nmcli radio wifi
}

get_current_ssid() {
    nmcli -t -f NAME connection show --active | head -1
}

get_wifi_list() {
    nmcli -f SSID,SECURITY,BARS device wifi list | sed 1d | sort -k3 -nr
}

connect_wifi() {
    local ssid="$1"
    local security="$2"

    if [[ "$security" == "--" ]]; then
        nmcli device wifi connect "$ssid"
    else
        password=$(rofi -dmenu -p "Password for $ssid" -password -theme-str 'window {width: 30%;}')
        if [[ -n "$password" ]]; then
            nmcli device wifi connect "$ssid" password "$password"
        fi
    fi
}

wifi_status=$(get_wifi_status)
current_ssid=$(get_current_ssid)

if [[ "$wifi_status" == "enabled" ]]; then
    status_text="📶 WiFi: ON (Connected to: $current_ssid)"
    toggle_option="📵 Turn Off WiFi"
    toggle_action="off"
else
    status_text="📵 WiFi: OFF"
    toggle_option="📶 Turn On WiFi"
    toggle_action="on"
fi

options="$status_text\n$toggle_option\n🔄 Refresh\n$(get_wifi_list)"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "WiFi Menu" -theme-str 'window {width: 40%;} listview {lines: 10;}')

case $chosen in
    "$toggle_option")
        nmcli radio wifi $toggle_action
        notify-send "WiFi" "WiFi turned $toggle_action"
        ;;
    "🔄 Refresh")
        exec "$0"
        ;;
    "$status_text")
        # Do nothing
        ;;
    *)
        if [[ -n "$chosen" && ! "$chosen" =~ ^(📶|📵|🔄) ]]; then
            ssid=$(echo "$chosen" | awk '{print $1}')
            security=$(echo "$chosen" | awk '{print $2}')
            connect_wifi "$ssid" "$security"
        fi
        ;;
esac