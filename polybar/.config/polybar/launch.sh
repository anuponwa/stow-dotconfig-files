#! /bin/bash

# Terminate all polybar
killall -q polybar

# Wait untill all the processes have been shut down
while pgrep -u $UID -x polybar /dev/null; do sleep 1; done

# Launch laptop bar
polybar laptop &

# Check for DP-0 and HDMI-0 monitors
xrandr -q | grep "DP-0 connected" && polybar dp0 &
xrandr -q | grep "HDMI-0 connected" && polybar hdmi0 &
