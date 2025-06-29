#!/bin/bash

LOCK_FILE="/tmp/waybar_mpris_scroll.lock"
COOLDOWN=0.6

{
    flock -n 9 || exit 1

    NOW=$(date +%s.%N)
    LAST=$(cat /tmp/waybar_scroll_time 2>/dev/null || echo 0)

    ELAPSED=$(echo "$NOW - $LAST" | bc)
    TOO_SOON=$(echo "$ELAPSED < $COOLDOWN" | bc)

    if [ "$TOO_SOON" -eq 0 ]; then
        echo "$NOW" > /tmp/waybar_scroll_time
        playerctl next &
    fi
} 9>"$LOCK_FILE"

