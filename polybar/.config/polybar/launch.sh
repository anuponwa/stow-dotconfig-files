#! /bin/bash

# Terminate all polybar
killall -q polybar

# Wait untill all the processes have been shut down
while pgrep -u $UID -x polybar /dev/null; do sleep 1; done

# Launch laptop bar
polybar laptop &

# Check for DP-0 and HDMI-0 monitors
if xrandr -q | grep "DP-0 connected" | grep "1920"; then
    polybar dp096 &
else
    polybar dp0 &
fi


if xrandr -q | grep "HDMI-0 connected" | grep "1920"; then
    polybar hdmi096 &
else
    polybar hdmi0 &
fi

# xrandr -q | grep "DP-0 connected" | grep "1920" && polybar dp096 & || polybar dp0 &
# xrandr -q | grep "HDMI-0 connected" | grep "1920" && polybar hdmi096 & || polybar hdmi0 &
