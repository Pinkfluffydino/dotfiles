#!/bin/bash
#Switch workspaces usgin the slidevert animations 

DEFAULT_ANIMATION="workspaces,1,4,quick,slidefade 80%"
VERTICAL_ANIMATION="workspaces,1,4,quick,slidevert"
SLEEP_DURATION=0.41

LOCK_DIR="/tmp/hypr_anim_lock.lock"

if ! mkdir "$LOCK_DIR"; then
    exit 1
fi

trap 'rmdir "$LOCK_DIR"' EXIT

hyprctl keyword animation "$VERTICAL_ANIMATION" > /dev/null
hyprctl dispatch workspace "$1" > /dev/null
sleep "$SLEEP_DURATION"
hyprctl keyword animation "$DEFAULT_ANIMATION" > /dev/null

exit 0
