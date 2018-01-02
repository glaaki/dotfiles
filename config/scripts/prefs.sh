#!/bin/bash
# WM agnostic preferences

# keyboard repeat rate
xset r rate 180 90

# remap capslock to ctrl
setxkbmap -layout us -option ctrl:nocaps # rebind capslock as ctrl

# wm compositor
compton --config "$HOME/.config/compton.conf" -b
