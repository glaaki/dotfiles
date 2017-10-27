#!/bin/bash
# WM agnostic preferences (key rate, audio, etc)
xset r rate 180 90
compton --config "$HOME/.config/compton.conf" -b
