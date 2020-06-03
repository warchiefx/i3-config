#!/bin/bash
dbus-daemon --session &
start-pulseaudio-x11
dbus-update-activation-environment --systemd DISPLAY
eval $(keychain -q -Q --eval --agents ssh --inherit any)
exec /usr/bin/i3
