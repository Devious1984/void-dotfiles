#!/bin/sh

# Start XWayland if not already running
if ! pgrep -x Xwayland > /dev/null; then
    Xwayland :0 -ac &
    sleep 1
fi

pipewire &
/usr/libexec/xdg-desktop-portal-wlr &
/usr/libexec/xdg-desktop-portal &
swaybg -i ~/Pictures/Wallpapers/gfl2ump.jpg &
