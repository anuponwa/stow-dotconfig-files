#!/bin/bash
sleep 1
setxkbmap -layout us,th -option grp:caps_toggle
xmodmap -e "keycode 105 = Home"
xmodmap -e "keycode 90 = End"
