#!/bin/bash
#
# Rotate the left monitor (DP-2-3 in the picture) to portrait
xrandr --output DP-2-3 --rotate left --auto

# Place it to the left of the central monitor (DP-2-2 in the picture)
xrandr --output DP-2-3 --left-of DP-2-2 --auto

# Make sure the central monitor (DP-2-2 in the picture) is in landscape
xrandr --output DP-2-2 --rotate normal --auto

# Place the central monitor above the primary monitor (eDP-1 in the picture)
xrandr --output DP-2-2 --above eDP-1 --auto

# Make sure the primary monitor (eDP-1 in the picture) is in landscape and set as primary
xrandr --output eDP-1 --rotate normal --primary --auto

# need ~/.Xresources to define the cursor:
# ```
# Xcursor.size: 24
# ```

# Set the cursor size
xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr -cursor 24

# setup the background image after the monitors have been set up
~/.config/i3/get_nasa_space_image.sh
