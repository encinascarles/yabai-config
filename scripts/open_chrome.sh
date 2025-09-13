#!/usr/bin/env bash

# Detects if chrome is running
if ! pgrep -f "Google Chrome" > /dev/null 2>&1; then
    open -a "/Applications/Google Chrome.app"
else
    # Create a new window
    script='tell application "Google Chrome" to make new window'
    ! osascript -e "${script}" > /dev/null 2>&1 && {
        # Get pids for any app with "iTerm" and kill
        #while IFS="" read -r pid; do
        #    kill -15 "${pid}"
        #done < <(pgrep -f "Google Chrome")
        open -a "/Applications/Google Chrome.app"
    }
fi
