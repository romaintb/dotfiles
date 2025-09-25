#!/bin/bash

# Advanced rofi launcher script with multiple modes

# Default rofi command with theme and options
ROFI_CMD="rofi -show-icons -icon-theme Papirus -theme ~/.config/rofi/themes/power-user.rasi"

# Function to show main launcher
show_launcher() {
    $ROFI_CMD -show drun -display-drun "Apps"
}

# Function to show run dialog
show_run() {
    $ROFI_CMD -show run -display-run "Run"
}

# Function to show window switcher (Wayland alternative)
show_window() {
    notify-send "Rofi" "Window mode not supported on Wayland. Use Alt+Tab instead."
}

# Function to show combined mode
show_combi() {
    $ROFI_CMD -show combi -combi-modi "drun,run,ssh" -display-combi "All"
}

# Function to show file browser
show_files() {
    $ROFI_CMD -show filebrowser -display-filebrowser "Files"
}

# Function to show SSH connections
show_ssh() {
    $ROFI_CMD -show ssh -display-ssh "SSH"
}

# Function to show custom scripts menu
show_scripts() {
    local scripts_dir="$HOME/.config/rofi/scripts"
    local options=""

    options+="🔌 Power Menu\n"
    options+="📶 WiFi Menu\n"
    options+="🧮 Calculator\n"
    options+="📋 Clipboard Manager\n"
    options+="😀 Emoji Picker\n"

    local chosen=$(echo -e "$options" | rofi -dmenu -i -p "Scripts" -theme ~/.config/rofi/themes/power-user.rasi)

    case $chosen in
        "🔌 Power Menu")
            "$scripts_dir/power-menu.sh"
            ;;
        "📶 WiFi Menu")
            "$scripts_dir/wifi-menu.sh"
            ;;
        "🧮 Calculator")
            "$scripts_dir/calculator.sh"
            ;;
        "📋 Clipboard Manager")
            "$scripts_dir/clipboard-manager.sh"
            ;;
        "😀 Emoji Picker")
            "$scripts_dir/emoji-picker.sh"
            ;;
    esac
}

# Main menu selection
show_main_menu() {
    local options=""
    options+="🚀 Applications\n"
    options+="💻 Run Command\n"
    options+="📁 Files\n"
    options+="🌐 SSH\n"
    options+="🔧 Scripts\n"
    options+="🎯 Everything\n"

    local chosen=$(echo -e "$options" | rofi -dmenu -i -p "Launcher" -theme ~/.config/rofi/themes/power-user.rasi)

    case $chosen in
        "🚀 Applications")
            show_launcher
            ;;
        "💻 Run Command")
            show_run
            ;;
        "📁 Files")
            show_files
            ;;
        "🌐 SSH")
            show_ssh
            ;;
        "🔧 Scripts")
            show_scripts
            ;;
        "🎯 Everything")
            show_combi
            ;;
    esac
}

# Parse command line arguments
case "${1:-menu}" in
    "menu"|"main")
        show_main_menu
        ;;
    "apps"|"drun")
        show_launcher
        ;;
    "run")
        show_run
        ;;
    "window"|"windows")
        show_window
        ;;
    "files")
        show_files
        ;;
    "ssh")
        show_ssh
        ;;
    "scripts")
        show_scripts
        ;;
    "combi"|"all")
        show_combi
        ;;
    *)
        echo "Usage: $0 [menu|apps|run|window|files|ssh|scripts|combi]"
        echo "  menu     - Show main menu (default)"
        echo "  apps     - Show application launcher"
        echo "  run      - Show run dialog"
        echo "  window   - Show window switcher"
        echo "  files    - Show file browser"
        echo "  ssh      - Show SSH launcher"
        echo "  scripts  - Show custom scripts"
        echo "  combi    - Show combined mode"
        ;;
esac