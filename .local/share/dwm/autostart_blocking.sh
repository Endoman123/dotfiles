#!/bin/sh
PATH=$PATH:$HOME/bin

# Begin compositor
picom -b

# If we have a saved wallpaper, load it
if [[ -f "$HOME/.xwin1.rc" ]]; then
    . $HOME/.xwin1.rc
fi

if [[ -f "$HOME/.xwin2.rc" ]]; then
    . $HOME/.xwin2.rc
fi

# Start pulse
# pulseaudio -D

# Start dunst
dunst &

# Start polybar
launch-polybar &
