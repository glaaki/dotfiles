#!/bin/bash

xrandr --output DP-1 --off
xrandr --output DP-2 --off
xrandr --output eDP-1 --off

monitors=( $(xrandr -q | grep " connected" | awk '{print $1;}') )

if [ ${#monitors[@]} -eq 3 ]; then
  xrandr --output DP-2 --primary --auto
  xrandr --output DP-1 --auto --right-of DP-2
  xrandr --output eDP-1 --auto --left-of DP-2
fi
if [ ${#monitors[@]} -eq 2 ]; then
  xrandr --output eDP-1 --primary --auto
  xrandr --output DP-1 --auto --right-of eDP-1
fi
if [ ${#monitors[@]} -eq 1 ]; then
  xrandr --output eDP-1 --primary --auto
fi
