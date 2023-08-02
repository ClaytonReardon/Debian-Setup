#!/bin/bash

# Set display resolution, refresh rate, and position
xrandr --newmode "2560x1440_60.00"  311.83  2560 2744 3024 3488  1440 1441 1444 1490  -HSync +Vsync
xrandr --addmode Virtual-1 "2560x1440_60.00"
xrandr --output Virtual-1 --mode "2560x1440_60.00" 

# Set wallpaper
/bin/nitrogen --restore

# Start polybar on both monitors
~/.config/polybar/launch.sh


