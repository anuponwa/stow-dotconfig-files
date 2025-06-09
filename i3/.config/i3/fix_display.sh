#!/bin/bash

for OUTPUT in HDMI-0 DP-0; do
  if xrandr | grep -q "^$OUTPUT connected"; then
    MODE=$(xrandr | grep -A20 "^$OUTPUT connected" \
           | grep -Eo '^[ ]+[0-9]+x[0-9]+' \
           | awk '{print $1}' \
           | awk -Fx '{if ($1/$2 == 16/9) print $0}' \
           | sort -nr \
           | head -n1)
    if [ -n "$MODE" ]; then
      xrandr --output $OUTPUT --mode $MODE
    fi
  fi
done
