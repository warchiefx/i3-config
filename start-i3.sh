#!/bin/bash
dbus-daemon --session &
start-pulseaudio-x11
dbus-update-activation-environment --systemd DISPLAY
exec /usr/bin/i3
