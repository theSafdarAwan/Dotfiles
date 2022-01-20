#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/sid.log /tmp/polybar_log.log
polybar sid_1 2>&1 | tee -a /tmp/sid_1.log & disown
# polybar sid_2 2>&1 | tee -a /tmp/sid_2.log & disown

echo "Bars launched..."
