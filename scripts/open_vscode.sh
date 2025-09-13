#!/usr/bin/env bash

# Detects if chrome is running
if ! pgrep -f "Visual Studio Code" > /dev/null 2>&1; then
    open -a "/Applications/Visual Studio Code.app"
else
    # Create a new window
    script='tell application "Visual Studio Code" to make new window'
    ! osascript -e "${script}" > /dev/null 2>&1 && {
        # Get pids for any app with "iTerm" and kill
        #while IFS="" read -r pid; do
        #    kill -15 "${pid}"
        #done < <(pgrep -f "Google Chrome")
        open -a "/Applications/Visual Studio Code.app"
    }
fi
