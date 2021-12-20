#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/sid.log /tmp/sid.log
polybar sid 2>&1 | tee -a /tmp/sid.log & disown
polybar bottom 2>&1 | tee -a /tmp/polybar2.log & disown


echo "Bars launched..."
