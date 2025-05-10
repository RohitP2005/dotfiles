#!/bin/bash

# Terminate already running polybar instances
killall -q polybar

# Wait until processes are gone
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar for each connected monitor
if type "xrandr" > /dev/null; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload example &
  done
else
  polybar --reload example &
fi

# # Make sure FIFO exists
# [ -p /tmp/cava.fifo ] || mkfifo /tmp/cava.fifo
#
# # Start cava in the background
# cava > /dev/null &

