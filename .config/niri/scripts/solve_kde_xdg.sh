#!/usr/bin/env fish

sleep 2

systemctl --user stop xdg-desktop-portal
systemctl --user stop plasma-xdg-desktop-portal-kde 
sleep 0.5
systemctl --user start plasma-xdg-desktop-portal-kde 
systemctl --user start xdg-desktop-portal

set -x QT_QPA_PLATFORMTHEME qt6ct
set -x QT_QPA_PLATFORMTHEME_QT6 qt6ct
dbus-update-activation-environment --systemd --all

set -x XDG_MENU_PREFIX plasma-
kbuildsycoca6 --noincremental 2>/dev/null

