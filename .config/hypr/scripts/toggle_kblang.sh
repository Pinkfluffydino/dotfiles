#!/bin/bash

#toogle keyboard layout 
KEYBOARD="evision-ak820"
hyprctl switchxkblayout "$KEYBOARD" next
notify-send "keyboard layout changed"
exit 0
