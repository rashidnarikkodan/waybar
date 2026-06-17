#!/bin/bash

# Function to get and print the microphone state in JSON format
print_mic_status() {
    VOL=$(pactl get-source-volume @DEFAULT_SOURCE@ | awk '{print $5}' | sed 's/%//' | head -n 1)
    if [ -z "$VOL" ]; then
        VOL=0
    fi
    MUTE=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}' | head -n 1)

    if [ "$MUTE" = "yes" ]; then
        echo "{\"text\": \"󰍭 Muted\", \"class\": \"muted\", \"tooltip\": \"Microphone: Muted\"}"
    else
        if [ "$VOL" -gt 110 ]; then
            echo "{\"text\": \"󰍬 ${VOL}%\", \"class\": \"critical\", \"tooltip\": \"Microphone: ${VOL}%\"}"
        else
            echo "{\"text\": \"󰍬 ${VOL}%\", \"class\": \"normal\", \"tooltip\": \"Microphone: ${VOL}%\"}"
        fi
    fi
}

# Print initial state immediately
print_mic_status

# Subscribe to pulseaudio events and update on source changes
pactl subscribe | while read -r line; do
    if echo "$line" | grep -q "source"; then
        print_mic_status
    fi
done
