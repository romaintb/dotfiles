#!/bin/bash

# Clipboard manager script for rofi
# Requires clipnotify and xclip/wl-clipboard

CACHE_DIR="$HOME/.cache/rofi-clipboard"
CACHE_FILE="$CACHE_DIR/history"
MAX_ENTRIES=50

# Create cache directory if it doesn't exist
mkdir -p "$CACHE_DIR"

# Function to add clipboard content to history
add_to_history() {
    local content
    if command -v wl-paste >/dev/null; then
        content=$(wl-paste 2>/dev/null)
    elif command -v xclip >/dev/null; then
        content=$(xclip -o -selection clipboard 2>/dev/null)
    else
        notify-send "Clipboard Manager" "No clipboard utility found"
        exit 1
    fi

    if [[ -n "$content" ]]; then
        # Remove duplicates and add to top
        grep -Fxv "$content" "$CACHE_FILE" 2>/dev/null > "$CACHE_FILE.tmp" || true
        echo "$content" | cat - "$CACHE_FILE.tmp" > "$CACHE_FILE" 2>/dev/null
        rm -f "$CACHE_FILE.tmp"

        # Keep only MAX_ENTRIES
        head -n "$MAX_ENTRIES" "$CACHE_FILE" > "$CACHE_FILE.tmp"
        mv "$CACHE_FILE.tmp" "$CACHE_FILE"
    fi
}

# Function to display clipboard history
show_history() {
    if [[ ! -f "$CACHE_FILE" ]]; then
        rofi -e "No clipboard history found"
        exit 1
    fi

    # Show clipboard entries with line numbers and truncation
    local entries=""
    local line_num=1
    while IFS= read -r line; do
        # Truncate long lines and show preview
        local preview=$(echo "$line" | head -c 100 | tr '\n' ' ')
        if [[ ${#line} -gt 100 ]]; then
            preview="$preview..."
        fi
        entries="$entries$line_num. $preview\n"
        ((line_num++))
    done < "$CACHE_FILE"

    local chosen=$(echo -e "$entries" | rofi -dmenu -i -p "Clipboard History" -theme-str 'window {width: 60%;} listview {lines: 15;}')

    if [[ -n "$chosen" ]]; then
        local line_number=$(echo "$chosen" | cut -d. -f1)
        local selected_content=$(sed -n "${line_number}p" "$CACHE_FILE")

        if [[ -n "$selected_content" ]]; then
            # Copy to clipboard
            if command -v wl-copy >/dev/null; then
                echo "$selected_content" | wl-copy
            elif command -v xclip >/dev/null; then
                echo "$selected_content" | xclip -selection clipboard
            fi
            notify-send "Clipboard Manager" "Copied to clipboard"
        fi
    fi
}

# Main logic
case "${1:-show}" in
    "add")
        add_to_history
        ;;
    "show"|*)
        show_history
        ;;
esac