#!/bin/bash

# Function to get player info using mpris-ctl
get_player_info() {
    local player="$1"
    local status=$(mpris-ctl --player "$player" info "%play_status")
    local track_name=$(mpris-ctl --player "$player" info "%track_name")
    local artist_name=$(mpris-ctl --player "$player" info "%artist_name")

    if [[ $status == "Playing" ]]; then
        echo "$player|Playing: $artist_name - $track_name"
    elif [[ $status == "Paused" ]]; then
        echo "$player|Paused Music"
    else
        echo "No Music"
    fi
}

# Check for YouTube Music
if mpris-ctl --player 'Youtube Music' info "%play_status" &> /dev/null; then
    get_player_info 'Youtube Music'

# Check for Spotify
elif mpris-ctl --player 'Spotify' info "%play_status" &> /dev/null; then
    get_player_info 'Spotify'

else
    echo "No Music"
fi

exit 0

