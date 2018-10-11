#!/usr/bin/env bash

# This script is what the polybar docs recommend...

# Terminate already running bar instance
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
# TODO not portable, but, this isn't using my .zshrc because it's bash and so arhjrarhajrarh
$HOME/local/bin/polybar --log=trace --reload default &  

echo "Polybars launched."

