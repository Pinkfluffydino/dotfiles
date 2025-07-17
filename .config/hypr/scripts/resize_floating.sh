#!/bin/bash

floating = $(hyprctl activewindow -j | jq '.floating')

width = 40%
height = 60% 

if [ "$floating" == "false" ]; then
    hyprctl dispatch togglefloating
    hyprctl dispatch resizeactive exact "$width" "$height"
    hyprctl dispatch centerwindow
else 
    hyprctl dispatch togglefloating
fi
