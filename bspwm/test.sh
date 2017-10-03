#!/bin/bash
monitors=( $(bspc query -M --names) )
echo ${monitors[0]}
echo ${monitors[1]}
echo ${monitors[2]}
if [ ${#monitors[@]} -eq 3 ]; then
  echo "do stuff for 3 monitors"
fi
if [ ${#monitors[@]} -eq 1 ]; then
  echo "do stuff for 1 monitor"
fi
