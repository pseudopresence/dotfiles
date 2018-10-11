#!/usr/bin/env bash

# This script is what the polybar docs recommend...

# Terminate already running bar instance
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
polybar default &

echo "Polybars launched."

