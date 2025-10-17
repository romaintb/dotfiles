#!/bin/bash

# Calculator script for rofi using bc

input=$(rofi -dmenu -p "Calculator" -theme-str 'window {width: 30%;}')

if [[ -n "$input" ]]; then
    # Replace common symbols for better user experience
    input=${input//x/*}
    input=${input//×/*}
    input=${input//÷//}

    # Use bc for calculation
    result=$(echo "scale=4; $input" | bc -l 2>/dev/null)

    if [[ -n "$result" ]]; then
        # Copy result to clipboard if available
        if command -v xclip >/dev/null; then
            echo "$result" | xclip -selection clipboard
            notify-send "Calculator" "Result: $result (copied to clipboard)"
        elif command -v wl-copy >/dev/null; then
            echo "$result" | wl-copy
            notify-send "Calculator" "Result: $result (copied to clipboard)"
        else
            notify-send "Calculator" "Result: $result"
        fi

        # Show result in rofi
        echo "$input = $result" | rofi -dmenu -p "Result" -theme-str 'window {width: 40%;}'
    else
        rofi -e "Invalid expression: $input"
    fi
fi