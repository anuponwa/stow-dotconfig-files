#!/bin/bash

if xrandr | grep -q "HDMI-0 connected"; then
  i3-msg "workspace 1; move workspace to output HDMI-0"
fi


if xrandr | grep -q "DP-0 connected"; then
  i3-msg "workspace 1; move workspace to output DP-0"
fi

i3-msg "workspace 1"
